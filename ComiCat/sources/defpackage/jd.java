package defpackage;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.ji;
import java.util.Arrays;

/* renamed from: jd  reason: default package */
/* compiled from: ListFolderContinueError */
public final class jd {
    public static final jd a = new jd(b.RESET, (ji) null);
    public static final jd b = new jd(b.OTHER, (ji) null);
    final b c;
    /* access modifiers changed from: private */
    public final ji d;

    /* renamed from: jd$a */
    /* compiled from: ListFolderContinueError */
    static class a extends ih<jd> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            String b;
            boolean z;
            jd jdVar;
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
                jdVar = jd.a(ji.a.h(jsonParser));
            } else if ("reset".equals(b)) {
                jdVar = jd.a;
            } else {
                jdVar = jd.b;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return jdVar;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jd jdVar;
            switch (((jd) obj).c) {
                case PATH:
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField(".tag", BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
                    jsonGenerator.writeFieldName(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
                    ji.a aVar = ji.a.a;
                    ji.a.a(jdVar.d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case RESET:
                    jsonGenerator.writeString("reset");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: jd$b */
    /* compiled from: ListFolderContinueError */
    public enum b {
        PATH,
        RESET,
        OTHER
    }

    private jd(b bVar, ji jiVar) {
        this.c = bVar;
        this.d = jiVar;
    }

    public static jd a(ji jiVar) {
        if (jiVar != null) {
            return new jd(b.PATH, jiVar);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jd)) {
            return false;
        }
        jd jdVar = (jd) obj;
        if (this.c != jdVar.c) {
            return false;
        }
        switch (this.c) {
            case PATH:
                return this.d == jdVar.d || this.d.equals(jdVar.d);
            case RESET:
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.c, this.d});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
