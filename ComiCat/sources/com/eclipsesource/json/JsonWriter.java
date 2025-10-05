package com.eclipsesource.json;

import com.eclipsesource.json.JsonObject;
import java.io.Writer;
import java.util.Iterator;
import org.apache.http.message.TokenParser;

class JsonWriter {
    private static final char[] BS_CHARS = {TokenParser.ESCAPE, TokenParser.ESCAPE};
    private static final int CONTROL_CHARACTERS_END = 31;
    private static final int CONTROL_CHARACTERS_START = 0;
    private static final char[] CR_CHARS = {TokenParser.ESCAPE, 'r'};
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] LF_CHARS = {TokenParser.ESCAPE, 'n'};
    private static final char[] QUOT_CHARS = {TokenParser.ESCAPE, TokenParser.DQUOTE};
    private static final char[] TAB_CHARS = {TokenParser.ESCAPE, 't'};
    private static final char[] UNICODE_2028_CHARS = {TokenParser.ESCAPE, 'u', '2', '0', '2', '8'};
    private static final char[] UNICODE_2029_CHARS = {TokenParser.ESCAPE, 'u', '2', '0', '2', '9'};
    protected final Writer writer;

    JsonWriter(Writer writer2) {
        this.writer = writer2;
    }

    private static char[] getReplacementChars(char c) {
        if (c == '\"') {
            return QUOT_CHARS;
        }
        if (c == '\\') {
            return BS_CHARS;
        }
        if (c == 10) {
            return LF_CHARS;
        }
        if (c == 13) {
            return CR_CHARS;
        }
        if (c == 9) {
            return TAB_CHARS;
        }
        if (c == 8232) {
            return UNICODE_2028_CHARS;
        }
        if (c == 8233) {
            return UNICODE_2029_CHARS;
        }
        if (c < 0 || c > 31) {
            return null;
        }
        char[] cArr = {TokenParser.ESCAPE, 'u', '0', '0', '0', '0'};
        cArr[4] = HEX_DIGITS[(c >> 4) & 15];
        cArr[5] = HEX_DIGITS[c & 15];
        return cArr;
    }

    /* access modifiers changed from: package-private */
    public void write(String str) {
        this.writer.write(str);
    }

    /* access modifiers changed from: protected */
    public void writeArray(JsonArray jsonArray) {
        writeBeginArray();
        boolean z = true;
        Iterator<JsonValue> it = jsonArray.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                JsonValue next = it.next();
                if (!z2) {
                    writeArrayValueSeparator();
                }
                next.write(this);
                z = false;
            } else {
                writeEndArray();
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void writeArrayValueSeparator() {
        this.writer.write(44);
    }

    /* access modifiers changed from: protected */
    public void writeBeginArray() {
        this.writer.write(91);
    }

    /* access modifiers changed from: protected */
    public void writeBeginObject() {
        this.writer.write(123);
    }

    /* access modifiers changed from: protected */
    public void writeEndArray() {
        this.writer.write(93);
    }

    /* access modifiers changed from: protected */
    public void writeEndObject() {
        this.writer.write(125);
    }

    /* access modifiers changed from: protected */
    public void writeNameValueSeparator() {
        this.writer.write(58);
    }

    /* access modifiers changed from: protected */
    public void writeObject(JsonObject jsonObject) {
        writeBeginObject();
        boolean z = true;
        Iterator<JsonObject.Member> it = jsonObject.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                JsonObject.Member next = it.next();
                if (!z2) {
                    writeObjectValueSeparator();
                }
                writeString(next.getName());
                writeNameValueSeparator();
                next.getValue().write(this);
                z = false;
            } else {
                writeEndObject();
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void writeObjectValueSeparator() {
        this.writer.write(44);
    }

    /* access modifiers changed from: package-private */
    public void writeString(String str) {
        int i = 0;
        this.writer.write(34);
        int length = str.length();
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        for (int i2 = 0; i2 < length; i2++) {
            char[] replacementChars = getReplacementChars(cArr[i2]);
            if (replacementChars != null) {
                this.writer.write(cArr, i, i2 - i);
                this.writer.write(replacementChars);
                i = i2 + 1;
            }
        }
        this.writer.write(cArr, i, length - i);
        this.writer.write(34);
    }
}
