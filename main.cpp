#include "src/include/recursive_search.h"
#include "src/include/utils.h"

using namespace std;
using namespace dsa;

int main(int argc, char const *argv[])
{
	auto data = read_data("data/1000000.dat");
	size_t repetitions = 1;

	// cout << "antes" << endl;
	vector<int> random_data(data);
	// cout << "despues" << endl;

	random_device r;
	default_random_engine re(r());
	// uniform_real_distribution<> ud(0, data.size());

	shuffle(begin(random_data), end(random_data), re);
	for (const auto& d: random_data) {
		double t = 0.0;
		for (int i = 0; i < repetitions; ++i) {
			auto start = chrono::steady_clock::now();
			linear_search(data, d);
			auto end = chrono::steady_clock::now();
			t += chrono::duration_cast<chrono::nanoseconds>(end - start).count()/1e6;
		}
		cout << t/repetitions << flush << endl;
	}

	return 0;
}
