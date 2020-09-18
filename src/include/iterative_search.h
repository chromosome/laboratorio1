#ifndef ITERATIVE_SEARCH_H
#define ITERATIVE_SEARCH_H

#include <bits/stdc++.h>

using namespace std;

namespace dsa {

template <typename T>
size_t linear_search(const vector<T>& a, T n) {
	for (size_t i = 0; i < a.size(); ++i)
		if (n == a[i])
			return i;

	return -1;
}

template <typename T>
size_t binary_search(const vector<T>& a, T n, int lmin, int lmax) {
	size_t p = (lmin + lmax)/2;

	while (lmin <= lmax) {
		if (a[p] == n)
			return p;

		if (n < a[p])
			lmax = p - 1;

		if (n > a[p])
			lmin = p + 1;

		p = (lmax + lmin)/2;
	}

	return -1;
}

template <typename T>
size_t binary_search(const vector<T>& a, T n) {
	return binary_search(a, n, 0, a.size() - 1);
}

template <typename T>
size_t exponential_search(const vector<T>& a, T n) {
	size_t p = 1;

	while(a[p] < n && p < a.size())
		p <<= 1;

	return binary_search(a, n, p >>= 1, min(p, a.size()));
}

}

#endif
