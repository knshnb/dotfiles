#include <bits/stdc++.h>
using namespace std;
using Int = long long;
using pii = pair<Int, Int>;
#define REP2(i, n) for (Int i = 0, max_i = (n); i < max_i; i++)
#define REP3(i, a, b) for (Int i = (a), max_i = (b); i < max_i; i++)
#define OVERLOAD2(_1, _2, _3, name, ...) name
#define REP(...) OVERLOAD2(__VA_ARGS__, REP3, REP2)(__VA_ARGS__)
template <class T> inline bool chmax(T& a, const T& b) {
    if (a >= b) return false;
    a = b;
    return true;
}
template <class T> inline bool chmin(T& a, const T& b) {
    if (a <= b) return false;
    a = b;
    return true;
}
struct in {
    int n;
    in() {}
    in(int n_) : n(n_){};
    template <class T> operator T() {
        T ret;
        cin >> ret;
        return ret;
    }
    template <class T> operator vector<T>() {
        vector<T> ret(n);
        for (int i = 0; i < n; i++) cin >> ret[i];
        return ret;
    }
};
struct SetupIO {
    SetupIO() { cin.tie(nullptr), ios::sync_with_stdio(false), cout << fixed << setprecision(20); }
} setup_io;

#ifdef _MY_DEBUG
#include "/Users/knshnb/.competitive_local.hpp"
#else
#define dump(...)
#endif

/**
 *    author:  knshnb
 *    created: CREATED_TIMESTAMP
 **/

signed main() {
}
