#include "recursive_search.h"
#include "utils.h"
#include "test.h"

int main(int argc, char const *argv[])
{
	string filename;
	size_t repetitions = 1;
	size_t samples = 100;

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

	// size_t interval = data.size()/samples;

	// for (const auto& d: data) {
	// 	if (d%interval == 0) {
	// 		double t = 0.0;
	// 		for (size_t i = 0; i < repetitions; ++i)
	// 			t += profile([&data, &d]{dsa::binary_search(data, d);});
	// 		cout << t/repetitions << endl;
	// 	}
	// }

	auto func = [](vector<int>& d, int n){dsa::binary_search(d, n);};
	test::increment(func, data, samples);

	return 0;
}
