# examples adapted from https://rpy2.readthedocs.io/en/version_2.8.x/introduction.html#getting-started

import rpy2
import rpy2.robjects as robjects

# eval pi
print(robjects.r['pi'])

# get sum function, and call it
rsum = robjects.r['sum']
print(rsum(robjects.IntVector([1,2,3])))

# define function "f"
robjects.r('''

  f <- function(r) {
      cat("inside function\n")
      2 * pi * r
  }

	''')

# get f and call
f = robjects.globalenv['f']
print(f(3.9876))
