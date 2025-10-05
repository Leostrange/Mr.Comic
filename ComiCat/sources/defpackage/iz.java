package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: iz  reason: default package */
/* compiled from: FolderSharingInfo */
public final class iz extends jo {
    protected final String a;
    protected final String b;
    protected final boolean c;
    protected final boolean d;

    /* renamed from: iz$a */
    /* compiled from: FolderSharingInfo */
    static class a extends ig<iz> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            iz izVar = (iz) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("read_only");
            Cif.a.a.a(Boolean.valueOf(izVar.e), jsonGenerator);
            if (izVar.a != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                Cif.a(Cif.g.a).a(izVar.a, jsonGenerator);
            }
            if (izVar.b != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                Cif.a(Cif.g.a).a(izVar.b, jsonGenerator);
            }
            jsonGenerator.writeFieldName("traverse_only");
            Cif.a.a.a(Boolean.valueOf(izVar.c), jsonGenerator);
            jsonGenerator.writeFieldName("no_access");
            Cif.a.a.a(Boolean.valueOf(izVar.d), jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            String str = null;
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Boolean bool = false;
                Boolean bool2 = false;
                String str2 = null;
                Boolean bool3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("read_only".equals(currentName)) {
                        bool3 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str2 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("shared_folder_id".equals(currentName)) {
                        str = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("traverse_only".equals(currentName)) {
                        bool2 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("no_access".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (bool3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
                }
                iz izVar = new iz(bool3.booleanValue(), str2, str, bool2.booleanValue(), bool.booleanValue());
                e(jsonParser);
                return izVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
        }
    }

    public iz(boolean z, String str, String str2, boolean z2, boolean z3) {
        super(z);
        if (str == null || Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            this.a = str;
            if (str2 == null || Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                this.b = str2;
                this.c = z2;
                this.d = z3;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        iz izVar = (iz) obj;
        return this.e == izVar.e && (this.a == izVar.a || (this.a != null && this.a.equals(izVar.a))) && ((this.b == izVar.b || (this.b != null && this.b.equals(izVar.b))) && this.c == izVar.c && this.d == izVar.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, Boolean.valueOf(this.c), Boolean.valueOf(this.d)}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
