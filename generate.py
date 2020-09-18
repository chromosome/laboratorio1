import numpy as np
import pandas as pd
import os


ranges = [100, 1_000, 10_000, 100_000, 1_000_000]

for r in ranges:
	directory = 'data'

	if not os.path.exists(directory):
		os.makedirs(directory)

	filename = directory+'/'+str(r)+'.dat'

	with open(filename, 'w') as f:
		for i in range(r):
			f.write(str(i)+'\n')
