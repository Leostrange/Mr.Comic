package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel, (byte) 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };
    private final int a;
    private final long b;
    private final long c;
    private final float d;
    private final long e;
    private final CharSequence f;
    private final long g;
    private List<CustomAction> h;
    private final long i;
    private final Bundle j;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new CustomAction(parcel, (byte) 0);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new CustomAction[i];
            }
        };
        private final String a;
        private final CharSequence b;
        private final int c;
        private final Bundle d;

        private CustomAction(Parcel parcel) {
            this.a = parcel.readString();
            this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.c = parcel.readInt();
            this.d = parcel.readBundle();
        }

        /* synthetic */ CustomAction(Parcel parcel, byte b2) {
            this(parcel);
        }

        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + this.b + ", mIcon=" + this.c + ", mExtras=" + this.d;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            TextUtils.writeToParcel(this.b, parcel, i);
            parcel.writeInt(this.c);
            parcel.writeBundle(this.d);
        }
    }

    private PlaybackStateCompat(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readLong();
        this.d = parcel.readFloat();
        this.g = parcel.readLong();
        this.c = parcel.readLong();
        this.e = parcel.readLong();
        this.f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.i = parcel.readLong();
        this.j = parcel.readBundle();
    }

    /* synthetic */ PlaybackStateCompat(Parcel parcel, byte b2) {
        this(parcel);
    }

    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.a);
        sb.append(", position=").append(this.b);
        sb.append(", buffered position=").append(this.c);
        sb.append(", speed=").append(this.d);
        sb.append(", updated=").append(this.g);
        sb.append(", actions=").append(this.e);
        sb.append(", error=").append(this.f);
        sb.append(", custom actions=").append(this.h);
        sb.append(", active item id=").append(this.i);
        sb.append("}");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeLong(this.b);
        parcel.writeFloat(this.d);
        parcel.writeLong(this.g);
        parcel.writeLong(this.c);
        parcel.writeLong(this.e);
        TextUtils.writeToParcel(this.f, parcel, i2);
        parcel.writeTypedList(this.h);
        parcel.writeLong(this.i);
        parcel.writeBundle(this.j);
    }
}
