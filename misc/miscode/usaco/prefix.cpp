/*
ID:jiongrr1
LANG: C++
TASK: prefix
*/
#include<iostream>
#include<algorithm>
#include<string>
#include<cstdio>
#include<stack>
#include<cstring>
#define MAXN 200001
using namespace std;
int main()
{
    freopen("prefix.in", "r", stdin);
    freopen("prefix.out", "w", stdout);
    int n = -1, v[MAXN], len = -1, sz[300];
    char p[300][20], s[MAXN], t[80];
    do
    {
        scanf("%s", p[++n]);
        sz[n] = strlen(p[n]);
    } while (p[n][0] != '.');
    while (scanf("%s", &t) != -1)
        strcat(s, t);

    stack<int> stk; stk.push(0);
    v[0] = 1; int best = -1;
    while(!stk.empty())
    {
        int from = stk.top(); stk.pop();
        best = max(best, from);
        for (int i = 0; i < n; i++)
        {
            if (!strncmp(s+from, p[i], sz[i])
                    && !v[from + sz[i]]++)
                stk.push(from + sz[i]);
        }


    }
    printf("%d\n", best);
}
