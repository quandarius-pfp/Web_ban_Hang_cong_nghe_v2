
#include<bits/stdc++.h>

using namespace std;


void TangDan(int a[], int n){
    int tg;
    for(int i = 0; i < n - 1; i++){
        for(int j = i + 1; j < n; j++){
            if(a[i] > a[j]){
                tg = a[i];
                a[i] = a[j];
                a[j] = tg;        
            }
        }
    }
}
int binarySearch(int arr[], int l, int r, int x) {
  if (r >= l) {
    int mid = l + (r - l) / 2; 
    if (arr[mid] == x)
      return mid;
 
    if (arr[mid] > x)
      return binarySearch(arr, l, mid - 1, x);
 
    return binarySearch(arr, mid + 1, r, x);
  }
 
  return -1;
}
int main()
{
    int a[100],n,i;
    cout<<"Nhap n: ";
    cin>>n;
     int k;
    cout<<"Nhap K: ";
    cin>>k;
    cout<<endl;
    cout<<"Nhap mang a: ";

   

  
    for (i=0;i<n;i++)
    {
        cin>>a[i];
    }
    TangDan(a,n);
    for (i=0;i<n;i++)
    {
        cout<<a[i];
    }
    cout<<"So can tim ơ vi tri: "<<binarySearch(a,0,n-1,k);
   


    
}

