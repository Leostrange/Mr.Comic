package defpackage;

import com.box.androidsdk.content.BoxApiMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.jk;
import java.util.Arrays;

/* renamed from: jj  reason: default package */
/* compiled from: MediaInfo */
public final class jj {
    public static final jj a = new jj(b.PENDING, (jk) null);
    final b b;
    /* access modifiers changed from: private */
    public final jk c;

    /* renamed from: jj$a */
    /* compiled from: MediaInfo */
    static class a extends ih<jj> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            String b;
            boolean z;
            jj a2;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                String c = c(jsonParser);
                jsonParser.nextToken();
                b = c;
                z = true;
            } else {
                d(jsonParser);
                b = b(jsonParser);
                z = false;
            }
            if (b == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("pending".equals(b)) {
                a2 = jj.a;
            } else if (BoxApiMetadata.BOX_API_METADATA.equals(b)) {
                a(BoxApiMetadata.BOX_API_METADATA, jsonParser);
                a2 = jj.a((jk) jk.a.a.a(jsonParser));
            } else {
                throw new JsonParseException(jsonParser, "Unknown tag: " + b);
            }
            if (!z) {
                e(jsonParser);
            }
            return a2;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jj jjVar = (jj) obj;
            switch (jjVar.b) {
                case PENDING:
                    jsonGenerator.writeString("pending");
                    return;
                case METADATA:
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField(".tag", BoxApiMetadata.BOX_API_METADATA);
                    jsonGenerator.writeFieldName(BoxApiMetadata.BOX_API_METADATA);
                    jk.a.a.b(jjVar.c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + jjVar.b);
            }
        }
    }

    /* renamed from: jj$b */
    /* compiled from: MediaInfo */
    public enum b {
        PENDING,
        METADATA
    }

    private jj(b bVar, jk jkVar) {
        this.b = bVar;
        this.c = jkVar;
    }

    public static jj a(jk jkVar) {
        if (jkVar != null) {
            return new jj(b.METADATA, jkVar);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jj)) {
            return false;
        }
        jj jjVar = (jj) obj;
        if (this.b != jjVar.b) {
            return false;
        }
        switch (this.b) {
            case PENDING:
                return true;
            case METADATA:
                return this.c == jjVar.c || this.c.equals(jjVar.c);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
