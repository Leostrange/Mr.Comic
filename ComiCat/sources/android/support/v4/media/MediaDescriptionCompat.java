package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel, (byte) 0) : MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };
    private final String a;
    private final CharSequence b;
    private final CharSequence c;
    private final CharSequence d;
    private final Bitmap e;
    private final Uri f;
    private final Bundle g;
    private Object h;

    public static final class a {
        String a;
        CharSequence b;
        CharSequence c;
        CharSequence d;
        Bitmap e;
        Uri f;
        Bundle g;
    }

    private MediaDescriptionCompat(Parcel parcel) {
        this.a = parcel.readString();
        this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (Bitmap) parcel.readParcelable((ClassLoader) null);
        this.f = (Uri) parcel.readParcelable((ClassLoader) null);
        this.g = parcel.readBundle();
    }

    /* synthetic */ MediaDescriptionCompat(Parcel parcel, byte b2) {
        this(parcel);
    }

    private MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle) {
        this.a = str;
        this.b = charSequence;
        this.c = charSequence2;
        this.d = charSequence3;
        this.e = bitmap;
        this.f = uri;
        this.g = bundle;
    }

    private /* synthetic */ MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, byte b2) {
        this(str, charSequence, charSequence2, charSequence3, bitmap, uri, bundle);
    }

    public static MediaDescriptionCompat a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        a aVar = new a();
        aVar.a = ((MediaDescription) obj).getMediaId();
        aVar.b = ((MediaDescription) obj).getTitle();
        aVar.c = ((MediaDescription) obj).getSubtitle();
        aVar.d = ((MediaDescription) obj).getDescription();
        aVar.e = ((MediaDescription) obj).getIconBitmap();
        aVar.f = ((MediaDescription) obj).getIconUri();
        aVar.g = ((MediaDescription) obj).getExtras();
        MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e, aVar.f, aVar.g, (byte) 0);
        mediaDescriptionCompat.h = obj;
        return mediaDescriptionCompat;
    }

    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return this.b + ", " + this.c + ", " + this.d;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Object obj;
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.a);
            TextUtils.writeToParcel(this.b, parcel, i);
            TextUtils.writeToParcel(this.c, parcel, i);
            TextUtils.writeToParcel(this.d, parcel, i);
            parcel.writeParcelable(this.e, i);
            parcel.writeParcelable(this.f, i);
            parcel.writeBundle(this.g);
            return;
        }
        if (this.h != null || Build.VERSION.SDK_INT < 21) {
            obj = this.h;
        } else {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.a);
            builder.setTitle(this.b);
            builder.setSubtitle(this.c);
            builder.setDescription(this.d);
            builder.setIconBitmap(this.e);
            builder.setIconUri(this.f);
            builder.setExtras(this.g);
            this.h = builder.build();
            obj = this.h;
        }
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
