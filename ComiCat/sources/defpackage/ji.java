package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.jm;
import java.util.Arrays;

/* renamed from: ji  reason: default package */
/* compiled from: LookupError */
public final class ji {
    public static final ji a = new ji(b.NOT_FOUND, (String) null, (jm) null);
    public static final ji b = new ji(b.NOT_FILE, (String) null, (jm) null);
    public static final ji c = new ji(b.NOT_FOLDER, (String) null, (jm) null);
    public static final ji d = new ji(b.RESTRICTED_CONTENT, (String) null, (jm) null);
    public static final ji e = new ji(b.OTHER, (String) null, (jm) null);
    final b f;
    /* access modifiers changed from: private */
    public final String g;
    /* access modifiers changed from: private */
    public final jm h;

    /* renamed from: ji$a */
    /* compiled from: LookupError */
    public static class a extends ih<ji> {
        public static final a a = new a();

        public static void a(ji jiVar, JsonGenerator jsonGenerator) {
            switch (jiVar.f) {
                case MALFORMED_PATH:
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField(".tag", "malformed_path");
                    jsonGenerator.writeFieldName("malformed_path");
                    Cif.a(Cif.g.a).a(jiVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case NOT_FOUND:
                    jsonGenerator.writeString("not_found");
                    return;
                case NOT_FILE:
                    jsonGenerator.writeString("not_file");
                    return;
                case NOT_FOLDER:
                    jsonGenerator.writeString("not_folder");
                    return;
                case RESTRICTED_CONTENT:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case INVALID_PATH_ROOT:
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField(".tag", "invalid_path_root");
                    jm.a aVar = jm.a.a;
                    jm.a.a(jiVar.h, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        public static ji h(JsonParser jsonParser) {
            boolean z;
            String b;
            ji jiVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                String c = c(jsonParser);
                jsonParser.nextToken();
                b = c;
                z = true;
            } else {
                z = false;
                d(jsonParser);
                b = b(jsonParser);
            }
            if (b == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("malformed_path".equals(b)) {
                String str = null;
                if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    a("malformed_path", jsonParser);
                    str = (String) Cif.a(Cif.g.a).a(jsonParser);
                }
                jiVar = str == null ? ji.a() : ji.a(str);
            } else if ("not_found".equals(b)) {
                jiVar = ji.a;
            } else if ("not_file".equals(b)) {
                jiVar = ji.b;
            } else if ("not_folder".equals(b)) {
                jiVar = ji.c;
            } else if ("restricted_content".equals(b)) {
                jiVar = ji.d;
            } else if ("invalid_path_root".equals(b)) {
                jm.a aVar = jm.a.a;
                jiVar = ji.a(jm.a.a(jsonParser, true));
            } else {
                jiVar = ji.e;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return jiVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            return h(jsonParser);
        }

        public final /* bridge */ /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            a((ji) obj, jsonGenerator);
        }
    }

    /* renamed from: ji$b */
    /* compiled from: LookupError */
    public enum b {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        INVALID_PATH_ROOT,
        OTHER
    }

    private ji(b bVar, String str, jm jmVar) {
        this.f = bVar;
        this.g = str;
        this.h = jmVar;
    }

    public static ji a() {
        return a((String) null);
    }

    public static ji a(String str) {
        return new ji(b.MALFORMED_PATH, str, (jm) null);
    }

    public static ji a(jm jmVar) {
        if (jmVar != null) {
            return new ji(b.INVALID_PATH_ROOT, (String) null, jmVar);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ji)) {
            return false;
        }
        ji jiVar = (ji) obj;
        if (this.f != jiVar.f) {
            return false;
        }
        switch (this.f) {
            case MALFORMED_PATH:
                if (this.g != jiVar.g) {
                    return this.g != null && this.g.equals(jiVar.g);
                }
                return true;
            case NOT_FOUND:
            case NOT_FILE:
            case NOT_FOLDER:
            case RESTRICTED_CONTENT:
            case OTHER:
                return true;
            case INVALID_PATH_ROOT:
                return this.h == jiVar.h || this.h.equals(jiVar.h);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f, this.g, this.h});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
