package defpackage;

import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: aed  reason: default package */
/* compiled from: SMBException */
public final class aed extends Exception {
    public aed() {
        super(ComicReaderApp.a().getString(R.string.smbFailed));
    }
}
