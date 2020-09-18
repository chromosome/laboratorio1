#ifndef UTILS_H
#define UTILS_H

#include <bits/stdc++.h>

using namespace std;

vector<int> read_data(string filename) {
	vector<int> data;

	ifstream input(filename);
	int i;

	while (input >> i)
		data.push_back(i);
	
	return data;
}

double profile (function<void(void)> f) {
	auto start = chrono::steady_clock::now();
	f();
	auto end = chrono::steady_clock::now();

	return chrono::duration_cast<chrono::nanoseconds>(end - start).count()/1e6;
}

#endif