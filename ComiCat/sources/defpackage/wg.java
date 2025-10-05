package defpackage;

/* renamed from: wg  reason: default package */
/* compiled from: VMStandardFilters */
public enum wg {
    VMSF_NONE(0),
    VMSF_E8(1),
    VMSF_E8E9(2),
    VMSF_ITANIUM(3),
    VMSF_RGB(4),
    VMSF_AUDIO(5),
    VMSF_DELTA(6),
    VMSF_UPCASE(7);
    
    int i;

    private wg(int i2) {
        this.i = i2;
    }

    public static wg a(int i2) {
        if (VMSF_NONE.b(i2)) {
            return VMSF_NONE;
        }
        if (VMSF_E8.b(i2)) {
            return VMSF_E8;
        }
        if (VMSF_E8E9.b(i2)) {
            return VMSF_E8E9;
        }
        if (VMSF_ITANIUM.b(i2)) {
            return VMSF_ITANIUM;
        }
        if (VMSF_RGB.b(i2)) {
            return VMSF_RGB;
        }
        if (VMSF_AUDIO.b(i2)) {
            return VMSF_AUDIO;
        }
        if (VMSF_DELTA.b(i2)) {
            return VMSF_DELTA;
        }
        return null;
    }

    private boolean b(int i2) {
        return this.i == i2;
    }
}
