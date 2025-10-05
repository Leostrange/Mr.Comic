package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import java.util.Locale;

public abstract class BoxRequestItem<E extends BoxJsonObject, R extends BoxRequest<E, R>> extends BoxRequest<E, R> {
    protected static String QUERY_FIELDS = "fields";
    protected String mId = null;

    protected BoxRequestItem(BoxRequestItem boxRequestItem) {
        super(boxRequestItem);
    }

    public BoxRequestItem(Class<E> cls, String str, String str2, BoxSession boxSession) {
        super(cls, str2, boxSession);
        this.mContentType = BoxRequest.ContentTypes.JSON;
        this.mId = str;
    }

    public String getId() {
        return this.mId;
    }

    /* access modifiers changed from: protected */
    public void onSendCompleted(BoxResponse<E> boxResponse) {
        super.onSendCompleted(boxResponse);
        super.handleUpdateCache(boxResponse);
    }

    public R setFields(String... strArr) {
        if (strArr.length == 1 && strArr[0] == null) {
            this.mQueryMap.remove(QUERY_FIELDS);
        } else if (strArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(strArr[0]);
            for (int i = 1; i < strArr.length; i++) {
                sb.append(String.format(Locale.ENGLISH, ",%s", new Object[]{strArr[i]}));
            }
            this.mQueryMap.put(QUERY_FIELDS, sb.toString());
        }
        return this;
    }
}
