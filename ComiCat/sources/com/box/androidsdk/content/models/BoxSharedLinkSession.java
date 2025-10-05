package com.box.androidsdk.content.models;

import android.content.Context;

public class BoxSharedLinkSession extends BoxSession {
    String mPassword;
    String mSharedLink;

    public BoxSharedLinkSession(Context context) {
        super(context);
    }

    public BoxSharedLinkSession(Context context, String str) {
        super(context, str);
    }

    public BoxSharedLinkSession(Context context, String str, String str2, String str3, String str4) {
        super(context, str, str2, str3, str4);
    }

    public BoxSharedLinkSession(BoxSession boxSession) {
        super(boxSession);
        if (boxSession instanceof BoxSharedLinkSession) {
            BoxSharedLinkSession boxSharedLinkSession = (BoxSharedLinkSession) boxSession;
            setSharedLink(boxSharedLinkSession.getSharedLink());
            setPassword(boxSharedLinkSession.getPassword());
        }
    }

    public String getPassword() {
        return this.mPassword;
    }

    public String getSharedLink() {
        return this.mSharedLink;
    }

    public BoxSharedLinkSession setPassword(String str) {
        this.mPassword = str;
        return this;
    }

    public BoxSharedLinkSession setSharedLink(String str) {
        this.mSharedLink = str;
        return this;
    }
}
