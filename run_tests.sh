mkdir -p results

shuffle() {
	./build/shuffle_iterative_linear_search data/100.dat 1000 > results/shuffle_iterative_linear_search_100
	./build/shuffle_iterative_binary_search data/100.dat 1000 > results/shuffle_iterative_binary_search_100
	./build/shuffle_iterative_exponential_search data/100.dat 1000 > results/shuffle_iterative_exponential_search_100
	./build/shuffle_recursive_linear_search data/100.dat 1000 > results/shuffle_recursive_linear_search_100
	./build/shuffle_recursive_binary_search data/100.dat 1000 > results/shuffle_recursive_binary_search_100
	./build/shuffle_recursive_exponential_search data/100.dat 1000 > results/shuffle_recursive_exponential_search_100

	./build/shuffle_iterative_linear_search data/1000.dat 100 > results/shuffle_iterative_linear_search_1000
	./build/shuffle_iterative_binary_search data/1000.dat 100 > results/shuffle_iterative_binary_search_1000
	./build/shuffle_iterative_exponential_search data/1000.dat 100 > results/shuffle_iterative_exponential_search_1000
	./build/shuffle_recursive_linear_search data/1000.dat 100 > results/shuffle_recursive_linear_search_1000
	./build/shuffle_recursive_binary_search data/1000.dat 100 > results/shuffle_recursive_binary_search_1000
	./build/shuffle_recursive_exponential_search data/1000.dat 100 > results/shuffle_recursive_exponential_search_1000

	./build/shuffle_iterative_linear_search data/10000.dat 10 > results/shuffle_iterative_linear_search_10000
	./build/shuffle_iterative_binary_search data/10000.dat 10 > results/shuffle_iterative_binary_search_10000
	./build/shuffle_iterative_exponential_search data/10000.dat 10 > results/shuffle_iterative_exponential_search_10000
	./build/shuffle_recursive_linear_search data/10000.dat 10 > results/shuffle_recursive_linear_search_10000
	./build/shuffle_recursive_binary_search data/10000.dat 10 > results/shuffle_recursive_binary_search_10000
	./build/shuffle_recursive_exponential_search data/10000.dat 10 > results/shuffle_recursive_exponential_search_10000

	./build/shuffle_iterative_linear_search data/100000.dat > results/shuffle_iterative_linear_search_100000
	./build/shuffle_iterative_binary_search data/100000.dat > results/shuffle_iterative_binary_search_100000
	./build/shuffle_iterative_exponential_search data/100000.dat > results/shuffle_iterative_exponential_search_100000
	./build/shuffle_recursive_linear_search data/100000.dat > results/shuffle_recursive_linear_search_100000
	./build/shuffle_recursive_binary_search data/100000.dat > results/shuffle_recursive_binary_search_100000
	./build/shuffle_recursive_exponential_search data/100000.dat > results/shuffle_recursive_exponential_search_100000

	# ./build/shuffle_iterative_linear_search data/1000000.dat > results/shuffle_iterative_linear_search_1000000
	# ./build/shuffle_iterative_binary_search data/1000000.dat > results/shuffle_iterative_binary_search_1000000
	# ./build/shuffle_iterative_exponential_search data/1000000.dat > results/shuffle_iterative_exponential_search_1000000
	# ./build/shuffle_recursive_linear_search data/1000000.dat > results/shuffle_recursive_linear_search_1000000
	# ./build/shuffle_recursive_binary_search data/1000000.dat > results/shuffle_recursive_binary_search_1000000
	# ./build/shuffle_recursive_exponential_search data/1000000.dat > results/shuffle_recursive_exponential_search_1000000
}

increment() {
	./build/increment_iterative_linear_search data/100.dat > results/increment_iterative_linear_search_100
	./build/increment_iterative_binary_search data/100.dat > results/increment_iterative_binary_search_100
	./build/increment_iterative_exponential_search data/100.dat > results/increment_iterative_exponential_search_100
	./build/increment_recursive_linear_search data/100.dat > results/increment_recursive_linear_search_100
	./build/increment_recursive_binary_search data/100.dat > results/increment_recursive_binary_search_100
	./build/increment_recursive_exponential_search data/100.dat > results/increment_recursive_exponential_search_100

	./build/increment_iterative_linear_search data/1000.dat > results/increment_iterative_linear_search_1000
	./build/increment_iterative_binary_search data/1000.dat > results/increment_iterative_binary_search_1000
	./build/increment_iterative_exponential_search data/1000.dat > results/increment_iterative_exponential_search_1000
	./build/increment_recursive_linear_search data/1000.dat > results/increment_recursive_linear_search_1000
	./build/increment_recursive_binary_search data/1000.dat > results/increment_recursive_binary_search_1000
	./build/increment_recursive_exponential_search data/1000.dat > results/increment_recursive_exponential_search_1000

	./build/increment_iterative_linear_search data/10000.dat > results/increment_iterative_linear_search_10000
	./build/increment_iterative_binary_search data/10000.dat > results/increment_iterative_binary_search_10000
	./build/increment_iterative_exponential_search data/10000.dat > results/increment_iterative_exponential_search_10000
	./build/increment_recursive_linear_search data/10000.dat > results/increment_recursive_linear_search_10000
	./build/increment_recursive_binary_search data/10000.dat > results/increment_recursive_binary_search_10000
	./build/increment_recursive_exponential_search data/10000.dat > results/increment_recursive_exponential_search_10000

	./build/increment_iterative_linear_search data/100000.dat > results/increment_iterative_linear_search_100000
	./build/increment_iterative_binary_search data/100000.dat > results/increment_iterative_binary_search_100000
	./build/increment_iterative_exponential_search data/100000.dat > results/increment_iterative_exponential_search_100000
	./build/increment_recursive_linear_search data/100000.dat > results/increment_recursive_linear_search_100000
	./build/increment_recursive_binary_search data/100000.dat > results/increment_recursive_binary_search_100000
	./build/increment_recursive_exponential_search data/100000.dat > results/increment_recursive_exponential_search_100000

	# ./build/increment_iterative_linear_search data/1000000.dat > results/increment_iterative_linear_search_1000000
	# ./build/increment_iterative_binary_search data/1000000.dat > results/increment_iterative_binary_search_1000000
	# ./build/increment_iterative_exponential_search data/1000000.dat > results/increment_iterative_exponential_search_1000000
	# ./build/increment_recursive_linear_search data/1000000.dat > results/increment_recursive_linear_search_1000000
	# ./build/increment_recursive_binary_search data/1000000.dat > results/increment_recursive_binary_search_1000000
	# ./build/increment_recursive_exponential_search data/1000000.dat > results/increment_recursive_exponential_search_1000000
}
