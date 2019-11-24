#include <bits/stdc++.h>
using namespace std;

string to_string(const string& s) { return '"' + s + '"'; }
string to_string(const char* s) { return to_string((string)s); }
string to_string(bool b) { return (b ? "true" : "false"); }
template <class A, class B> string to_string(pair<A, B> p) {
    return "(" + to_string(p.first) + ", " + to_string(p.second) + ")";
}
template <class A, class B, class C> string to_string(tuple<A, B, C> p) {
    return "(" + to_string(get<0>(p)) + ", " + to_string(get<1>(p)) + ", " + to_string(get<2>(p)) + ")";
}
template <class A> string to_string(A v) {
    bool first = true;
    string res = "{";
    for (const auto& x : v) {
        if (!first) res += ", ";
        first = false, res += to_string(x);
    }
    return res += "}";
}

void dump_func() { cerr << endl; }
template <class Head, class... Tail> void dump_func(Head&& h, Tail&&... t) {
    cerr << to_string(h) << (sizeof...(Tail) == 0 ? "" : ", "), dump_func(forward<Tail>(t)...);
}

#define dump(...)                                                                                                    \
    cerr << "/* " << #__VA_ARGS__ << " [" << __LINE__ << ":" << __FUNCTION__ << "]" << endl, dump_func(__VA_ARGS__), \
        cerr << "*/\n\n";
