/**
 *
 */
package net.shalien.goosegame;

import java.util.Scanner;

/**
 * @author shalien
 */
public final class Announcer {

    /**
     * Used only by the <code>ask()</code> method to listen the answer
     */
    private static final Scanner SCANNER = new Scanner(System.in);

    /**
     * Wrote the <code>text</code> parameters in the standard output
     *
     * @param text - the text to show
     */
    public static void announce(String text) {
        System.out.println(text);
    }

    /**
     * Display a question and wait for the answer
     *
     * @param question - The question to display
     * @return the answer typed by the user
     */
    public static String ask(String question) {
        System.out.println(question);
        return SCANNER.nextLine();
    }

    /**
     * Mostly use for exceptions or errors
     * <p/>
     * Wrote the <code>text</code> parameters in the standard output in red and
     * Uppercase letters
     *
     * @param text - the text to show
     */
    public static void scream(String text) {
        System.err.println(text.toUpperCase());
    }

}
