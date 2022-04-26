#include<bits/stdc++.h>

using namespace std;

void BubbleSort(int A[], int n) //Sắp xếp nổi bọt 
{
    for (int i = 0; i < n - 1; i++)
        for (int j = 0; j < n - i - 1; j++)
            if (A[j] > A[j + 1])
                swap(A[j], A[j + 1]); // đổi chỗ A[j] và A[j + 1]
}

// John,  Cool,   Bee,  Try,  Thor,  Zil,  Adam,  Dany,  Milk
// J C B T(3) T(4) Z A D M 


// J C B T(3) T(4) Z A M D

// J C B T(3) T(4) Z A D M ( giu nguyen)

// J C B T(3) T(4) A Z D M  

// J C B A T(3) T(4) Z D M 

// J C A B T(3) T(4) Z D M 

// J A C B T(3) T(4) Z D M 

// A J C  B T(3) T(4) Z D M 

// hết lần 1

// A J C  B T(3) T(4) D Z M 

// A J C  B D T(3) T(4) Z  M 

// A J B  C D T(3) T(4) Z  M

// A B J C D T(3) T(4) Z  M

// hết lần 2

//  A B J  C D T(3) T(4) M Z 

// A B J  C D M T(3) T(4)  Z 

// A B C J  D M T(3) T(4)  Z 

// hết lần 3

//   A B C D J   M T(3) T(4)  Z 

// hết lần 4 ( kết thúc )









// 2 5 3 4 1

// 2 5 3 1 4

// 2 5 1 3 4

// 2 1 5 3 4 

// 1 2 5 3 4

// het lan 1

// 1 2 5 3 4 ( giu nguyen)
// 1 2 3 5 4 
//het lan 2

// 1 2 3 4 5 

// het lan duyet  3

// 1 2 3 4 5 

// het lan duyet  4

// 1 2 3 4 5 

// het lan duyet  5





void SelectionSort(int A[], int n) //sắp xếp chọn 
{
    int min;
    for (int i = 0; i < n - 1; i++)
    {
        min = i; // tạm thời xem A[i] là nhỏ nhất
        // Tìm phẩn tử nhỏ nhất trong đoạn từ A[i] đến A[n - 1]
        for (int j = i + 1; j < n; j++)
            if (A[j] < A[min]) // A[j] mà nhỏ hơn A[min] thì A[j] là nhỏ nhất
                min = j; // lưu lại vị trí A[min] mới vừa tìm được
        if (min != i) // nếu như A[min] không phải là A[i] ban đầu thì đổi chỗ
            swap(A[i], A[min]);
    }
}
void SelectionSort2(int A[], int n) //sắp xếp chọn 
{
    int max;
    for (int i = 0; i < n - 1; i++)
    {
        max= i; // tạm thời xem A[i] là nhỏ nhất
        // Tìm phẩn tử nhỏ nhất trong đoạn từ A[i] đến A[n - 1]
        for (int j = i + 1; j < n; j++)
            if (A[j] > A[max]) // A[j] mà nhỏ hơn A[min] thì A[j] là nhỏ nhất
                max = j; // lưu lại vị trí A[min] mới vừa tìm được
        if (max != i) // nếu như A[min] không phải là A[i] ban đầu thì đổi chỗ
            swap(A[i], A[max]);
    }
}
// 74 34 24 84 54 94 14 64 04 
// 04 nhỏ nhất 

// 04 74 34 24 84 54 94 14 64 

//  xét từ 74 đến 64  nhỏ nhất 14

//  04 14 74 34 24 84 54 94 64

//  tieps tục xét , nhỏ nhất 24

//  04 14 24 74 34 84 54 94 64

//  tieps tục xét , nhỏ nhất 34

//  04 14 24 34 74 84 54 94 64

// tieps tục xét , nhỏ nhất 54

// 04 14 24 34 54 74 84 94 64

// tieps tục xét , nhỏ nhất 64

// 04 14 24 34 54  64  74 84 94 

// tieps tục xét , nhỏ nhất 74 , đầu dãy , ko đổi

// tieps tục xét , nhỏ nhất 84 , đầu dãy , ko đổi

// tieps tục xét , nhỏ nhất 94 , đầu dãy , ko đổi

// kết thúc







// John,  Cool,   Bee,  Try,  Thor,  Zil,  Adam,  Dany,  Milk

// J C B T(3) T(4) Z A D M 

// A J C B T(3) T(4) Z D M

// lần 1

// A B J C  T(3) T(4) Z D M

// lần 2

// A B  C J T(3) T(4) Z D M

// lần 3

// A B  C D J T(3) T(4) Z  M
// lần 4

// A B  C D J M T(3) T(4) Z  
// lần 5 





















void InsertionSort(int A[], int n)
{
    int pos, x;
    for (int i = 1; i < n; i++)
    {
        x = A[i]; // lưu lại giá trị của x tránh bị ghi đè khi dịch chuyển các phần tử
        pos = i - 1;
        // tìm vị trí thích hợp để chèn x
        while (pos >= 0 && A[pos] > x)
        {
            // kết hợp với dịch chuyển phần tử sang phải để chừa chỗ cho x
            A[pos + 1] = A[pos];
            pos--;
        }
        // chèn x vào vị trí đã tìm được
        A[pos + 1] = x;
    }
}
void InsertionSort2(int A[], int n)
{
    int pos, x;
    for (int i = 1; i < n; i++)
    {
        x = A[i]; // lưu lại giá trị của x tránh bị ghi đè khi dịch chuyển các phần tử
        pos = i - 1;
        // tìm vị trí thích hợp để chèn x
        while (pos >= 0 && A[pos] < x)
        {
            // kết hợp với dịch chuyển phần tử sang phải để chừa chỗ cho x
            A[pos + 1] = A[pos];
            pos--;
        }
        // chèn x vào vị trí đã tìm được
        A[pos + 1] = x;
    }
}

// 1 3 2 4

//  chọn 3

// 3 1 2 4

// chọn 2 

// 3 2 1 4

// chọn 4 

// 4 3 2 1




// 74 34 24 84 54 94 14 64 04

// chọn 34 

//  34 74 24 84 54 94 14 64 04

// chọn 24

//  24 34  74 84 54 94 14 64 04

// chọn 84

// 24 34  74  84 54 94 14 64 04

// chọn 54 

// 24 34 54 74  84 94 14 64 04

// chọn 94

//  24 34 54 74  84 94 14 64 04

// chọn 14 

// 14 24 34 54 74  84 94  64 04

// chọn 64 

// 14 24 34 54 64  74  84 94   04

 //chọn 04

 // 04 14 24 34 54 64  74  84   94
int main()
{
    int a[100],n,i;
    cout<<"Nhap n: ";
    cin>>n;
    
    cout<<endl;
    cout<<"Nhap mang a: ";
    for (i=0;i<n;i++)
    {
        cin>>a[i];
    }

    BubbleSort(a,n);
    cout<<"Ket Qua  bubbleSort: ";
    for (i=0;i<n;i++)
    {
        cout<<a[i]<<" ";
    }
    cout<<endl;
    SelectionSort(a,n);
    cout<<"Ket Qua SelectionSort: ";
    for (i=0;i<n;i++)
    {
        cout<<a[i]<<" ";
    } 
    cout<<endl;

    cout<<endl;
    SelectionSort2(a,n);
    cout<<"Ket Qua SelectionSort2 : ";
    for (i=0;i<n;i++)
    {
        cout<<a[i]<<" ";
    } 
    cout<<endl;
    InsertionSort(a,n);
    cout<<"Ket Qua InsertionSort: ";
    for (i=0;i<n;i++)
    {
        cout<<a[i]<<" ";
    }
    cout<<endl;

     InsertionSort2(a,n);
    cout<<"Ket Qua InsertionSort2: ";
    for (i=0;i<n;i++)
    {
        cout<<a[i]<<" ";
    }


   


    
}

