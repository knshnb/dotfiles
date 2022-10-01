#include <bits/stdc++.h>

using std::to_string;
std::string to_string(char c) { return std::string(1, c); }
std::string to_string(const std::string &s) { return '"' + s + '"'; }
std::string to_string(const char *s) { return to_string((std::string)s); }
std::string to_string(bool b) { return (b ? "true" : "false"); }

// protoptype
// template <class T> std::string to_string(const std::vector<T> &v);
template <class A, class B> std::string to_string(std::pair<A, B> p);
//

#include <atcoder/modint>
template <int m> std::string to_string(atcoder::static_modint<m> x) { return to_string(x.val()); }

template <size_t N> std::string to_string(std::bitset<N> v) {
    std::string res = "";
    for (size_t i = 0; i < N; i++) {
        res += static_cast<char>('0' + v[i]);
    }
    return res;
}
template <class A, class B, class C> std::string to_string(std::tuple<A, B, C> p) {
    return "(" + to_string(std::get<0>(p)) + ", " + to_string(std::get<1>(p)) + ", " + to_string(std::get<2>(p)) + ")";
}
std::string to_string(std::vector<bool> v) {
    bool first = true;
    std::string res = "{";
    for (auto &&x : v) {
        if (!first) res += ", ";
        first = false;
        res += to_string(x);
    }
    return res += "}";
}

template <class T> std::string to_string(std::queue<T> q) {
    bool first = true;
    std::string res = "{";
    while (!q.empty()) {
        if (!first) res += ", ";
        first = false;
        res += to_string(q.front());
        q.pop();
    }
    return res + "}";
}

template <class T> std::string to_string(std::stack<T> s) {
    bool first = true;
    std::string res = "{";
    while (!s.empty()) {
        if (!first) res += ", ";
        first = false;
        res += to_string(s.top());
        s.pop();
    }
    return res + "}";
}

template <class A, class B, class C> std::string to_string(std::priority_queue<A, B, C> pq) {
    bool first = true;
    std::string res = "{";
    while (pq.size()) {
        if (!first) res += ", ";
        first = false;
        res += to_string(pq.top());
        pq.pop();
    }
    return res + "}";
}
template <class A> std::string to_string(std::complex<A> c) {
    return "(" + to_string(c.real()) + "," + to_string(c.imag()) + ")";
}

template <class A, class B> std::string to_string(std::pair<A, B> p) {
    return "(" + to_string(p.first) + ", " + to_string(p.second) + ")";
}

template <class A> std::string to_string(const A &v) {
    bool first = true;
    std::string res = "{";
    for (auto &x : v) {
        if (!first) res += ", ";
        first = false;
        res += to_string(x);
    }
    return res += "}";
}

void dump_func() { std::cerr << std::endl; }
template <class Head, class... Tail> void dump_func(Head &&h, Tail &&... t) {
    std::cerr << to_string(h) << (sizeof...(Tail) == 0 ? "" : ", "), dump_func(std::forward<Tail>(t)...);
}

#define dump(...)                                                                                      \
    std::cerr << "/* " << #__VA_ARGS__ << " [" << __LINE__ << ":" << __FUNCTION__ << "]" << std::endl, \
        dump_func(__VA_ARGS__), std::cerr << "*/\n\n";
