#include<bits/stdc++.h>

using namespace std;

int main(){
    int t;
    cin>>t;
    for(int i=1;i<=t;i++){
        int n;
        cout<<"nhap so tien : ";
        cin>>n;
        int a[5]={10000,5000,2000,1000,500};
        int cnt =0;
        for(int i=0;i<n;i++){
            cnt+=n/a[i];
            n%=a[i];

        }
        cout<<cnt<<endl;
    }
    
}