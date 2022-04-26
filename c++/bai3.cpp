#include <iostream>

using namespace std;
int countDigits(int n) {
    if (n < 10 && n > -10) return 1;
    return 1 + countDigits(n / 10);
}

int main() {
    int n;
    cout<<"Nhap n: ";
    cin>>n;
    cout<<"So chu so cua "<<n<<" la: "<<countDigits(n);
    return 0;
}