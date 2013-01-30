/*
ID: jiongrr1
LANG: C
TASK: zerosum
*/
#include<string.h>
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int n;
int stat = 0;
char str[100];
void calc(char* str);
void search(char* str, int k);
int main()
{
    freopen("zerosum.in", "r", stdin);
    freopen("zerosum.out", "w", stdout);
    scanf("%d", &n);
    strcpy(str, "1 2 3 4 5 6 7 8 9");
    str[2 * n - 1] = '\0';
    search(str, 0);
    //printf("%d\n", stat);

    return 0;

}
void search(char* str, int k)
{
    if ( k == n-1)
    {
        str[2 * k + 1] = '\0';
        calc(str);
        //printf("%s\n", str);
        return;
    }
    char* p;
    for(p = " +-"; *p; p++)
    {
        str[2 * k + 1] = *p;
        search(str, k+1);
    }
}
void calc(char* str)
{
    char *p = str;
    int term = 0, sum = 0, sign = 1;
    for(; *p; p++)
    {
        switch(*p)
        {
            case '+':
            case '-':
                sum += term * sign;
                term = 0;
                sign = (*p == '+') ? 1 : -1;
            case ' ':
                break;
            default:
                term = term * 10 + *p - '0';
        }
    }
    sum += term * sign;
    if (sum == 0)
    {
        printf("%s\n", str);
    }
    else
    {
        stat++;
    }
}
