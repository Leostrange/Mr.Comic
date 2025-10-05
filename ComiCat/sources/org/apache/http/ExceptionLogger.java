package org.apache.http;

public interface ExceptionLogger {
    public static final ExceptionLogger NO_OP = new ExceptionLogger() {
        public final void log(Exception exc) {
        }
    };
    public static final ExceptionLogger STD_ERR = new ExceptionLogger() {
        public final void log(Exception exc) {
            exc.printStackTrace();
        }
    };

    void log(Exception exc);
}
