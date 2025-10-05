package defpackage;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.ji;
import java.util.Arrays;

/* renamed from: iu  reason: default package */
/* compiled from: DownloadError */
public final class iu {
    public static final iu a = new iu(b.OTHER, (ji) null);
    final b b;
    /* access modifiers changed from: private */
    public final ji c;

    /* renamed from: iu$a */
    /* compiled from: DownloadError */
    static class a extends ih<iu> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            String b;
            boolean z;
            iu iuVar;
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
                iuVar = iu.a(ji.a.h(jsonParser));
            } else {
                iuVar = iu.a;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return iuVar;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            iu iuVar;
            switch (((iu) obj).b) {
                case PATH:
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField(".tag", BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
                    jsonGenerator.writeFieldName(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
                    ji.a aVar = ji.a.a;
                    ji.a.a(iuVar.c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: iu$b */
    /* compiled from: DownloadError */
    public enum b {
        PATH,
        OTHER
    }

    private iu(b bVar, ji jiVar) {
        this.b = bVar;
        this.c = jiVar;
    }

    public static iu a(ji jiVar) {
        if (jiVar != null) {
            return new iu(b.PATH, jiVar);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof iu)) {
            return false;
        }
        iu iuVar = (iu) obj;
        if (this.b != iuVar.b) {
            return false;
        }
        switch (this.b) {
            case PATH:
                return this.c == iuVar.c || this.c.equals(iuVar.c);
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
