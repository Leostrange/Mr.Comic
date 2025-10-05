package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import com.eclipsesource.json.JsonObject;

abstract class BoxRequestCommentAdd<E extends BoxComment, R extends BoxRequest<E, R>> extends BoxRequestItem<E, R> {
    public BoxRequestCommentAdd(Class<E> cls, String str, BoxSession boxSession) {
        super(cls, (String) null, str, boxSession);
        this.mRequestMethod = BoxRequest.Methods.POST;
    }

    public String getItemId() {
        if (this.mBodyMap.containsKey("item")) {
            return (String) this.mBodyMap.get(BoxEntity.FIELD_ID);
        }
        return null;
    }

    public String getItemType() {
        if (this.mBodyMap.containsKey("item")) {
            return (String) this.mBodyMap.get("type");
        }
        return null;
    }

    public String getMessage() {
        return (String) this.mBodyMap.get("message");
    }

    /* access modifiers changed from: protected */
    public R setItemId(String str) {
        JsonObject jsonObject = new JsonObject();
        if (this.mBodyMap.containsKey("item")) {
            jsonObject = ((BoxEntity) this.mBodyMap.get("item")).toJsonObject();
        }
        jsonObject.add(BoxEntity.FIELD_ID, str);
        this.mBodyMap.put("item", new BoxEntity(jsonObject));
        return this;
    }

    /* access modifiers changed from: protected */
    public R setItemType(String str) {
        JsonObject jsonObject = new JsonObject();
        if (this.mBodyMap.containsKey("item")) {
            jsonObject = ((BoxEntity) this.mBodyMap.get("item")).toJsonObject();
        }
        jsonObject.add("type", str);
        this.mBodyMap.put("item", new BoxEntity(jsonObject));
        return this;
    }

    public R setMessage(String str) {
        this.mBodyMap.put("message", str);
        return this;
    }

    public R setTaggedMessage(String str) {
        this.mBodyMap.put(BoxComment.FIELD_TAGGED_MESSAGE, str);
        return this;
    }
}
