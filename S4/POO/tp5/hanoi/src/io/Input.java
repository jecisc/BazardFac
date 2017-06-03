/**
 * Input.java
 *
 *
 * @author <a href="mailto:routier@lifl.fr">Jean-Christophe Routier</a>
 * @version
 */
package io ;

public class Input {

    public static String readString() throws java.io.IOException {
    	return new java.io.BufferedReader(new java.io.InputStreamReader(System.in)).readLine();
    }

    public static int readInt() throws java.io.IOException {
    	int n;
    	try {
    		n=Integer.parseInt(readString());
    	} catch(NumberFormatException e) {
    		throw new java.io.IOException();
    	}
    	return n;
    }

}// Input
