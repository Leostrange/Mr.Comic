package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator<MediaMetadataCompat>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel, (byte) 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    };
    private static final ab<String, Integer> a;
    private static final String[] b = {"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
    private static final String[] c = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
    private static final String[] d = {"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
    private final Bundle e;

    static {
        ab<String, Integer> abVar = new ab<>();
        a = abVar;
        abVar.put("android.media.metadata.TITLE", 1);
        a.put("android.media.metadata.ARTIST", 1);
        a.put("android.media.metadata.DURATION", 0);
        a.put("android.media.metadata.ALBUM", 1);
        a.put("android.media.metadata.AUTHOR", 1);
        a.put("android.media.metadata.WRITER", 1);
        a.put("android.media.metadata.COMPOSER", 1);
        a.put("android.media.metadata.COMPILATION", 1);
        a.put("android.media.metadata.DATE", 1);
        a.put("android.media.metadata.YEAR", 0);
        a.put("android.media.metadata.GENRE", 1);
        a.put("android.media.metadata.TRACK_NUMBER", 0);
        a.put("android.media.metadata.NUM_TRACKS", 0);
        a.put("android.media.metadata.DISC_NUMBER", 0);
        a.put("android.media.metadata.ALBUM_ARTIST", 1);
        a.put("android.media.metadata.ART", 2);
        a.put("android.media.metadata.ART_URI", 1);
        a.put("android.media.metadata.ALBUM_ART", 2);
        a.put("android.media.metadata.ALBUM_ART_URI", 1);
        a.put("android.media.metadata.USER_RATING", 3);
        a.put("android.media.metadata.RATING", 3);
        a.put("android.media.metadata.DISPLAY_TITLE", 1);
        a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        a.put("android.media.metadata.DISPLAY_ICON", 2);
        a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        a.put("android.media.metadata.MEDIA_ID", 1);
    }

    private MediaMetadataCompat(Parcel parcel) {
        this.e = parcel.readBundle();
    }

    /* synthetic */ MediaMetadataCompat(Parcel parcel, byte b2) {
        this(parcel);
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.e);
    }
}
