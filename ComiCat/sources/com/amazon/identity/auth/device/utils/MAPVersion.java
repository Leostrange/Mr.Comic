package com.amazon.identity.auth.device.utils;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public final class MAPVersion implements Parcelable {
    public static final Parcelable.Creator<MAPVersion> CREATOR = new Parcelable.Creator<MAPVersion>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new MAPVersion(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new MAPVersion[i];
        }
    };
    public static final MAPVersion a = new MAPVersion("0.0.0");
    private static final String b = MAPVersion.class.getName();
    private final int[] c;

    public MAPVersion(Parcel parcel) {
        this.c = new int[parcel.readInt()];
        parcel.readIntArray(this.c);
        gz.c(b, "MAPVersion Created from PARCEL: " + toString());
    }

    private MAPVersion(String str) {
        gz.c(b, "MAPVersion from String : " + str);
        String[] split = TextUtils.split(str, "\\.");
        this.c = new int[split.length];
        int i = 0;
        for (String parseInt : split) {
            try {
                this.c[i] = Integer.parseInt(parseInt);
            } catch (NumberFormatException e) {
                this.c[i] = 0;
            }
            i++;
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        int[] iArr = this.c;
        StringBuffer stringBuffer = new StringBuffer();
        for (int append : iArr) {
            stringBuffer.append(append);
            stringBuffer.append('.');
        }
        return stringBuffer.substring(0, stringBuffer.length() - 1);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        gz.c(b, "MAPVersion writing " + this.c.length + " ints to parcel");
        parcel.writeInt(this.c.length);
        parcel.writeIntArray(this.c);
    }
}
