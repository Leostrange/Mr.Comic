// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class acr extends AsyncTask
{
    public static interface a
    {

        public abstract void f();
    }


    static a k = null;
    boolean a;
    boolean b;
    ArrayList c;
    ArrayList d;
    ArrayList e;
    ArrayList f;
    HashMap g;
    HashMap h;
    int i;
    int j;
    private Activity l;
    private ProgressDialog m;
    private a n;
    private aek o;
    private aen p;
    private aes q;
    private boolean r;
    private String s[];
    private boolean t;
    private String u[] = {
        "/sys", "/sbin", "/proc", "/init", "/system", "/config", "/dev", "/etc", "/cache", "/storage/emulated/legacy"
    };

    public acr(Activity activity, a a1, boolean flag)
    {
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
        f = new ArrayList();
        g = new HashMap();
        h = new HashMap();
        i = 0;
        l = activity;
        if (a1 == null)
        {
            a1 = k;
        }
        n = a1;
        a = flag;
        a1 = aei.a().b;
        j = aek.e();
        o = aei.a().b;
        p = aei.a().c;
        q = aei.a().e;
        a1 = aei.a().d.b("include-secondry-formats");
        r = a1.equals("prefConditionallyInclude");
        s = afa.b(a1);
        t = aei.a().d.c("fix-file-extn");
        if (!a)
        {
            m = new ProgressDialog(l);
            m.setProgressStyle(1);
            m.setIndeterminate(true);
            m.setMessage(ComicReaderApp.a().getString(0x7f0601e6));
            m.setTitle(0x7f06023b);
            m.setProgress(0);
            m.setCancelable(false);
            m.setCanceledOnTouchOutside(false);
            ahf.a(m);
            m.show();
            return;
        } else
        {
            ahf.b(activity, 0x7f060058);
            return;
        }
    }

    public static void a()
    {
        if (k != null)
        {
            k.f();
        }
    }

    public static void a(a a1)
    {
        k = a1;
    }

    static void a(acr acr1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(acr1.l);
        builder.setTitle(0x7f0600f3).setMessage(acr1.b()).setCancelable(false).setPositiveButton(0x7f0601e5, acr1. new android.content.DialogInterface.OnClickListener() {

            final acr a;

            public final void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.dismiss();
                acr.b(a);
            }

            
            {
                a = acr.this;
                super();
            }
        }).setNegativeButton(0x7f06007b, acr1. new android.content.DialogInterface.OnClickListener() {

            final acr a;

            public final void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.cancel();
            }

            
            {
                a = acr.this;
                super();
            }
        });
        builder.create().show();
    }

    private void a(File file, LinkedList linkedlist, ArrayList arraylist, ArrayList arraylist1)
    {
        String s1;
        s1 = file.getAbsolutePath().trim();
        break MISSING_BLOCK_LABEL_9;
        if (!q.b(s1) && !g.containsKey(s1))
        {
            g.put(s1, Boolean.valueOf(true));
            String as[] = file.list();
            if (as != null && as.length != 0)
            {
                if (!s1.endsWith(File.separator))
                {
                    s1 = (new StringBuilder()).append(s1).append(File.separator).toString();
                }
                int i1 = 0;
                while (i1 < as.length) 
                {
                    File file1 = new File((new StringBuilder()).append(s1).append(as[i1]).toString());
                    if (!file1.isHidden() && file1.canRead() && (b || !a(file1)))
                    {
                        if (!file1.isDirectory() && file1.length() > 51200L)
                        {
                            String s2 = agv.a(file1.getName());
                            if (s2 != null && agv.a(s, s2) != -1)
                            {
                                boolean flag;
                                boolean flag1;
                                if (!s2.toLowerCase().equals("zip"))
                                {
                                    flag = true;
                                } else
                                {
                                    flag = false;
                                }
                                flag1 = flag;
                                if (!flag)
                                {
                                    if (file1.length() > 0x100000L)
                                    {
                                        flag1 = true;
                                    } else
                                    {
                                        flag1 = false;
                                    }
                                }
                                if (flag1)
                                {
                                    String s3 = file1.getAbsolutePath();
                                    if (!q.b(s3))
                                    {
                                        String s4 = file1.getName();
                                        File file2 = (File)h.get(s4);
                                        if (file2 != null && file2.length() == file1.length())
                                        {
                                            flag = true;
                                        } else
                                        {
                                            flag = false;
                                        }
                                        if (!flag)
                                        {
                                            arraylist1.add(file1.getAbsolutePath());
                                            h.put(s4, file1);
                                        }
                                        if (!flag)
                                        {
                                            flag = true;
                                        } else
                                        {
                                            flag = false;
                                        }
                                        if (flag && (arraylist.size() == 0 || !((aem)arraylist.get(arraylist.size() - 1)).j.equals(file.getAbsolutePath())))
                                        {
                                            arraylist.add(aem.a(file.getAbsolutePath()));
                                        }
                                    }
                                }
                            }
                        } else
                        if (b || !a(file1.getAbsolutePath()))
                        {
                            linkedlist.add(file1);
                        }
                    }
                    i1++;
                }
            }
        }
        return;
    }

    private void a(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        LinkedList linkedlist = new LinkedList();
        if (arraylist != null && !arraylist.isEmpty())
        {
            b = true;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); linkedlist.add((File)arraylist.next())) { }
        } else
        {
            a(linkedlist);
        }
        while (!linkedlist.isEmpty()) 
        {
            try
            {
                a((File)linkedlist.removeLast(), linkedlist, arraylist1, arraylist2);
            }
            // Misplaced declaration of an exception variable
            catch (ArrayList arraylist)
            {
                arraylist.printStackTrace();
            }
        }
        a(arraylist1, arraylist2);
        System.gc();
    }

    private void a(ArrayList arraylist, ArrayList arraylist1)
    {
        Object obj;
        obj = arraylist1;
        if (r)
        {
            ArrayList arraylist2 = new ArrayList(arraylist1.size());
            Iterator iterator1 = arraylist1.iterator();
            boolean flag = false;
            obj = "";
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                String s2 = (String)iterator1.next();
                if (!ahb.a(s2))
                {
                    String s1 = agv.c(s2);
                    boolean flag1 = flag;
                    Object obj1 = obj;
                    if (!s1.equals(obj))
                    {
                        if (s1.toLowerCase().contains("comic") || ahb.a(s1, arraylist1))
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        if (flag || ahb.a(agv.c(s1), arraylist1))
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        obj1 = s1;
                        flag1 = flag;
                    }
                    flag = flag1;
                    obj = obj1;
                    if (flag1)
                    {
                        arraylist2.add(s2);
                        flag = flag1;
                        obj = obj1;
                    }
                } else
                {
                    arraylist2.add(s2);
                }
            } while (true);
            obj = arraylist2;
        }
        arraylist1 = o.f().iterator();
_L2:
        Object obj2;
        int i1;
        if (!arraylist1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = (aeq)arraylist1.next();
        if (((aeq) (obj2)).d())
        {
            continue; /* Loop/switch isn't completed */
        }
        Iterator iterator = ((ArrayList) (obj)).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_730;
            }
        } while (!((String)iterator.next()).equalsIgnoreCase(((aeq) (obj2)).d));
        i1 = 1;
_L6:
        if (i1 == 0)
        {
            c.add(obj2);
        }
        if (true) goto _L2; else goto _L1
_L1:
        arraylist1 = ((ArrayList) (obj)).iterator();
        do
        {
            if (!arraylist1.hasNext())
            {
                break;
            }
            obj = (String)arraylist1.next();
            if (o.b(((String) (obj))) == null)
            {
                d.add(obj);
            }
        } while (true);
        arraylist1 = d.iterator();
_L5:
        if (!arraylist1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (String)arraylist1.next();
        publishProgress(new String[] {
            afa.a((new File(((String) (obj)))).getName())
        });
        i = i + 1;
        obj2 = o.a(((String) (obj)));
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_558;
        }
        i1 = agm.c.b;
        int j1;
        boolean flag2 = t;
        obj2 = new File(((String) (obj)));
        j1 = agm.a(((File) (obj2)), afa.a(((File) (obj2)).getName()), flag2, -1, null, null).a;
        i1 = j1;
_L3:
        if (i1 != agm.c.a)
        {
            if (i1 == agm.c.c || (new File(((String) (obj)))).length() < 0x40000L)
            {
                f.add(obj);
            } else
            {
                e.add(obj);
            }
        }
        continue; /* Loop/switch isn't completed */
        obj2;
        Log.e("Sync Catalog", (new StringBuilder("Error adding comic: ")).append(((String) (obj))).toString(), ((Throwable) (obj2)));
          goto _L3
        ((aeq) (obj2)).a(false);
        obj2.d = ((String) (obj));
        obj2.k = agm.a(((String) (obj)));
        aek.d(((aeq) (obj2)));
        aek.b(((aeq) (obj2)));
        if (true) goto _L5; else goto _L4
_L4:
        for (i1 = 0; i1 < c.size(); i1++)
        {
            arraylist1 = (aeq)c.get(i1);
            arraylist1.a(true);
            aek.b(arraylist1);
        }

        o.d();
        p.a(arraylist, -1, false, true);
        p.d();
        aei.a().d.a("last-sync-time", String.valueOf(ahc.b()));
        if (d.size() - (f.size() + e.size()) > 0)
        {
            aei.a().d.a("last-synced-id", String.valueOf(j));
        }
        return;
        i1 = 0;
          goto _L6
    }

    private static void a(LinkedList linkedlist)
    {
        File afile[] = File.listRoots();
        int j1 = afile.length;
        for (int i1 = 0; i1 < j1; i1++)
        {
            linkedlist.add(afile[i1]);
        }

        linkedlist.add(Environment.getExternalStorageDirectory());
        a(linkedlist, "/storage");
        a(linkedlist, "/storage/extSdCard");
        a(linkedlist, "/storage/emulated/0");
        a(linkedlist, "/storage/sdcard1");
        a(linkedlist, "/storage/external_SD");
        a(linkedlist, "/storage/ext_sd");
    }

    private static void a(LinkedList linkedlist, String s1)
    {
        s1 = new File(s1);
        if (s1.exists() && s1.isDirectory())
        {
            (new StringBuilder("Adding: ")).append(s1.getAbsolutePath());
            linkedlist.add(s1);
        }
    }

    private static boolean a(File file)
    {
        boolean flag = false;
        boolean flag1;
        try
        {
            flag1 = file.getCanonicalPath().equals(file.getAbsolutePath());
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
            return false;
        }
        if (!flag1)
        {
            flag = true;
        }
        return flag;
    }

    private boolean a(String s1)
    {
        boolean flag1 = false;
        int i1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i1 < u.length)
                {
                    if (!s1.equals(u[i1]))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i1++;
        } while (true);
    }

    private String b()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i1 = 0; i1 < e.size(); i1++)
        {
            String s1 = (String)e.get(i1);
            stringbuilder.append((new StringBuilder()).append(i1 + 1).append(". File: ").append(s1).append(" (").append(agv.a((new File(s1)).length())).append(")\n").toString());
        }

        return stringbuilder.toString();
    }

    static void b(acr acr1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("ComiCat App Version: ")).append(agv.d()).append("\n").toString());
        stringbuilder.append((new StringBuilder("Device: ")).append(Build.MODEL).append("\n").toString());
        stringbuilder.append((new StringBuilder("Architecture: ")).append(Build.CPU_ABI).append("\n").toString());
        stringbuilder.append((new StringBuilder("SDK: ")).append(android.os.Build.VERSION.SDK_INT).append("\n").toString());
        stringbuilder.append((new StringBuilder("SD Card state: ")).append(Environment.getExternalStorageState()).append("\n\n").toString());
        stringbuilder.append("Following files, failed to sync\n");
        stringbuilder.append(acr1.b());
        stringbuilder.append("\nPlease investigate.\n");
        (new agu("support@meanlabs.com", "ComiCat Sync Failure Report", stringbuilder.toString())).a(acr1.l);
    }

    protected final Object doInBackground(Object aobj[])
    {
        aeu aeu1 = aei.a().d;
        aobj = aeu1.b("catalog-folders");
        if (aobj != null && ((String) (aobj)).length() > 0)
        {
            aobj = ((String) (aobj)).split("#,#");
        } else
        {
            aobj = null;
        }
        if (aobj != null && aobj.length > 0)
        {
            ArrayList arraylist = new ArrayList();
            for (int i1 = 0; i1 < aobj.length; i1++)
            {
                File file = new File(((String) (aobj[i1])));
                if (file.exists())
                {
                    arraylist.add(file);
                }
            }

            aobj = new File(aeu1.b("cloud-sync-download-location"));
            if (((File) (aobj)).isDirectory())
            {
                arraylist.add(((Object) (aobj)));
            }
            aobj = arraylist;
        } else
        {
            aobj = null;
        }
        a(((ArrayList) (aobj)));
        return null;
    }

    protected final void onPostExecute(Object obj)
    {
        int i1;
        if (m != null)
        {
            try
            {
                m.setProgress(100);
                m.dismiss();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        i1 = d.size() - f.size();
        if (n != null)
        {
            n.f();
        }
        obj = l.getString(0x7f060123, new Object[] {
            Integer.valueOf(i1), Integer.valueOf(i1 - e.size()), Integer.valueOf(e.size()), Integer.valueOf(c.size())
        });
        if (!a)
        {
            try
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(l);
                builder.setMessage(((CharSequence) (obj))).setCancelable(true).setNegativeButton(0x7f06007b, null).setTitle(0x7f06023b);
                if (e.size() > 0)
                {
                    builder.setNeutralButton(0x7f06025c, new android.content.DialogInterface.OnClickListener() {

                        final acr a;

                        public final void onClick(DialogInterface dialoginterface, int j1)
                        {
                            dialoginterface.dismiss();
                            acr.a(a);
                        }

            
            {
                a = acr.this;
                super();
            }
                    });
                }
                builder.create().show();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((Exception) (obj)).printStackTrace();
            }
            return;
        } else
        {
            ahf.a(l, ((String) (obj)), false);
            return;
        }
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        if (m != null)
        {
            m.setIndeterminate(false);
            m.setMax(d.size());
            m.setProgress(i);
            m.setMessage(l.getString(0x7f060124, new Object[] {
                aobj[0]
            }));
        }
    }

}
