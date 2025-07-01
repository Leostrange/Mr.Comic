// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

public final class ael
{

    private static aem a(String s, int i)
    {
        if (i != -1)
        {
            for (Iterator iterator = b(i).iterator(); iterator.hasNext();)
            {
                aem aem1 = (aem)iterator.next();
                if (aem1.j.equalsIgnoreCase(s))
                {
                    return aem1;
                }
            }

            return null;
        } else
        {
            return aei.a().c.a(s);
        }
    }

    public static String a(aeq aeq1)
    {
        if (aeq1.d())
        {
            return aeq1.e;
        } else
        {
            return aeq1.d;
        }
    }

    public static List a(int i)
    {
        Object obj = aei.a().b.f();
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (i == aeq1.g)
            {
                arraylist.add(aeq1);
            }
        } while (true);
        return arraylist;
    }

    public static List a(aem aem1)
    {
        return b(aei.a().c.e(), aem1, true);
    }

    public static List a(aem aem1, boolean flag)
    {
        List list = aei.a().b.f();
        if (aem1.f())
        {
            return agy.a(list, aem1.a);
        } else
        {
            return a(list, aem1, flag);
        }
    }

    public static List a(List list)
    {
        Object obj = list;
        if (agw.a())
        {
            obj = new ArrayList();
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                aem aem1 = (aem)list.next();
                if (!aem1.c())
                {
                    ((List) (obj)).add(aem1);
                }
            } while (true);
        }
        return ((List) (obj));
    }

    public static List a(List list, aem aem1, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        boolean flag2 = aem1.d();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)iterator.next();
            if (!flag2 || aeq1.g == aem1.c)
            {
                boolean flag1;
                if (aeq1.d())
                {
                    list = aem1.j;
                } else
                {
                    list = aem1.a();
                }
                if (flag)
                {
                    flag1 = a(aeq1).startsWith(list);
                } else
                {
                    flag1 = list.equalsIgnoreCase(agv.c(a(aeq1)));
                }
                if (flag1)
                {
                    arraylist.add(aeq1);
                }
            }
        } while (true);
        return arraylist;
    }

    public static void a()
    {
        aei.a().c.d();
        aei.a().b.d();
    }

    public static void a(List list, String s)
    {
        try
        {
            if ("prefSortByFilePath".equals(s))
            {
                Collections.sort(list, new Comparator() {

                    public final int compare(Object obj, Object obj1)
                    {
                        obj = (aeq)obj;
                        obj1 = (aeq)obj1;
                        return ael.a(((aeq) (obj))).compareToIgnoreCase(ael.a(((aeq) (obj1))));
                    }

                });
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            return;
        }
        if ("prefSortByFilePathEx".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final int compare(Object obj, Object obj1)
                {
                    obj = (aeq)obj;
                    obj1 = (aeq)obj1;
                    int j = agv.c(ael.a(((aeq) (obj)))).compareToIgnoreCase(agv.c(ael.a(((aeq) (obj1)))));
                    int i = j;
                    if (j == 0)
                    {
                        i = agk.a(((aeq) (obj)).c, ((aeq) (obj1)).c);
                    }
                    return i;
                }

            });
            return;
        }
        if ("prefSortByAddedFirst".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final volatile int compare(Object obj, Object obj1)
                {
                    obj = (aeq)obj;
                    obj1 = (aeq)obj1;
                    return ((aeq) (obj)).a - ((aeq) (obj1)).a;
                }

            });
            return;
        }
        if ("prefSortByAddedLast".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final volatile int compare(Object obj, Object obj1)
                {
                    obj = (aeq)obj;
                    return ((aeq)obj1).a - ((aeq) (obj)).a;
                }

            });
            return;
        }
        if ("prefSortReverseAlphabetically".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final int compare(Object obj, Object obj1)
                {
                    obj = (aeq)obj;
                    return agk.a(((aeq)obj1).c, ((aeq) (obj)).c);
                }

            });
            return;
        }
        Collections.sort(list, new Comparator() {

            public final int compare(Object obj, Object obj1)
            {
                obj = (aeq)obj;
                obj1 = (aeq)obj1;
                return agk.a(((aeq) (obj)).c, ((aeq) (obj1)).c);
            }

        });
        return;
    }

    public static void a(List list, List list1)
    {
        List list2 = b(aei.a().b.f());
        List list3 = a(aei.a().c.e());
        if (list2.size() > 0)
        {
            PriorityQueue priorityqueue = new PriorityQueue(list2.size() + list3.size(), new Comparator() {

                public final int compare(Object obj, Object obj1)
                {
                    obj = (aft)obj;
                    return (int)((((aft)obj1).q() - ((aft) (obj)).q()) / 10000L);
                }

            });
            priorityqueue.addAll(list2);
            priorityqueue.addAll(list3);
            do
            {
                if (list.size() >= 5 && list1.size() >= 5 || priorityqueue.isEmpty())
                {
                    break;
                }
                aft aft1 = (aft)priorityqueue.poll();
                (new StringBuilder("Item is: ")).append(aft1.l()).append(", ").append(aft1.q());
                if (aft1.q() == 0L)
                {
                    break;
                }
                if (aft1.o())
                {
                    if (list.size() < 5)
                    {
                        list.add(aft1);
                    }
                } else
                if (aft1.p() && list1.size() < 5)
                {
                    list1.add(aft1);
                }
            } while (true);
        }
    }

    public static aem b(aem aem1)
    {
        String s = aem1.j;
        Object obj = null;
        aem aem2 = obj;
        if (s != null)
        {
            aem2 = obj;
            if (s.length() != 0)
            {
                String s1 = agv.c(s);
                aem2 = obj;
                if (!s.equalsIgnoreCase(s1))
                {
                    int i;
                    if (aem1.d())
                    {
                        i = aem1.c;
                    } else
                    {
                        i = -1;
                    }
                    aem2 = a(s1, i);
                }
            }
        }
        return aem2;
    }

    public static aem b(aeq aeq1)
    {
        String s = agv.c(a(aeq1));
        int i;
        if (aeq1.d())
        {
            i = aeq1.g;
        } else
        {
            i = -1;
        }
        return a(s, i);
    }

    public static List b(int i)
    {
        Object obj = aei.a().c.e();
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aem aem1 = (aem)((Iterator) (obj)).next();
            if (i == aem1.c)
            {
                arraylist.add(aem1);
            }
        } while (true);
        return arraylist;
    }

    public static List b(List list)
    {
        Object obj = list;
        if (agw.a())
        {
            obj = new ArrayList();
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                aeq aeq1 = (aeq)list.next();
                if (!agw.a(aeq1))
                {
                    ((List) (obj)).add(aeq1);
                }
            } while (true);
        }
        return ((List) (obj));
    }

    public static List b(List list, aem aem1, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        boolean flag2 = aem1.d();
        String s = agp.a(aem1.a());
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            aem aem2 = (aem)list.next();
            if ((aem2.a == -1 || aem2.a != aem1.a) && aem2 != aem1 && (!flag2 || aem2.c == aem1.c))
            {
                boolean flag1;
                if (flag)
                {
                    flag1 = aem2.a().startsWith(s);
                } else
                {
                    flag1 = s.equalsIgnoreCase(agv.c(aem2.a()));
                }
                if (flag1)
                {
                    arraylist.add(aem2);
                }
            }
        } while (true);
        return arraylist;
    }

    public static void b()
    {
        a();
        agm.a(true);
    }

    public static void b(List list, String s)
    {
        try
        {
            if ("prefSortByAddedFirst".equals(s))
            {
                Collections.sort(list, new Comparator() {

                    public final volatile int compare(Object obj, Object obj1)
                    {
                        obj = (aem)obj;
                        obj1 = (aem)obj1;
                        return ((aem) (obj)).a - ((aem) (obj1)).a;
                    }

                });
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            return;
        }
        if ("prefSortByAddedLast".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final volatile int compare(Object obj, Object obj1)
                {
                    obj = (aem)obj;
                    return ((aem)obj1).a - ((aem) (obj)).a;
                }

            });
            return;
        }
        if ("prefSortAlphabetically".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final int compare(Object obj, Object obj1)
                {
                    obj = (aem)obj;
                    obj1 = (aem)obj1;
                    return agk.a(((aem) (obj)).b, ((aem) (obj1)).b);
                }

            });
            return;
        }
        if ("prefSortReverseAlphabetically".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final int compare(Object obj, Object obj1)
                {
                    obj = (aem)obj;
                    return agk.a(((aem)obj1).b, ((aem) (obj)).b);
                }

            });
            return;
        }
        if ("prefSortByFilePath".equals(s))
        {
            Collections.sort(list, new Comparator() {

                public final int compare(Object obj, Object obj1)
                {
                    obj = (aem)obj;
                    obj1 = (aem)obj1;
                    return ((aem) (obj)).j.compareToIgnoreCase(((aem) (obj1)).j);
                }

            });
        }
        return;
    }

    public static ArrayList c()
    {
        Object obj = aei.a().b.f();
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (aeq1.h.c(1) && (!aeq1.d() || aeq1.h.c(16)))
            {
                arraylist.add(aeq1);
            }
        } while (true);
        return arraylist;
    }

    public static ArrayList d()
    {
        Object obj = aei.a().b.f();
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (!aeq1.d())
            {
                arraylist.add(aeq1);
            }
        } while (true);
        return arraylist;
    }

    public static ArrayList e()
    {
        Object obj = aei.a().c.e();
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aem aem1 = (aem)((Iterator) (obj)).next();
            if (!aem1.d())
            {
                arraylist.add(aem1);
            }
        } while (true);
        return arraylist;
    }

    public static ArrayList f()
    {
        Object obj = aei.a().b.f();
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (aeq1.d() && aeq1.g())
            {
                arraylist.add(aeq1);
            }
        } while (true);
        return arraylist;
    }
}
