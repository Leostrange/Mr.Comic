package defpackage;

/* renamed from: ue  reason: default package */
/* compiled from: RarException */
public final class ue extends Exception {
    private a a;

    /* renamed from: ue$a */
    /* compiled from: RarException */
    public enum a {
        notImplementedYet,
        crcError,
        notRarArchive,
        badRarArchive,
        unkownError,
        headerNotInArchive,
        wrongHeaderType,
        ioError,
        rarEncryptedException
    }

    public ue(Exception exc) {
        super(a.unkownError.name(), exc);
        this.a = a.unkownError;
    }

    public ue(a aVar) {
        super(aVar.name());
        this.a = aVar;
    }
}
