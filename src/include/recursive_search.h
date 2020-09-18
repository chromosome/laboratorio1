#ifndef RECURSIVE_SEARCH_H
#define RECURSIVE_SEARCH_H

#include <bits/stdc++.h>

using namespace std;

namespace dsa {

template <typename T>
size_t linear_search(const vector<T>& a, T n, size_t p) {
	if (p >= a.size())
		return -1;

	if (n == a[p])
		return p;

	return linear_search(a, n, ++p);
}

template <typename T>
size_t linear_search(const vector<T>& a, T n) {
	size_t p = 0;

	return linear_search(a, n, p);
}

template <typename T>
size_t binary_search(const vector<T>& a, T n, int lmin, int lmax) {
	size_t p = (lmin + lmax)/2;

	if (lmin <= lmax) {
		if (n == a[p])
			return p;

		else if (n < a[p])
			return binary_search(a, n, lmin, p - 1);

		else if (n > a[p])
			return binary_search(a, n, p + 1, lmax);
	}

	return -1;
}

template <typename T>
size_t binary_search(const vector<T>& a, T n) {
	return binary_search(a, n, 0, a.size()-1);
}

template <typename T>
size_t exponential_search(const vector<T>& a, T n, size_t p) {
	if (a[p] < n && p < a.size())
		return exponential_search(a, n, p <<= 1);

	return binary_search(a, n, p >>= 1, min(p, a.size()));
}

template <typename T>
size_t exponential_search(const vector<T>& a, T n) {
	return exponential_search(a, n, 1);
}

}

#endif
