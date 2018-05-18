#
# Example R program
#

# example from https://scottdhoover.wordpress.com/2013/03/05/a-basic-rjava-example/

library('rJava')

.jinit()
.jaddClassPath("/app")
.jclassPath()

myExchange <- .jnew("MyExchange")

# strings #
stringTest <- .jcall(myExchange, "S", "getString")
stringArrayTest <- .jcall(myExchange, "[S", "getStringArray")
stringTest; stringArrayTest

# doubles #
doubleTest <- .jcall(myExchange, "D", "getdouble")
doubleArrayTest <- .jcall(myExchange, "[D", "getdoubleArray")
doubleMatrixTest <- .jcall(myExchange, "[[D", "getdoubleMatrix", simplify=T)
doubleTest; doubleArrayTest; doubleMatrixTest

# integers #
intTest <- .jcall(myExchange, "I", "getInt")
intArrayTest <- .jcall(myExchange, "[I", "getIntArray")
intMatrixTest <- .jcall(myExchange, "[[I", "getIntMatrix", simplify=T)
intTest; intArrayTest; intMatrixTest

# boolean #
booleanTest <- .jcall(myExchange, "Z", "getboolean")
booleanArrayTest <- .jcall(myExchange, "[Z", "getbooleanArray")
booleanMatrixTest <- .jcall(myExchange, "[[Z", "getbooleanMatrix", simplify=T)
booleanTest; booleanArrayTest; booleanMatrixTest
