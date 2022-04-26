#include<bits/stdc++.h>

using namespace std;

int ucln(int a, int b){
    if (b == 0) return a;
    if (a % b == 0) return b;
    return ucln(b, a%b);
}
int max(int a[],int n)
{
      if(n==1) return a[0];
      if (a[n-1]>max(a,n-1)) return a[n-1];
      return max(a,n-1);
}
int min(int a[],int n)
{
      if(n==1) return a[0];
      if (a[n-1]<min(a,n-1)) return a[n-1];
      return min(a,n-1);
}
int main(){
    int a[100],n,i;
    cout<<"Nhap n: ";
    cin>>n;
    cout<<"Nhap mang a: ";
    for (i=0;i<n;i++)
    {
        cin>>a[i];
    }
    cout<<"So lon nhat : "<<max(a,n)<<endl;
    cout<<"So nho nhat: "<<min(a,n)<<endl;
    cout <<"UCLN: "<< ucln(max(a,n), min(a,n));
}