package defpackage;

import defpackage.aif;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: nc  reason: default package */
/* compiled from: JacksonFactory */
public final class nc extends mv {
    private final aid a = new aid();

    public nc() {
        this.a.a(aif.a.AUTO_CLOSE_JSON_CONTENT);
    }

    static nb a(ail ail) {
        if (ail == null) {
            return null;
        }
        switch (ail) {
            case END_ARRAY:
                return nb.END_ARRAY;
            case START_ARRAY:
                return nb.START_ARRAY;
            case END_OBJECT:
                return nb.END_OBJECT;
            case START_OBJECT:
                return nb.START_OBJECT;
            case VALUE_FALSE:
                return nb.VALUE_FALSE;
            case VALUE_TRUE:
                return nb.VALUE_TRUE;
            case VALUE_NULL:
                return nb.VALUE_NULL;
            case VALUE_STRING:
                return nb.VALUE_STRING;
            case VALUE_NUMBER_FLOAT:
                return nb.VALUE_NUMBER_FLOAT;
            case VALUE_NUMBER_INT:
                return nb.VALUE_NUMBER_INT;
            case FIELD_NAME:
                return nb.FIELD_NAME;
            default:
                return nb.NOT_AVAILABLE;
        }
    }

    public final mw a(OutputStream outputStream) {
        return new nd(this, this.a.a(outputStream, aic.UTF8));
    }

    public final my a(InputStream inputStream) {
        ni.a(inputStream);
        return new ne(this, this.a.a(inputStream));
    }

    public final my a(String str) {
        ni.a(str);
        return new ne(this, this.a.a(str));
    }

    public final my b(InputStream inputStream) {
        ni.a(inputStream);
        return new ne(this, this.a.a(inputStream));
    }
}
