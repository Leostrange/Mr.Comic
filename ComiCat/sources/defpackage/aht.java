package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: aht  reason: default package */
/* compiled from: FileFilterUtils */
public final class aht {
    private static final ahu a = a(a(ahr.a, a("CVS")));
    private static final ahu b = a(a(ahr.a, a(".svn")));

    public static ahu a(ahu ahu) {
        return new ahw(ahu);
    }

    private static ahu a(String str) {
        return new ahv(str);
    }

    public static ahu a(ahu... ahuArr) {
        return new ahq(c(ahuArr));
    }

    public static ahu b(ahu... ahuArr) {
        return new ahx(c(ahuArr));
    }

    private static List<ahu> c(ahu... ahuArr) {
        if (ahuArr == null) {
            throw new IllegalArgumentException("The filters must not be null");
        }
        ArrayList arrayList = new ArrayList(ahuArr.length);
        for (int i = 0; i < ahuArr.length; i++) {
            if (ahuArr[i] == null) {
                throw new IllegalArgumentException("The filter[" + i + "] is null");
            }
            arrayList.add(ahuArr[i]);
        }
        return arrayList;
    }
}
