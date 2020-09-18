import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import make_interp_spline, BSpline

def read_data(filename):
	data = np.genfromtxt(filename, delimiter=',')
	return data

def plot(name, title, programs, references=dict(), 
		 x_label='n', y_label='Tiempo [us]', 
		 x_scale='linear', y_scale='linear', 
		 samples=None, interp=1, 
		 x_lim=None, y_lim=None):
	path = 'results/'

	fig, ax = plt.subplots()
	fig.suptitle(title)
	for program in programs:
		print(program)
		data = read_data(path+program)

		# x = np.linspace(data.min(), data.max(), 1000)
		# spline = make_interp_spline(data, t, k=interp)
		# y = spline(x)
		ax.plot(data*1000, label=programs[program])

	for l, f in references.items():
		x = len(data)
		ax.plot(f(np.arange(1, x)), label=l)


	ax.set_xlabel(x_label)
	ax.set_ylabel(y_label)
	if x_lim:
		ax.set_xlim(x_lim)
	if y_lim:
		ax.set_ylim(y_lim)
	ax.set_xscale(x_scale)
	ax.set_yscale(y_scale)

	ticks = 6
	ax.set_xticks([0]+[len(data)*t//5 for t in range(ticks)])
	ax.set_xticklabels([0]+[len(data)*100*t//5 for t in range(ticks)])

	plt.legend(loc="best")
	plt.savefig(name, bbox_inches='tight', transparent=True, dpi=300)
	plt.show()


# def bar_plot(name, title, programs, x_label='n', y_label='Tiempo [ms]'):
# 	path = 'results/'

# 	fig, ax = plt.subplots()
# 	# fig.suptitle(title)
# 	width = 1000
# 	i = 0
# 	for program in programs:
# 		n, t = read_data(path+program)
# 		ax.bar(n+i, t, width, label=programs[program])
# 		i += 500
# 	ax.set_xlabel(x_label)
# 	ax.set_ylabel(y_label)

# 	plt.legend(loc="upper left")
# 	plt.savefig(name, bbox_inches='tight', transparent=True, dpi=300)


# def hist(name, title, programs, x_label='n', y_label='Tiempo [ms]'):
# 	path = 'results/'

# 	fig, ax = plt.subplots()
# 	# fig.suptitle(title)
# 	width = 1000
# 	i = 0
# 	for program in programs:
# 		n, t = read_data(path+program)
# 		ax.bar(n+i, t, width, label=programs[program])
# 		i += 500
# 	ax.set_xlabel(x_label)
# 	ax.set_ylabel(y_label)

# 	plt.legend(loc="upper left")
# 	plt.savefig(name, bbox_inches='tight', transparent=True, dpi=300)


if __name__ == '__main__':
	# plot('insertion_time', 
	# 	 'insertion_time', 
	# 	 {'insertion_time': 'inserción'},
	# 	 # references= { 'log4(x)' : (lambda x: 0.5*np.log2((3*x+1)/4)) },
	# 	 interp=1,
	# 	 x_scale='linear')

	# plot('busqueda_aleatoria', 
	# 	 'Busqueda aleatoria', 
	# 	 {
	# 	 	'shuffle_iterative_linear_search_100': 'Lineal',
	# 	 	'shuffle_iterative_binary_search_100': 'Binaria',
	# 	 	'shuffle_iterative_exponential_search_100': 'Doblada',
	# 	 },
	# 	)

	# plot('busqueda_aleatoria2', 
	# 	 'Busqueda aleatoria', 
	# 	 {
	# 	 	'shuffle_iterative_binary_search_1000000': 'Binaria',
	# 	 	'shuffle_iterative_exponential_search_1000000': 'Doblada',
	# 	 },
	# 	)

	# plot('busqueda_incremental_recursiva', 
	# 	 'Busqueda Incremental Recursiva', 
	# 	 {
	# 	 	'increment_recursive_linear_search_100': 'Lineal',
	# 	 	'increment_recursive_binary_search_100': 'Binaria',
	# 	 	'increment_recursive_exponential_search_100': 'Doblada',
	# 	 },
	# 	)

	# plot('busqueda_incremental_recursive', 
	# 	 'Busqueda Incremental Recursiva', 
	# 	 {
	# 	 	'increment_recursive_binary_search_10000': 'Binaria',
	# 	 	'increment_recursive_exponential_search_10000': 'Doblada',
	# 	 },
	# 	)

	# plot('busqueda_incremental_iterative', 
	# 	 'Busqueda Incremental Iterativa', 
	# 	 {
	# 	 	'increment_iterative_binary_search_10000': 'Binaria',
	# 	 	'increment_iterative_exponential_search_10000': 'Doblada',
	# 	 },
	# 	)

	plot('binary_recursive_vs_iterative', 
		 'Busqueda Binaria', 
		 {
		 	'increment_iterative_binary_search_10000': 'Iterativa',
		 	'increment_recursive_binary_search_10000': 'Recursiva',
		 },
		)

	# plot('exponential_recursive_vs_iterative', 
	# 	 'Busqueda Doblada', 
	# 	 {
	# 	 	'increment_iterative_exponential_search_10000': 'Iterativa',
	# 	 	'increment_recursive_exponential_search_10000': 'Recursiva',
	# 	 },
	# 	)


