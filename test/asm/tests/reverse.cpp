#include <algorithm>
#include <vector>

using namespace std;

void rev(vector<int> &v) {
    reverse(v.begin(), v.end());
}

void res_defined_array(float t[]) {
    reverse(t, t+10);
}


void res_defined_array(int t[]) {
    reverse(t, t+10);
}

int one() {
    return 1;
}