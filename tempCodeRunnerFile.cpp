#include <iostream>
#include <utility>
#include <vector>
using namespace std;
int main() {
    int n;
    cin >> n;
     
    vector<pair<int, int>> lag(n); 
    int count = 0, count1 = 0;

    for(int i = 0; i < n; i++) { 
        cin >> lag[i].first >> lag[i].second;

        if (lag[i].first % 2 != 0) {
            count++;
        }
        if (lag[i].second % 2 != 0) {
            count1++;
        }
    }

    if (count % 2 == 0 && count1 % 2 == 0) {
        cout << "0";
    } else if ((count % 2 != 0 && count1 % 2 == 0) || (count % 2 == 0 && count1 % 2 != 0)) {
        cout << "-1";
    } else {
        cout << "1";
    }

    return 0;
}