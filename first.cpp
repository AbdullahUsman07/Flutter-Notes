#include<iostream>
using namespace std;

// Simple function to find square
int sqare(int num)
{
    return num*num;
}

int main()
{
    int num;
    cout<<" Input number: ";
    cin>>num;
    cout<<" Sqaure of "<<num <<" is "<<sqare(num)<<endl;
    return 0;
}