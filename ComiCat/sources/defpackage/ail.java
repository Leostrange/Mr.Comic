package defpackage;

/* renamed from: ail  reason: default package */
/* compiled from: JsonToken */
public enum ail {
    NOT_AVAILABLE((String) null),
    START_OBJECT("{"),
    END_OBJECT("}"),
    START_ARRAY("["),
    END_ARRAY("]"),
    FIELD_NAME((String) null),
    VALUE_EMBEDDED_OBJECT((String) null),
    VALUE_STRING((String) null),
    VALUE_NUMBER_INT((String) null),
    VALUE_NUMBER_FLOAT((String) null),
    VALUE_TRUE("true"),
    VALUE_FALSE("false"),
    VALUE_NULL("null");
    
    public final String n;
    final char[] o;
    final byte[] p;

    private ail(String str) {
        if (str == null) {
            this.n = null;
            this.o = null;
            this.p = null;
            return;
        }
        this.n = str;
        this.o = str.toCharArray();
        int length = this.o.length;
        this.p = new byte[length];
        for (int i = 0; i < length; i++) {
            this.p[i] = (byte) this.o[i];
        }
    }
}
