package defpackage;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.ji;
import java.util.Arrays;

/* renamed from: jf  reason: default package */
/* compiled from: ListFolderError */
public final class jf {
    public static final jf a = new jf(b.OTHER, (ji) null);
    final b b;
    /* access modifiers changed from: private */
    public final ji c;

    /* renamed from: jf$a */
    /* compiled from: ListFolderError */
    static class a extends ih<jf> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            String b;
            boolean z;
            jf jfVar;
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
            if (BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH.equals(b)) {
                a(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, jsonParser);
                ji.a aVar = ji.a.a;
                jfVar = jf.a(ji.a.h(jsonParser));
            } else {
                jfVar = jf.a;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return jfVar;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jf jfVar;
            switch (((jf) obj).b) {
                case PATH:
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField(".tag", BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
                    jsonGenerator.writeFieldName(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
                    ji.a aVar = ji.a.a;
                    ji.a.a(jfVar.c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: jf$b */
    /* compiled from: ListFolderError */
    public enum b {
        PATH,
        OTHER
    }

    private jf(b bVar, ji jiVar) {
        this.b = bVar;
        this.c = jiVar;
    }

    public static jf a(ji jiVar) {
        if (jiVar != null) {
            return new jf(b.PATH, jiVar);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jf)) {
            return false;
        }
        jf jfVar = (jf) obj;
        if (this.b != jfVar.b) {
            return false;
        }
        switch (this.b) {
            case PATH:
                return this.c == jfVar.c || this.c.equals(jfVar.c);
            case OTHER:
                return true;
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
