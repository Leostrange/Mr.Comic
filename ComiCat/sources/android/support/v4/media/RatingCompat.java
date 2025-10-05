package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat(), (byte) 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RatingCompat[i];
        }
    };
    private final int a;
    private final float b;

    private RatingCompat(int i, float f) {
        this.a = i;
        this.b = f;
    }

    /* synthetic */ RatingCompat(int i, float f, byte b2) {
        this(i, f);
    }

    public final int describeContents() {
        return this.a;
    }

    public final String toString() {
        return "Rating:style=" + this.a + " rating=" + (this.b < 0.0f ? "unrated" : String.valueOf(this.b));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeFloat(this.b);
    }
}
