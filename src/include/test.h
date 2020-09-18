#ifndef TEST_H
#define TEST_H

namespace test {

void shuffle(function<void(vector<int>&, int)> func, 
			 vector<int>& data, 
			 size_t repetitions) {
	vector<int> random_data(data);

	random_device r;
	default_random_engine re(r());
	// uniform_real_distribution<> ud(0, data.size());

	shuffle(begin(random_data), end(random_data), re);
	for (const auto& d: random_data) {
		double t = 0.0;
		for (size_t i = 0; i < repetitions; ++i)
			t += profile([&data, &d, &func]{ func(data, d); });
		cout << t/repetitions << flush << endl;
	}
}

void increment(function<void(vector<int>&, int)> func, 
			   vector<int>& data, 
			   size_t samples) {

	size_t interval = data.size()/samples;

	double t = 0.0;
	int count = 0;
	for (const auto& d: data) {
		t += profile([&func, &data, &d]{func(data, d);});
		if (count%interval == 0) {
			cout << t/interval << endl;
			t = 0.0;
		}
		count++;
	}
}

}

#endif