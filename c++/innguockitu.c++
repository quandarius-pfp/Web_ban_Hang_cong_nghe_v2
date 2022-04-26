#include <iostream>


using namespace std;

string daonguoc(string &x,int a,int b)

{

        char temp;

        if(a>=b) {
                return x;
        }

else{

                temp = x[b];

                x[b]=x[a];

                x[a]=temp;

                return daonguoc(x,++a,--b);

        }

}

int main()

{

        string x;

        getline(cin,x);

        cout<<daonguoc(x,0,x.length()-1);


return 0;

}