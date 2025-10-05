package defpackage;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: jb  reason: default package */
/* compiled from: ListFolderArg */
public final class jb {
    protected final String a;
    protected final boolean b;
    protected final boolean c;
    protected final boolean d;
    protected final boolean e;

    /* renamed from: jb$a */
    /* compiled from: ListFolderArg */
    static class a extends ig<jb> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jb jbVar = (jb) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
            Cif.g.a.a(jbVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("recursive");
            Cif.a.a.a(Boolean.valueOf(jbVar.b), jsonGenerator);
            jsonGenerator.writeFieldName("include_media_info");
            Cif.a.a.a(Boolean.valueOf(jbVar.c), jsonGenerator);
            jsonGenerator.writeFieldName("include_deleted");
            Cif.a.a.a(Boolean.valueOf(jbVar.d), jsonGenerator);
            jsonGenerator.writeFieldName("include_has_explicit_shared_members");
            Cif.a.a.a(Boolean.valueOf(jbVar.e), jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Boolean bool = false;
                String str = null;
                Boolean bool2 = null;
                Boolean bool3 = false;
                Boolean bool4 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if (BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH.equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else if ("recursive".equals(currentName)) {
                        bool4 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("include_media_info".equals(currentName)) {
                        bool3 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("include_deleted".equals(currentName)) {
                        bool2 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("include_has_explicit_shared_members".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
                }
                jb jbVar = new jb(str, bool4.booleanValue(), bool3.booleanValue(), bool2.booleanValue(), bool.booleanValue());
                e(jsonParser);
                return jbVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
        }
    }

    public jb(String str) {
        this(str, false, false, false, false);
    }

    public jb(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        } else if (!Pattern.matches("(/(.|[\\r\\n])*)?|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        } else {
            this.a = str;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.e = z4;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jb jbVar = (jb) obj;
        return (this.a == jbVar.a || this.a.equals(jbVar.a)) && this.b == jbVar.b && this.c == jbVar.c && this.d == jbVar.d && this.e == jbVar.e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.d), Boolean.valueOf(this.e)});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
