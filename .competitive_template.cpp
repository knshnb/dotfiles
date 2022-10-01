#include <bits/stdc++.h>
using Int = long long;  // clang-format off
using pii = std::pair<Int, Int>;
#define REP_(i, a_, b_, a, b, ...) for (Int i = (a), lim##i = (b); i < lim##i; i++)
#define REP(i, ...) REP_(i, __VA_ARGS__, __VA_ARGS__, 0, __VA_ARGS__)
#define RREP_(i, a_, b_, a, b, ...) for (Int i = Int(b) - 1, low##i = (a); i >= low##i; i--)
#define RREP(i, ...) RREP_(i, __VA_ARGS__, __VA_ARGS__, 0, __VA_ARGS__)
#define ALL(v) std::begin(v), std::end(v)
#define RALL(v) std::rbegin(v), std::rend(v)
struct SetupIO { SetupIO() { std::cin.tie(nullptr), std::ios::sync_with_stdio(false), std::cout << std::fixed << std::setprecision(13); } } setup_io;
#ifndef dump
#define dump(...)
#endif  // clang-format on
struct in {
    int n;
    in() {}
    in(int n_) : n(n_){};
    template <class T> operator T() {
        T ret;
        std::cin >> ret;
        return ret;
    }
    template <class T> operator std::vector<T>() {
        std::vector<T> ret(n);
        for (int i = 0; i < n; i++) std::cin >> ret[i];
        return ret;
    }
};
void out() { std::cout << "\n"; }
template <class Head, class... Tail> void out(Head&& h, Tail&&... t) {
    std::cout << h << (sizeof...(Tail) == 0 ? "" : " "), out(std::forward<Tail>(t)...);
}
template <class T> bool chmin(T& a, const T& b) { return a > b ? a = b, true : false; }
template <class T> bool chmax(T& a, const T& b) { return a < b ? a = b, true : false; }
template <class T> using V = std::vector<T>;

/**
 *    author:  knshnb
 *    created: CREATED_TIMESTAMP
 **/

signed main() {
}
