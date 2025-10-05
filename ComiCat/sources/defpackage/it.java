package defpackage;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: it  reason: default package */
/* compiled from: DownloadArg */
public final class it {
    protected final String a;
    protected final String b;

    /* renamed from: it$a */
    /* compiled from: DownloadArg */
    static class a extends ig<it> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            it itVar = (it) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
            Cif.g.a.a(itVar.a, jsonGenerator);
            if (itVar.b != null) {
                jsonGenerator.writeFieldName("rev");
                Cif.a(Cif.g.a).a(itVar.b, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                String str = null;
                String str2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if (BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH.equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("rev".equals(currentName)) {
                        str = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
                }
                it itVar = new it(str2, str);
                e(jsonParser);
                return itVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
        }
    }

    public it(String str) {
        this(str, (String) null);
    }

    public it(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        } else if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        } else {
            this.a = str;
            if (str2 != null) {
                if (str2.length() < 9) {
                    throw new IllegalArgumentException("String 'rev' is shorter than 9");
                } else if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'rev' does not match pattern");
                }
            }
            this.b = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        it itVar = (it) obj;
        if (this.a == itVar.a || this.a.equals(itVar.a)) {
            if (this.b == itVar.b) {
                return true;
            }
            if (this.b != null && this.b.equals(itVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
