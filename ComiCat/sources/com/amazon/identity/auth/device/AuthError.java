package com.amazon.identity.auth.device;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public class AuthError extends Exception implements Parcelable {
    public static final Parcelable.Creator<AuthError> CREATOR = new Parcelable.Creator<AuthError>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new AuthError(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new AuthError[i];
        }
    };
    private static final String a = AuthError.class.getName();
    private final b b;

    public enum a {
        ACTION,
        BAD_REQUEST,
        NETWORK,
        INTERNAL,
        UNKNOWN
    }

    public enum b {
        ERROR_INVALID_TOKEN(a.ACTION),
        ERROR_INVALID_GRANT(a.ACTION),
        ERROR_INVALID_CLIENT(a.ACTION),
        ERROR_INVALID_SCOPE(a.ACTION),
        ERROR_UNAUTHORIZED_CLIENT(a.ACTION),
        ERROR_WEBVIEW_SSL(a.ACTION),
        ERROR_ACCESS_DENIED(a.ACTION),
        ERROR_COM(a.NETWORK),
        ERROR_IO(a.NETWORK),
        ERROR_UNKNOWN(a.UNKNOWN),
        ERROR_BAD_PARAM(a.INTERNAL),
        ERROR_JSON(a.INTERNAL),
        ERROR_PARSE(a.INTERNAL),
        ERROR_SERVER_REPSONSE(a.INTERNAL),
        ERROR_DATA_STORAGE(a.INTERNAL),
        ERROR_THREAD(a.INTERNAL),
        ERROR_DCP_DMS(a.ACTION),
        ERROR_FORCE_UPDATE(a.ACTION),
        ERROR_REVOKE_AUTH(a.INTERNAL),
        ERROR_AUTH_DIALOG(a.INTERNAL),
        ERROR_BAD_API_PARAM(a.BAD_REQUEST),
        ERROR_INIT(a.BAD_REQUEST),
        ERROR_RESOURCES(a.BAD_REQUEST),
        ERROR_DIRECTED_ID_NOT_FOUND(a.BAD_REQUEST),
        ERROR_INVALID_API(a.BAD_REQUEST),
        ERROR_SECURITY(a.BAD_REQUEST);
        
        final a A;

        private b(a aVar) {
            this.A = aVar;
        }
    }

    public AuthError(Parcel parcel) {
        this(parcel.readString(), (Throwable) parcel.readValue(Throwable.class.getClassLoader()), (b) parcel.readSerializable());
    }

    public AuthError(String str, b bVar) {
        super(str);
        this.b = bVar;
    }

    public AuthError(String str, Throwable th, b bVar) {
        super(str, th);
        this.b = bVar;
    }

    public static Bundle a(AuthError authError) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("AUTH_ERROR_EXECEPTION", authError);
        return bundle;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "AuthError cat= " + this.b.A + " type=" + this.b + " - " + super.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getMessage());
        if (getCause() != null) {
            parcel.writeValue(getCause());
        } else {
            parcel.writeValue((Object) null);
        }
        parcel.writeSerializable(this.b);
    }
}
