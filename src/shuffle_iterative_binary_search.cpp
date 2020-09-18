#include "iterative_search.h"
#include "utils.h"
#include "test.h"

int main(int argc, char const *argv[])
{
	string filename;
	size_t repetitions = 1;
	if (argc > 1) {
		filename = argv[1];
	}
	else {
		cout << "[Error] Debe ingresar un archivo de entrada" << endl;
		return -1;
	}
	if (argc > 2)
		repetitions = stoul(argv[2]);

	auto data = read_data(filename);

	vector<int> random_data(data);

	random_device r;
	default_random_engine re(r());

	shuffle(begin(random_data), end(random_data), re);

	double tt = 0.0;
	for (const auto& d: random_data) {
		double t = 0.0;
		for (size_t i = 0; i < repetitions; ++i)
			t += profile([&data, &d]{dsa::binary_search(data, d);});
		tt += t/repetitions;
		cout << tt << endl;
	}

	return 0;
}

