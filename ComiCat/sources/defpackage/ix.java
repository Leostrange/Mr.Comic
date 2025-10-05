package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: ix  reason: default package */
/* compiled from: FileSharingInfo */
public final class ix extends jo {
    protected final String a;
    protected final String b;

    /* renamed from: ix$a */
    /* compiled from: FileSharingInfo */
    static class a extends ig<ix> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            ix ixVar = (ix) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("read_only");
            Cif.a.a.a(Boolean.valueOf(ixVar.e), jsonGenerator);
            jsonGenerator.writeFieldName("parent_shared_folder_id");
            Cif.g.a.a(ixVar.a, jsonGenerator);
            if (ixVar.b != null) {
                jsonGenerator.writeFieldName("modified_by");
                Cif.a(Cif.g.a).a(ixVar.b, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                String str = null;
                String str2 = null;
                Boolean bool = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("read_only".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("modified_by".equals(currentName)) {
                        str = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
                } else if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"parent_shared_folder_id\" missing.");
                } else {
                    ix ixVar = new ix(bool.booleanValue(), str2, str);
                    e(jsonParser);
                    return ixVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public ix(boolean z, String str, String str2) {
        super(z);
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
        } else if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        } else {
            this.a = str;
            if (str2 != null) {
                if (str2.length() < 40) {
                    throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
                } else if (str2.length() > 40) {
                    throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
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
        ix ixVar = (ix) obj;
        if (this.e == ixVar.e && (this.a == ixVar.a || this.a.equals(ixVar.a))) {
            if (this.b == ixVar.b) {
                return true;
            }
            if (this.b != null && this.b.equals(ixVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
