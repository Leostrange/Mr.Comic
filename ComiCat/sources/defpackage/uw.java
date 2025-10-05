package defpackage;

/* renamed from: uw  reason: default package */
/* compiled from: UnrarHeadertype */
public enum uw {
    MainHeader((byte) 115),
    MarkHeader((byte) 114),
    FileHeader((byte) 116),
    CommHeader((byte) 117),
    AvHeader((byte) 118),
    SubHeader((byte) 119),
    ProtectHeader((byte) 120),
    SignHeader((byte) 121),
    NewSubHeader((byte) 122),
    EndArcHeader((byte) 123);
    
    byte k;

    private uw(byte b) {
        this.k = b;
    }

    public static uw a(byte b) {
        if (MarkHeader.b(b)) {
            return MarkHeader;
        }
        if (MainHeader.b(b)) {
            return MainHeader;
        }
        if (FileHeader.b(b)) {
            return FileHeader;
        }
        if (EndArcHeader.b(b)) {
            return EndArcHeader;
        }
        if (NewSubHeader.b(b)) {
            return NewSubHeader;
        }
        if (SubHeader.b(b)) {
            return SubHeader;
        }
        if (SignHeader.b(b)) {
            return SignHeader;
        }
        if (ProtectHeader.b(b)) {
            return ProtectHeader;
        }
        if (MarkHeader.b(b)) {
            return MarkHeader;
        }
        if (MainHeader.b(b)) {
            return MainHeader;
        }
        if (FileHeader.b(b)) {
            return FileHeader;
        }
        if (EndArcHeader.b(b)) {
            return EndArcHeader;
        }
        if (CommHeader.b(b)) {
            return CommHeader;
        }
        if (AvHeader.b(b)) {
            return AvHeader;
        }
        return null;
    }

    public final boolean b(byte b) {
        return this.k == b;
    }
}
