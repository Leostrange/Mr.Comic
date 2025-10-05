package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

/* renamed from: ael  reason: default package */
/* compiled from: CatalogDataUtils */
public final class ael {
    private static aem a(String str, int i) {
        if (i == -1) {
            return aei.a().c.a(str);
        }
        for (aem next : b(i)) {
            if (next.j.equalsIgnoreCase(str)) {
                return next;
            }
        }
        return null;
    }

    public static String a(aeq aeq) {
        return aeq.d() ? aeq.e : aeq.d;
    }

    public static List<aeq> a(int i) {
        List<aeq> f = aei.a().b.f();
        ArrayList arrayList = new ArrayList();
        for (aeq next : f) {
            if (i == next.g) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static List<aem> a(aem aem) {
        return b(aei.a().c.e(), aem, true);
    }

    public static List<aeq> a(aem aem, boolean z) {
        List<aeq> f = aei.a().b.f();
        return aem.f() ? agy.a(f, aem.a) : a(f, aem, z);
    }

    public static List<aem> a(List<aem> list) {
        if (!agw.a()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (aem next : list) {
            if (!next.c()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static List<aeq> a(List<aeq> list, aem aem, boolean z) {
        ArrayList arrayList = new ArrayList();
        boolean d = aem.d();
        for (aeq next : list) {
            if (!d || next.g == aem.c) {
                String a = next.d() ? aem.j : aem.a();
                if (z ? a(next).startsWith(a) : a.equalsIgnoreCase(agv.c(a(next)))) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public static void a() {
        aei.a().c.d();
        aei.a().b.d();
    }

    public static void a(List<aeq> list, String str) {
        try {
            if ("prefSortByFilePath".equals(str)) {
                Collections.sort(list, new Comparator<aeq>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        return ael.a((aeq) obj).compareToIgnoreCase(ael.a((aeq) obj2));
                    }
                });
            } else if ("prefSortByFilePathEx".equals(str)) {
                Collections.sort(list, new Comparator<aeq>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        aeq aeq = (aeq) obj;
                        aeq aeq2 = (aeq) obj2;
                        int compareToIgnoreCase = agv.c(ael.a(aeq)).compareToIgnoreCase(agv.c(ael.a(aeq2)));
                        return compareToIgnoreCase == 0 ? agk.a(aeq.c, aeq2.c) : compareToIgnoreCase;
                    }
                });
            } else if ("prefSortByAddedFirst".equals(str)) {
                Collections.sort(list, new Comparator<aeq>() {
                    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                        return ((aeq) obj).a - ((aeq) obj2).a;
                    }
                });
            } else if ("prefSortByAddedLast".equals(str)) {
                Collections.sort(list, new Comparator<aeq>() {
                    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                        return ((aeq) obj2).a - ((aeq) obj).a;
                    }
                });
            } else if ("prefSortReverseAlphabetically".equals(str)) {
                Collections.sort(list, new Comparator<aeq>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        return agk.a(((aeq) obj2).c, ((aeq) obj).c);
                    }
                });
            } else {
                Collections.sort(list, new Comparator<aeq>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        return agk.a(((aeq) obj).c, ((aeq) obj2).c);
                    }
                });
            }
        } catch (Exception e) {
        }
    }

    public static void a(List<aft> list, List<aft> list2) {
        List<aeq> b = b(aei.a().b.f());
        List<aem> a = a(aei.a().c.e());
        if (b.size() > 0) {
            PriorityQueue priorityQueue = new PriorityQueue(b.size() + a.size(), new Comparator<aft>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    return (int) ((((aft) obj2).q() - ((aft) obj).q()) / 10000);
                }
            });
            priorityQueue.addAll(b);
            priorityQueue.addAll(a);
            while (true) {
                if ((list.size() < 5 || list2.size() < 5) && !priorityQueue.isEmpty()) {
                    aft aft = (aft) priorityQueue.poll();
                    new StringBuilder("Item is: ").append(aft.l()).append(", ").append(aft.q());
                    if (aft.q() == 0) {
                        return;
                    }
                    if (aft.o()) {
                        if (list.size() < 5) {
                            list.add(aft);
                        }
                    } else if (aft.p() && list2.size() < 5) {
                        list2.add(aft);
                    }
                } else {
                    return;
                }
            }
        }
    }

    public static aem b(aem aem) {
        String str = aem.j;
        if (str == null || str.length() == 0) {
            return null;
        }
        String c = agv.c(str);
        if (str.equalsIgnoreCase(c)) {
            return null;
        }
        return a(c, aem.d() ? aem.c : -1);
    }

    public static aem b(aeq aeq) {
        return a(agv.c(a(aeq)), aeq.d() ? aeq.g : -1);
    }

    public static List<aem> b(int i) {
        List<aem> e = aei.a().c.e();
        ArrayList arrayList = new ArrayList();
        for (aem next : e) {
            if (i == next.c) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static List<aeq> b(List<aeq> list) {
        if (!agw.a()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (aeq next : list) {
            if (!agw.a(next)) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static List<aem> b(List<aem> list, aem aem, boolean z) {
        ArrayList arrayList = new ArrayList();
        boolean d = aem.d();
        String a = agp.a(aem.a());
        for (aem next : list) {
            if ((next.a == -1 || next.a != aem.a) && next != aem) {
                if (!d || next.c == aem.c) {
                    if (z ? next.a().startsWith(a) : a.equalsIgnoreCase(agv.c(next.a()))) {
                        arrayList.add(next);
                    }
                }
            }
        }
        return arrayList;
    }

    public static void b() {
        a();
        agm.a(true);
    }

    public static void b(List<aem> list, String str) {
        try {
            if ("prefSortByAddedFirst".equals(str)) {
                Collections.sort(list, new Comparator<aem>() {
                    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                        return ((aem) obj).a - ((aem) obj2).a;
                    }
                });
            } else if ("prefSortByAddedLast".equals(str)) {
                Collections.sort(list, new Comparator<aem>() {
                    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                        return ((aem) obj2).a - ((aem) obj).a;
                    }
                });
            } else if ("prefSortAlphabetically".equals(str)) {
                Collections.sort(list, new Comparator<aem>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        return agk.a(((aem) obj).b, ((aem) obj2).b);
                    }
                });
            } else if ("prefSortReverseAlphabetically".equals(str)) {
                Collections.sort(list, new Comparator<aem>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        return agk.a(((aem) obj2).b, ((aem) obj).b);
                    }
                });
            } else if ("prefSortByFilePath".equals(str)) {
                Collections.sort(list, new Comparator<aem>() {
                    public final /* synthetic */ int compare(Object obj, Object obj2) {
                        return ((aem) obj).j.compareToIgnoreCase(((aem) obj2).j);
                    }
                });
            }
        } catch (Exception e) {
        }
    }

    public static ArrayList<aeq> c() {
        List<aeq> f = aei.a().b.f();
        ArrayList<aeq> arrayList = new ArrayList<>();
        for (aeq next : f) {
            if (next.h.c(1) && (!next.d() || next.h.c(16))) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static ArrayList<aeq> d() {
        List<aeq> f = aei.a().b.f();
        ArrayList<aeq> arrayList = new ArrayList<>();
        for (aeq next : f) {
            if (!next.d()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static ArrayList<aem> e() {
        List<aem> e = aei.a().c.e();
        ArrayList<aem> arrayList = new ArrayList<>();
        for (aem next : e) {
            if (!next.d()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static ArrayList<aeq> f() {
        List<aeq> f = aei.a().b.f();
        ArrayList<aeq> arrayList = new ArrayList<>();
        for (aeq next : f) {
            if (next.d() && next.g()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
