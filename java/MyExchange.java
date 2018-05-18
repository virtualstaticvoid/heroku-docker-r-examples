//
// This Java program creates a number of variables which will
// then be sent to R to be manipulated.
//
// Example from https://scottdhoover.wordpress.com/2013/03/05/a-basic-rjava-example/
//
public class MyExchange {

    public String getString() {
        return "Testing";
    }

    public String[] getStringArray() {
        return new String[] {"This is just a test...", "string array."};
    }

    public double getdouble() {
        return 10.2;
    }

    public double[] getdoubleArray() {
        return new double[]{0.001, 20.238};
    }

    public double[][] getdoubleMatrix() {
        double[][] doubleMatrix = new double[][]{{1.1,2.2,3.3},{4.4,5.5,6.6}};
        return doubleMatrix;
    }

    public int getInt() {
        return 11;
    }

    public int[] getIntArray() {
        return new int[] {1,2,3,4,5,6};
    }

    public int[][] getIntMatrix() {
        int[][] intMatrix = new int[][]{{1,2,3},{4,5,6}};
        return intMatrix;
    }

    public boolean getboolean() {
        return true;
    }

    public boolean[] getbooleanArray() {
        return new boolean[]{true, true, false, false, true};
    }

    public boolean[][] getbooleanMatrix() {
        boolean[][] booleanMatrix = new boolean[][]{{true, true, false},{false, true, true}};
        return booleanMatrix;
    }

    public static void main(String[] args) {

    }
}
