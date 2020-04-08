//
// Created by yuvallevy on 23/11/2019.
//
/*
ID: 205781966
Yuval Levy
*/
#include <stdlib.h>
#include <stdio.h>
#include "bytes.h"
#include <string.h>
#include <math.h>
static int count = 0;
byte_t *create_bytes(char *file_name)
{
    //open file
    FILE* fp = fopen(file_name, "r");
    if (fp == NULL) {
        printf("error");
        return 0;
    }
    int ans1, ans2, ans3, ans4;
    // while the line isnt a format of number keep counting the lines.
    while (fscanf(fp, "%d,%d,%d,%d\n", &ans1, &ans2, &ans3, &ans4) == 4) {
        count++;
    }
    int numLines = count, i = 0, j = 0, c;
    // allocating ann arr of bytes.
    byte_t* arr = (byte_t*)calloc(numLines, sizeof(byte_t));
    byte_t byte = 0;
    // point the pointer to the beginning of the file.
    rewind(fp);
    while (fscanf(fp, "%d,%d,%d,%d\n", &ans1, &ans2, &ans3, &ans4) == 4) {
        // inserting the student answers using bitwise.
        byte = 0;
        byte = byte | (ans1);
        byte = byte | (ans2 << 2);
        byte = byte | (ans3 << 4);
        byte = byte | (ans4 << 6);
        arr[j] = byte;
        j++;
    }
    fclose(fp);
    return arr;
}

void print_bytes(byte_t *byte_array, FILE* out)
{
    // open file.
    out = fopen("out.txt", "w");
    int i=0;
    if (out == NULL) {
        printf("error");
        return;
    }
    // printing the student answer in hexadecimal.
    for (i = 0;i < count;i++) {
        printf("%02x", byte_array[i]);
    }
    printf("\n");
    fclose(out);
}


void set_stud(byte_t *byte_array, int i, int j, int k)
{
    int studentNum = i-1, answerNum = j - 1, newAnswer = k, oldAnswers = byte_array[studentNum], mask = 3, newMaskAnswer = 0,
            newMask = 0,newByteAnswer;
    // getting a mask with 11 at the position of the indexs we want to turn into 11.
    mask = mask << (answerNum * 2);
    // the old answer with 11 at the position of the indexs we want to change.
    newMaskAnswer = (oldAnswers ^ mask);
    // taking the new answer of the studnt at shift it to the index of the answer.
    newMask = newAnswer << (answerNum * 2);
    // using OR we correcting the answer.
    newByteAnswer = (newMaskAnswer | newMask);
    byte_array[studentNum] = newByteAnswer;
}
float average_stud(byte_t *byte_array, int i)
{
    byte_t studentAnswer = byte_array[i - 1];
    float avg = 0;
    int j, bitLeft = 0, bitRight = 0, mask = 1;
    for (j = 0;j < 8;j++) {
        // checking if the first bit of one answer is 0 or not.
        bitLeft = (studentAnswer & (mask << j));
        // shifting the mask to the second index of the answer.
        j++;
        // checking if the first bit of one answer is 0 or not.
        bitRight = (studentAnswer & (mask << j));
        if ((bitRight == 0) && (bitLeft == 0)) {
            // answer = 1
            avg += 0;
        } else if ((bitRight == 0) && (bitLeft != 0)) {
            // answer = 2
            avg += 1;
        }
        else if ((bitRight !=0) && (bitLeft == 0)) {
            // answer = 3
            avg += 2;
        }
        else {
            // answer = 1
            avg += 3;
        }
    }
    avg = avg / 4;
    return avg;

}
float average_ans(byte_t *byte_array, int j)
{
    int i = 0, studentAnswer = j - 1, bitLeft = 0, bitRight = 0, mask = 1;
    float avg = 0;
    for (i = 0;i < count;i++) {
        mask = 1;
        mask = mask << (studentAnswer * 2);
        bitLeft = (byte_array[i] & mask);
        mask = mask << 1;
        bitRight = (byte_array[i] & mask);
        if ((bitRight == 0) && (bitLeft == 0)) {
            // answer = 1
            avg += 0;
        }
        else if ((bitRight == 0) && (bitLeft != 0)) {
            // answer = 2
            avg += 1;
        }
        else if ((bitRight != 0) && (bitLeft == 0)) {
            // answer = 3
            avg += 2;
        }
        else {
            //((bitRight == 1) && (bitLeft == 1))
            // answer = 1
            avg += 3;
        }
    }
    avg = avg / count;
    return avg;
}