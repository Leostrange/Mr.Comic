package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;

public class AuthorizationCode extends fy implements Parcelable {
    public static final String[] e = {"Id", "Code", "AppId", "AuthorizationTokenId"};
    private static final String f = AuthorizationCode.class.getName();
    public String b;
    public String c;
    public long d;

    public enum a {
        ROW_ID(0),
        CODE(1),
        APP_FAMILY_ID(2),
        AUTHORIZATION_TOKEN_ID(3);
        
        public final int e;

        private a(int i) {
            this.e = i;
        }
    }

    public AuthorizationCode() {
    }

    private AuthorizationCode(long j, String str, String str2, long j2) {
        this(str, str2, j2);
        this.a = j;
    }

    private AuthorizationCode(String str, String str2, long j) {
        this.b = str;
        this.c = str2;
        this.d = j;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(e[a.CODE.e], this.b);
        contentValues.put(e[a.APP_FAMILY_ID.e], this.c);
        contentValues.put(e[a.AUTHORIZATION_TOKEN_ID.e], Long.valueOf(this.d));
        return contentValues;
    }

    public final /* synthetic */ gc c(Context context) {
        return ge.a(context);
    }

    public /* synthetic */ Object clone() {
        return new AuthorizationCode(this.a, this.b, this.c, this.d);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationCode)) {
            return false;
        }
        try {
            AuthorizationCode authorizationCode = (AuthorizationCode) obj;
            return this.b.equals(authorizationCode.b) && this.c.equals(authorizationCode.c) && this.d == authorizationCode.d;
        } catch (NullPointerException e2) {
            gz.b(f, e2.toString());
            return false;
        }
    }

    public String toString() {
        return "{ rowId=" + this.a + ", code=" + this.b + ", appId=" + this.c + ", tokenId=" + this.d + " }";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
    }
}
