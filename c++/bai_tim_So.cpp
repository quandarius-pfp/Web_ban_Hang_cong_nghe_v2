#include<bits/stdc++.h>

using namespace std;

int tinh(int n)
{
	if(n==1){
		return 0;
	}
	return 1 + tinh(n-1)*2 ;
}
int main()
{
	int n;
	cout<<"Nhap n: ";		
    cin>>n;
	cout<<"Gia tri so de quy thu "<<n<<" la: "<<tinh(n);
	
	return 0;
}

/*

1 = 1 + 0*2
3 = 1 + 2
7 = 1 + 3*2
15 = 1+ 7* 2

dn de quy: F(x) = 0 neu n=0
		   F(x) = 2*F(x-1) + 1 TH con lai
*/
