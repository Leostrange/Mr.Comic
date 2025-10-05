package com.eclipsesource.json;

public class ParseException extends RuntimeException {
    private final int column;
    private final int line;
    private final int offset;

    ParseException(String str, int i, int i2, int i3) {
        super(str + " at " + i2 + ":" + i3);
        this.offset = i;
        this.line = i2;
        this.column = i3;
    }

    public int getColumn() {
        return this.column;
    }

    public int getLine() {
        return this.line;
    }

    public int getOffset() {
        return this.offset;
    }
}
