package defpackage;

import android.text.TextUtils;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: sv  reason: default package */
/* compiled from: JsonResponseHandler */
enum sv implements ResponseHandler<JSONObject> {
    ;

    private sv(String str) {
    }

    private static JSONObject a(HttpResponse httpResponse) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null) {
            return null;
        }
        String entityUtils = EntityUtils.toString(entity);
        if (TextUtils.isEmpty(entityUtils)) {
            return new JSONObject();
        }
        try {
            return new JSONObject(entityUtils);
        } catch (JSONException e) {
            throw new IOException(e.getLocalizedMessage());
        }
    }
}
