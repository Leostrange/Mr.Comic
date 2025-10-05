package com.eclipsesource.json;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import java.io.Reader;
import java.io.StringReader;
import org.apache.http.message.TokenParser;

class JsonParser {
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int MIN_BUFFER_SIZE = 10;
    private final char[] buffer;
    private int bufferOffset;
    private StringBuilder captureBuffer;
    private int captureStart;
    private int current;
    private int fill;
    private int index;
    private int line;
    private int lineOffset;
    private final Reader reader;

    JsonParser(Reader reader2) {
        this(reader2, DEFAULT_BUFFER_SIZE);
    }

    JsonParser(Reader reader2, int i) {
        this.reader = reader2;
        this.buffer = new char[i];
        this.line = 1;
        this.captureStart = -1;
    }

    JsonParser(String str) {
        this(new StringReader(str), Math.max(10, Math.min(DEFAULT_BUFFER_SIZE, str.length())));
    }

    private String endCapture() {
        String str;
        int i = this.current == -1 ? this.index : this.index - 1;
        if (this.captureBuffer.length() > 0) {
            this.captureBuffer.append(this.buffer, this.captureStart, i - this.captureStart);
            str = this.captureBuffer.toString();
            this.captureBuffer.setLength(0);
        } else {
            str = new String(this.buffer, this.captureStart, i - this.captureStart);
        }
        this.captureStart = -1;
        return str;
    }

    private ParseException error(String str) {
        int i = this.bufferOffset + this.index;
        int i2 = i - this.lineOffset;
        if (!isEndOfText()) {
            i--;
        }
        return new ParseException(str, i, this.line, i2 - 1);
    }

    private ParseException expected(String str) {
        return isEndOfText() ? error("Unexpected end of input") : error("Expected " + str);
    }

    private boolean isDigit() {
        return this.current >= 48 && this.current <= 57;
    }

    private boolean isEndOfText() {
        return this.current == -1;
    }

    private boolean isHexDigit() {
        return (this.current >= 48 && this.current <= 57) || (this.current >= 97 && this.current <= 102) || (this.current >= 65 && this.current <= 70);
    }

    private boolean isWhiteSpace() {
        return this.current == 32 || this.current == 9 || this.current == 10 || this.current == 13;
    }

    private void pauseCapture() {
        this.captureBuffer.append(this.buffer, this.captureStart, (this.current == -1 ? this.index : this.index - 1) - this.captureStart);
        this.captureStart = -1;
    }

    private void read() {
        if (isEndOfText()) {
            throw error("Unexpected end of input");
        }
        if (this.index == this.fill) {
            if (this.captureStart != -1) {
                this.captureBuffer.append(this.buffer, this.captureStart, this.fill - this.captureStart);
                this.captureStart = 0;
            }
            this.bufferOffset += this.fill;
            this.fill = this.reader.read(this.buffer, 0, this.buffer.length);
            this.index = 0;
            if (this.fill == -1) {
                this.current = -1;
                return;
            }
        }
        if (this.current == 10) {
            this.line++;
            this.lineOffset = this.bufferOffset + this.index;
        }
        char[] cArr = this.buffer;
        int i = this.index;
        this.index = i + 1;
        this.current = cArr[i];
    }

    private JsonArray readArray() {
        read();
        JsonArray jsonArray = new JsonArray();
        skipWhiteSpace();
        if (!readChar(']')) {
            do {
                skipWhiteSpace();
                jsonArray.add(readValue());
                skipWhiteSpace();
            } while (readChar(','));
            if (!readChar(']')) {
                throw expected("',' or ']'");
            }
        }
        return jsonArray;
    }

    private boolean readChar(char c) {
        if (this.current != c) {
            return false;
        }
        read();
        return true;
    }

    private boolean readDigit() {
        if (!isDigit()) {
            return false;
        }
        read();
        return true;
    }

    private void readEscape() {
        read();
        switch (this.current) {
            case 34:
            case 47:
            case 92:
                this.captureBuffer.append((char) this.current);
                break;
            case 98:
                this.captureBuffer.append(8);
                break;
            case 102:
                this.captureBuffer.append(12);
                break;
            case 110:
                this.captureBuffer.append(10);
                break;
            case 114:
                this.captureBuffer.append(TokenParser.CR);
                break;
            case 116:
                this.captureBuffer.append(9);
                break;
            case 117:
                char[] cArr = new char[4];
                for (int i = 0; i < 4; i++) {
                    read();
                    if (!isHexDigit()) {
                        throw expected("hexadecimal digit");
                    }
                    cArr[i] = (char) this.current;
                }
                this.captureBuffer.append((char) Integer.parseInt(String.valueOf(cArr), 16));
                break;
            default:
                throw expected("valid escape sequence");
        }
        read();
    }

    private boolean readExponent() {
        if (!readChar('e') && !readChar('E')) {
            return false;
        }
        if (!readChar('+')) {
            readChar('-');
        }
        if (!readDigit()) {
            throw expected("digit");
        }
        do {
        } while (readDigit());
        return true;
    }

    private JsonValue readFalse() {
        read();
        readRequiredChar('a');
        readRequiredChar('l');
        readRequiredChar('s');
        readRequiredChar('e');
        return JsonValue.FALSE;
    }

    private boolean readFraction() {
        if (!readChar('.')) {
            return false;
        }
        if (!readDigit()) {
            throw expected("digit");
        }
        do {
        } while (readDigit());
        return true;
    }

    private String readName() {
        if (this.current == 34) {
            return readStringInternal();
        }
        throw expected("name");
    }

    private JsonValue readNull() {
        read();
        readRequiredChar('u');
        readRequiredChar('l');
        readRequiredChar('l');
        return JsonValue.NULL;
    }

    private JsonValue readNumber() {
        startCapture();
        readChar('-');
        int i = this.current;
        if (!readDigit()) {
            throw expected("digit");
        }
        if (i != 48) {
            do {
            } while (readDigit());
        }
        readFraction();
        readExponent();
        return new JsonNumber(endCapture());
    }

    private JsonObject readObject() {
        read();
        JsonObject jsonObject = new JsonObject();
        skipWhiteSpace();
        if (!readChar('}')) {
            do {
                skipWhiteSpace();
                String readName = readName();
                skipWhiteSpace();
                if (!readChar(':')) {
                    throw expected("':'");
                }
                skipWhiteSpace();
                jsonObject.add(readName, readValue());
                skipWhiteSpace();
            } while (readChar(','));
            if (!readChar('}')) {
                throw expected("',' or '}'");
            }
        }
        return jsonObject;
    }

    private void readRequiredChar(char c) {
        if (!readChar(c)) {
            throw expected("'" + c + "'");
        }
    }

    private JsonValue readString() {
        return new JsonString(readStringInternal());
    }

    private String readStringInternal() {
        read();
        startCapture();
        while (this.current != 34) {
            if (this.current == 92) {
                pauseCapture();
                readEscape();
                startCapture();
            } else if (this.current < 32) {
                throw expected("valid string character");
            } else {
                read();
            }
        }
        String endCapture = endCapture();
        read();
        return endCapture;
    }

    private JsonValue readTrue() {
        read();
        readRequiredChar('r');
        readRequiredChar('u');
        readRequiredChar('e');
        return JsonValue.TRUE;
    }

    private JsonValue readValue() {
        switch (this.current) {
            case 34:
                return readString();
            case 45:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                return readNumber();
            case 91:
                return readArray();
            case 102:
                return readFalse();
            case 110:
                return readNull();
            case 116:
                return readTrue();
            case 123:
                return readObject();
            default:
                throw expected(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.VALUE);
        }
    }

    private void skipWhiteSpace() {
        while (isWhiteSpace()) {
            read();
        }
    }

    private void startCapture() {
        if (this.captureBuffer == null) {
            this.captureBuffer = new StringBuilder();
        }
        this.captureStart = this.index - 1;
    }

    /* access modifiers changed from: package-private */
    public JsonValue parse() {
        read();
        skipWhiteSpace();
        JsonValue readValue = readValue();
        skipWhiteSpace();
        if (isEndOfText()) {
            return readValue;
        }
        throw error("Unexpected character");
    }
}
