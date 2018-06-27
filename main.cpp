// Use suffix array and LCP to compute
// longest common substring of two input strings. BPW

/*
 * This program has been successfuly complied and runs on omega
 * The c++ version used was 11
 * CLion IDE was used to write the code
 * To make the code work simply copy the code and run in an ide
 * IF any compiliation error occur, please let me know
 * ID-1001564975
 * email-shubhpreetsingh.toor@mavs.uta.edu
 */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>

char s[1000000],s1[500000],s2[500000],s3[50000];
int n,           // length of s[] including \0
        sa[1000000],   // suffix array for s[]
        rank[1000000], // rank[i] gives the rank (subscript) of s[i] in sa[]
        lcp[1000000];  // lcp[i] indicates the number of identical prefix symbols
// for s[sa[i-1]] and s[sa[i]]

int suffixCompare(const void *xVoidPt,const void *yVoidPt)
{
// Used in qsort call to generate suffix array.
    int *xPt=(int*) xVoidPt,*yPt=(int*) yVoidPt;

    return strcmp(&s[*xPt],&s[*yPt]);
}

void computeRank()
{
// Computes rank as the inverse permutation of the suffix array
    int i;

    for (i=0;i<n;i++)
        rank[sa[i]]=i;
}

void computeLCP()
{
//Kasai et al linear-time construction
    int h,i,j,k;

    h=0;  // Index to support result that lcp[rank[i]]>=lcp[rank[i-1]]-1
    for (i=0;i<n;i++)
    {
        k=rank[i];
        if (k==0)
            lcp[k]=(-1);
        else
        {
            j=sa[k-1];
            // Attempt to extend lcp
            while (i+h<n && j+h<n && s[i+h]==s[j+h])
                h++;
            lcp[k]=h;
        }
        if (h>0)
            h--;  // Decrease according to result
    }
}

int fibIndex=0;


int main()
{
    int i,j,k,p,dollarPos,newElement,ampPos,LCSpos=0,LCSlength=0,firstPos,secondPos,thirdPos, tempStart, tempEnd;


    scanf("%s",s1);
    scanf("%s",s2);
    scanf("%s",s3);

    for (i=0;s1[i]!='\0';i++)
        s[i]=s1[i];

    dollarPos=i;
    //std::cout << "dollarPos:" << dollarPos << std::endl;

    s[i++]='$';

    for (j=0;s2[j]!='\0';j++)
        s[i+j]=s2[j];

    ampPos = i+j;
    s[i+j++] = '%';

    for (newElement=0;s3[newElement]!='\0';newElement++)
        s[i+j+newElement]=s3[newElement];

    s[i+j+newElement]='\0';
    n=i+j+newElement+1;

    printf("n is %d\n",n);

// Quick-and-dirty suffix array construction
    for (i=0;i<n;i++)
        sa[i]=i;
    qsort(sa,n,sizeof(int),suffixCompare);
    computeRank();
    computeLCP();
    if (n<2000)
    {
        printf("i   sa  suffix                              lcp s rank lcp[rank]\n");
        for (i=0;i<n;i++)
            printf("%-3d %-3d %-35.35s %-3d %c  %-3d  %-3d\n",
                   i,sa[i],&s[sa[i]],lcp[i],s[i],rank[i],lcp[rank[i]]);
    }

    int checkArray[] = {0,0,0};
    int startPos = 0;
    int endPos;
    int min = 0;

    for (i=3;i<n;i++) {

            if (sa[i]<dollarPos)
            {
                checkArray[0] = 1;
                if (startPos == 0) {
                    startPos = i;
                }
            }

            if (sa[i] < ampPos && sa[i] > dollarPos)
            {
                checkArray[1] = 1;
                if (startPos == 0) {
                    startPos = i;
                }
            }

            if (sa[i] > ampPos) {
                checkArray[2] = 1;
                if (startPos == 0) {
                    startPos = i;
                }
            }

            if(checkArray[0] == 1 && checkArray[1] == 1 && checkArray[2] == 1)
            {

                checkArray[0] = checkArray[1] = checkArray [2] = 0;

                if (sa[i-1]<dollarPos) {
                    checkArray[0] = 1;
                }
                if (sa[i-1] < ampPos && sa[i] > dollarPos) {
                    checkArray[1] = 1;
                }
                if (sa[i-1] > ampPos){
                    checkArray[2] = 1;
                }

                if (sa[i]<dollarPos) {
                    checkArray[0] = 1;
                }
                if (sa[i] < ampPos && sa[i] > dollarPos) {
                    checkArray[1] = 1;
                }
                if (sa[i] > ampPos){
                    checkArray[2] = 1;
                }

                int tempMin = std::min (lcp[i-1],lcp[i]);

                if (tempMin > min) {
                    min = tempMin;
                    LCSpos=i;
                    tempStart = startPos;
                    tempEnd = i;
                }

                startPos = i-1;
        }
    }

    int x;
    for (x=tempStart;x<=tempEnd;x++) {
        if (sa[x] < dollarPos ) {
            firstPos = x;
        }
        if (sa[x] > dollarPos && sa[x] < ampPos) {
            secondPos = x;
        }
        if (sa[x] > ampPos) {
            thirdPos = x;
        }
    }

    if (firstPos > thirdPos)
        std::swap(firstPos, thirdPos);

    if (firstPos > secondPos)
        std::swap(firstPos, secondPos);

    if (secondPos > thirdPos)
        std::swap(secondPos, thirdPos);


    printf("Length of longest common substring is %d\n",min);
    printf("x at %d, y at %d, z at %d\n",firstPos, secondPos, thirdPos);
    for (i=0;i<min;i++)
        printf("%c",s[sa[LCSpos]+i]);
    printf("\n");

}
