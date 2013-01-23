/*
ID: jiongrr1
LANG: C++
TASK: nocows
*/
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define MAXN 301
int main()
{
    freopen("nocows.in", "r", stdin);
    freopen("nocows.out", "w", stdout);
    int n,m;
    int dp[MAXN][MAXN];
    memset(dp, 0, sizeof(dp));
    for(int i=1; i<MAXN; i++)
        dp[1][i] = 1;

    scanf("%d%d", &n, &m);;
    for(int i=3; i<=n; i++)
        for(int j=2; j<=m; j++)
        {
            for(int k=0; k<i; k++)
            {
                if ( i % 2 == 0)
                    dp[i][j] = 0;
                else 
                    dp[i][j] = (dp[i][j] + dp[k][j - 1] * dp[i - k - 1][j - 1])
                        % 9901;
            }

        }

    printf("%d\n",(9901 + dp[n][m] - dp[n][m-1]) % 9901);



}
