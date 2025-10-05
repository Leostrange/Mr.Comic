package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;

public class RequestedScope extends fy implements Parcelable {
    public static final Parcelable.Creator<RequestedScope> CREATOR = new Parcelable.Creator<RequestedScope>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RequestedScope(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestedScope[i];
        }
    };
    public static final String[] b = {"rowid", "Scope", "AppId", "DirectedId", "AtzAccessTokenId", "AtzRefreshTokenId"};
    private static final String h = RequestedScope.class.getName();
    public String c;
    public String d;
    public String e;
    public long f;
    public long g;

    public enum a {
        ROW_ID(0),
        SCOPE(1),
        APP_FAMILY_ID(2),
        DIRECTED_ID(3),
        AUTHORIZATION_ACCESS_TOKEN_ID(4),
        AUTHORIZATION_REFRESH_TOKEN_ID(5);
        
        public final int g;

        private a(int i) {
            this.g = i;
        }
    }

    public enum b {
        UNKNOWN(-2),
        REJECTED(-1),
        GRANTED_LOCALLY(0);
        
        public final long d;

        private b(long j) {
            this.d = j;
        }
    }

    public RequestedScope() {
        this.f = b.REJECTED.d;
        this.g = b.REJECTED.d;
    }

    private RequestedScope(long j, String str, String str2, String str3, long j2, long j3) {
        this(str, str2, str3, j2, j3);
        this.a = j;
    }

    public RequestedScope(Parcel parcel) {
        this.f = b.REJECTED.d;
        this.g = b.REJECTED.d;
        this.a = parcel.readLong();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readLong();
        this.g = parcel.readLong();
    }

    public RequestedScope(String str, String str2, String str3) {
        this.f = b.REJECTED.d;
        this.g = b.REJECTED.d;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    private RequestedScope(String str, String str2, String str3, long j, long j2) {
        this(str, str2, str3);
        this.f = j;
        this.g = j2;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(b[a.SCOPE.g], this.c);
        contentValues.put(b[a.APP_FAMILY_ID.g], this.d);
        contentValues.put(b[a.DIRECTED_ID.g], this.e);
        contentValues.put(b[a.AUTHORIZATION_ACCESS_TOKEN_ID.g], Long.valueOf(this.f));
        contentValues.put(b[a.AUTHORIZATION_REFRESH_TOKEN_ID.g], Long.valueOf(this.g));
        return contentValues;
    }

    public final /* synthetic */ gc c(Context context) {
        return gh.a(context);
    }

    public /* synthetic */ Object clone() {
        return new RequestedScope(this.a, this.c, this.d, this.e, this.f, this.g);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RequestedScope)) {
            return false;
        }
        try {
            RequestedScope requestedScope = (RequestedScope) obj;
            return this.c.equals(requestedScope.c) && this.d.equals(requestedScope.d) && this.e.equals(requestedScope.e) && this.f == requestedScope.f && this.g == requestedScope.g;
        } catch (NullPointerException e2) {
            gz.b(h, e2.toString());
            return false;
        }
    }

    public String toString() {
        return "{ rowid=" + this.a + ", scope=" + this.c + ", appFamilyId=" + this.d + ", directedId=<obscured>, atzAccessTokenId=" + this.f + ", atzRefreshTokenId=" + this.g + " }";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeLong(this.f);
        parcel.writeLong(this.g);
    }
}
