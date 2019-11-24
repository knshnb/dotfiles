#include <bits/stdc++.h>
using namespace std;
using Int = long long;
#define REP(i, n) for (Int i = 0, max_i = (n); i < max_i; i++)
#define REPI(i, a, b) for (Int i = (a), max_i = (b); i < max_i; i++)
#define ALL(obj) begin(obj), end(obj)
#define RALL(obj) rbegin(obj), rend(obj)
#define fi first
#define se second
using ii = pair<Int, Int>;
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

template <template <class, class...> class TT, class... Args>
ostream& operator<<(ostream& out, TT<Args...> const& cont) {
    for (auto&& elem : cont) out << elem << " ";
    return out;
}
template <class T> ostream& operator<<(ostream& out, const vector<vector<T>>& vs) {
    for (auto&& v : vs) cout << v << endl;
    return out;
}
template <class T1, class T2> ostream& operator<<(ostream& out, pair<T1, T2> const& val) {
    return (out << "{" << val.first << " " << val.second << "}");
}

void dump_func() { cerr << endl; }
template <class Head, class... Tail> void dump_func(Head&& h, Tail&&... t) {
    cerr << h << (sizeof...(Tail) == 0 ? "" : ", "), dump_func(forward<Tail>(t)...);
}
#ifdef _MY_DEBUG
#define dump(...)                                                                                                    \
    cerr << "/* " << #__VA_ARGS__ << " [" << __LINE__ << ":" << __FUNCTION__ << "]" << endl, dump_func(__VA_ARGS__), \
        cerr << "*/\n\n";
#else
#define dump(...)
#endif

/**
 *    author:  knshnb
 *    created: CREATED_TIMESTAMP
 **/

signed main() {
}
