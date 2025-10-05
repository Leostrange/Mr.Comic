package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: agy  reason: default package */
/* compiled from: SpecialFolderUtils */
public final class agy {
    public static List<aeq> a(List<aeq> list, int i) {
        ArrayList arrayList = new ArrayList();
        switch (i) {
            case -6:
                int a = (int) aei.a().d.a("last-synced-id", 0);
                for (aeq next : list) {
                    if (next.a > a) {
                        arrayList.add(next);
                    }
                }
                break;
            case -5:
                if (!agw.a()) {
                    for (aeq next2 : list) {
                        if (agw.a(next2)) {
                            arrayList.add(next2);
                        }
                    }
                    break;
                }
                break;
            case -4:
                for (aeq next3 : list) {
                    if (next3.a()) {
                        arrayList.add(next3);
                    }
                }
                break;
            case -3:
                for (aeq next4 : list) {
                    if (next4.h.c(2)) {
                        arrayList.add(next4);
                    }
                }
                break;
            case -2:
                for (aeq next5 : list) {
                    if (!next5.p()) {
                        arrayList.add(next5);
                    }
                }
                break;
        }
        return arrayList;
    }
}
