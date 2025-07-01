// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acf;
import acg;
import acn;
import ada;
import aei;
import ael;
import aeu;
import afw;
import agm;
import agp;
import agv;
import agw;
import agz;
import ahc;
import ahf;
import ahh;
import ahk;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import meanlabs.comicreader.cloud.DownloaderService;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity, ThumbnailService

public class CloudSyncSettings extends ReaderActivity
    implements ahh.a
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final CloudSyncSettings a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            i;
            JVM INSTR tableswitch 0 15: default 80
        //                       0 97
        //                       1 118
        //                       2 139
        //                       3 149
        //                       4 159
        //                       5 179
        //                       6 193
        //                       7 281
        //                       8 301
        //                       9 321
        //                       10 335
        //                       11 443
        //                       12 457
        //                       13 80
        //                       14 551
        //                       15 572;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L1 _L15 _L16
_L1:
            adapterview = (acg)adapterview.getAdapter();
            if (adapterview != null)
            {
                adapterview.notifyDataSetInvalidated();
            }
            return;
_L2:
            agw.b(a, "download-newly-added-files", new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    s = (acg)a.getAdapter();
                    if (s != null)
                    {
                        s.notifyDataSetInvalidated();
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            });
            continue; /* Loop/switch isn't completed */
_L3:
            agw.a(a, "cloud-include-secondry-formats", new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    s = (acg)a.getAdapter();
                    if (s != null)
                    {
                        s.notifyDataSetInvalidated();
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            });
            continue; /* Loop/switch isn't completed */
_L4:
            CloudSyncSettings.a(a);
            continue; /* Loop/switch isn't completed */
_L5:
            CloudSyncSettings.b(a);
            continue; /* Loop/switch isn't completed */
_L6:
            agw.a(a, false, new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    if (!s.equals("prefDontCreateThumbs"))
                    {
                        afw.a(b.a, b.a.getString(0x7f0600a2), b.a.getString(0x7f06009f), new afw.a(this) {

                            final a._cls3 a;

                            public final void a(boolean flag)
                            {
                                if (!flag)
                                {
                                    aei.a().d.a("create-cloud-thumbnails", "prefDontCreateThumbs");
                                }
                                acg acg1 = (acg)a.a.getAdapter();
                                if (acg1 != null)
                                {
                                    acg1.notifyDataSetInvalidated();
                                    CloudSyncSettings.c();
                                }
                            }

            
            {
                a = _pcls3;
                super();
            }
                        });
                    } else
                    {
                        s = (acg)a.getAdapter();
                        if (s != null)
                        {
                            s.notifyDataSetInvalidated();
                            CloudSyncSettings.c();
                            return;
                        }
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            });
            continue; /* Loop/switch isn't completed */
_L7:
            aei.a().d.d("remove-local-copies");
            continue; /* Loop/switch isn't completed */
_L8:
            view = new android.app.AlertDialog.Builder(a);
            view.setTitle(0x7f06014b);
            i = (int)aei.a().d.a("max-parallel-downloads", 2L);
            android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void onClick(DialogInterface dialoginterface, int i)
                {
                    aei.a().d.a("max-parallel-downloads", String.valueOf(i + 1));
                    acg acg1 = (acg)a.getAdapter();
                    if (acg1 != null)
                    {
                        acg1.notifyDataSetInvalidated();
                    }
                    CloudSyncSettings.d();
                    dialoginterface.dismiss();
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            };
            view.setSingleChoiceItems(new CharSequence[] {
                "1", "2", "3", "4"
            }, i - 1, onclicklistener).create().show();
            continue; /* Loop/switch isn't completed */
_L9:
            aei.a().d.d("download-only-on-wifi");
            CloudSyncSettings.d();
            CloudSyncSettings.c();
            continue; /* Loop/switch isn't completed */
_L10:
            aei.a().d.d("dont-download-on-roaming");
            CloudSyncSettings.d();
            CloudSyncSettings.c();
            continue; /* Loop/switch isn't completed */
_L11:
            aei.a().d.d("auto-clear-completed");
            continue; /* Loop/switch isn't completed */
_L12:
            Object obj = a;
            view = new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    s = (acg)a.getAdapter();
                    if (s != null)
                    {
                        s.notifyDataSetInvalidated();
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            };
            CharSequence acharsequence[] = new CharSequence[3];
            acharsequence[0] = "prefNoNotification";
            acharsequence[1] = "prefNotifyTextOnly";
            acharsequence[2] = "prefNotifyTextAndSound";
            obj = new android.app.AlertDialog.Builder(((android.content.Context) (obj)));
            ((android.app.AlertDialog.Builder) (obj)).setTitle(0x7f060161);
            String s = aei.a().d.b("notify");
            ((android.app.AlertDialog.Builder) (obj)).setSingleChoiceItems(agw.a(acharsequence), agv.a(acharsequence, s), new agw._cls21(acharsequence, view)).create().show();
            continue; /* Loop/switch isn't completed */
_L13:
            aei.a().d.d("maintain_download_history");
            continue; /* Loop/switch isn't completed */
_L14:
            Object obj1 = a;
            view = new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    s = (acg)a.getAdapter();
                    if (s != null)
                    {
                        s.notifyDataSetInvalidated();
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            };
            CharSequence acharsequence1[] = new CharSequence[2];
            acharsequence1[0] = "makeLocalCopy";
            acharsequence1[1] = "prefCacheTemporarily";
            obj1 = new android.app.AlertDialog.Builder(((android.content.Context) (obj1)));
            String s1 = aei.a().d.b("on-the-fly-reading");
            ((android.app.AlertDialog.Builder) (obj1)).setSingleChoiceItems(agw.a(acharsequence1), agv.a(acharsequence1, s1), new agw._cls9(acharsequence1, view)).create().show();
            continue; /* Loop/switch isn't completed */
_L15:
            agw.b(a, "smb-download-newly-added-files", new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    s = (acg)a.getAdapter();
                    if (s != null)
                    {
                        s.notifyDataSetInvalidated();
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            });
            continue; /* Loop/switch isn't completed */
_L16:
            agw.a(a, true, new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    s = (acg)a.getAdapter();
                    if (s != null)
                    {
                        s.notifyDataSetInvalidated();
                    }
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            });
            if (true) goto _L1; else goto _L17
_L17:
        }

        private a()
        {
            a = CloudSyncSettings.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    private ahh a;
    private acg b;

    public CloudSyncSettings()
    {
    }

    private void a(acf acf1)
    {
        acf1.b = aei.a().d.b("limit-cloud-scan-to");
        if (acf1.b == null || acf1.b.length() == 0)
        {
            acf1.b = getString(0x7f060139);
        }
    }

    static void a(CloudSyncSettings cloudsyncsettings)
    {
        String s = aei.a().d.b("cloud-sync-download-location");
        cloudsyncsettings.a = ahh.a(cloudsyncsettings.getString(0x7f06007c), s);
        cloudsyncsettings.a.show(cloudsyncsettings.getSupportFragmentManager(), null);
    }

    static void a(CloudSyncSettings cloudsyncsettings, acf acf1)
    {
        cloudsyncsettings.a(acf1);
    }

    static void a(CloudSyncSettings cloudsyncsettings, String s, String s1)
    {
        (new acn(cloudsyncsettings, s, s1, cloudsyncsettings. new acn.a(s1) {

            final String a;
            final CloudSyncSettings b;

            public final void a(boolean flag)
            {
                if (flag)
                {
                    aei.a().d.a("cloud-sync-download-location", a);
                    ael.a();
                    agm.a(true);
                    ((acg)((ListView)b.findViewById(0x7f0c008d)).getAdapter()).notifyDataSetChanged();
                    ahf.a(b, b.getString(0x7f0600cb, new Object[] {
                        a
                    }));
                    return;
                } else
                {
                    ahf.a(b, b.getString(0x7f0600e0, new Object[] {
                        a
                    }));
                    return;
                }
            }

            
            {
                b = CloudSyncSettings.this;
                a = s;
                super();
            }
        })).execute(new Void[] {
            null
        });
    }

    static boolean a(String s, String s1)
    {
        s = new File(s);
        long l = ahc.a(new File(s1));
        boolean flag;
        if (l == ahc.a(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            return l > ahk.c(s);
        } else
        {
            return flag;
        }
    }

    static void b(CloudSyncSettings cloudsyncsettings)
    {
        String s;
label0:
        {
            String s1 = aei.a().d.b("limit-cloud-scan-to");
            if (s1 != null)
            {
                s = s1;
                if (s1.length() != 0)
                {
                    break label0;
                }
            }
            s = cloudsyncsettings.getString(0x7f060090);
        }
        afw.a(cloudsyncsettings, 0x7f060138, 0x7f060136, 0x104000a, s, true, cloudsyncsettings. new afw.b() {

            final CloudSyncSettings a;

            public final void a(boolean flag, String s2)
            {
                if (flag)
                {
                    aei.a().d.a("limit-cloud-scan-to", s2);
                    CloudSyncSettings.a(a, (acf)CloudSyncSettings.c(a).a.get(3));
                    CloudSyncSettings.c(a).notifyDataSetInvalidated();
                }
            }

            
            {
                a = CloudSyncSettings.this;
                super();
            }
        });
    }

    static boolean b(String s)
    {
        return c(s);
    }

    static acg c(CloudSyncSettings cloudsyncsettings)
    {
        return cloudsyncsettings.b;
    }

    static void c()
    {
        ThumbnailService thumbnailservice = ThumbnailService.a();
        if (thumbnailservice != null)
        {
            thumbnailservice.a(true);
        }
    }

    private static boolean c(String s)
    {
        boolean flag;
        boolean flag1;
        s = new File(s);
        flag = s.canWrite();
        flag1 = flag;
        if (!flag) goto _L2; else goto _L1
_L1:
        try
        {
            s = File.createTempFile("comicat", null, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        if (s == null) goto _L4; else goto _L3
_L3:
        if (!s.exists()) goto _L4; else goto _L5
_L5:
        flag = true;
_L8:
        flag1 = flag;
        if (!flag) goto _L2; else goto _L6
_L6:
        agz.a(s);
        flag1 = flag;
_L2:
        return flag1;
_L4:
        flag = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static void d()
    {
        DownloaderService downloaderservice = DownloaderService.a();
        if (downloaderservice != null)
        {
            downloaderservice.b.a();
        }
    }

    public final void a(String s)
    {
        String s1 = aei.a().d.b("cloud-sync-download-location");
        if (s != null && s.length() > 0 && !agp.a(s1, s))
        {
            afw.a(this, getString(0x7f06008b), getString(0x7f060075), new afw.a(s, s1) {

                final String a;
                final String b;
                final CloudSyncSettings c;

                public final void a(boolean flag)
                {
label0:
                    {
                        if (flag)
                        {
                            if (CloudSyncSettings.b(a))
                            {
                                break label0;
                            }
                            ahf.a(c, 0x7f06006c);
                        }
                        return;
                    }
                    if (!CloudSyncSettings.a(b, a))
                    {
                        ahf.a(c, 0x7f06015f);
                        return;
                    } else
                    {
                        CloudSyncSettings.a(c, b, a);
                        return;
                    }
                }

            
            {
                c = CloudSyncSettings.this;
                a = s;
                b = s1;
                super();
            }
            });
        }
        a.dismiss();
    }

    public final void g()
    {
        a.dismiss();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 42 && j == -1)
        {
            Uri uri = intent.getData();
            (new StringBuilder("tree uri is: ")).append(uri.toString());
            (new StringBuilder("Path is: ")).append(uri.getPath());
            File file = new File(uri.getPath());
            (new StringBuilder("File Path is: ")).append(file.getAbsolutePath());
            StringBuilder stringbuilder = new StringBuilder("Disk File Path is: ");
            Object obj = null;
            if (uri.getScheme().equals("content") && "com.android.externalstorage.documents".equals(uri.getAuthority()))
            {
                i = 1;
            } else
            {
                i = 0;
            }
            intent = obj;
            if (i != 0)
            {
                String as[] = uri.getPath().split(":");
                intent = obj;
                if (as.length == 2)
                {
                    intent = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(as[1]).toString();
                }
            }
            stringbuilder.append(intent);
            intent = Uri.fromFile(file);
            (new StringBuilder("Recreated tree uri is: ")).append(intent.getPath());
            getContentResolver().takePersistableUriPermission(uri, 3);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        Object obj = new ArrayList();
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0600cc, 0, "download-newly-added-files", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060125, 0, "cloud-include-secondry-formats", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06008b, 0, "cloud-sync-download-location", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060138, 0x7f060139, "limit-cloud-scan-to", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0600a2, 0, "create-cloud-thumbnails", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0601e0, 0, "remove-local-copies", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06014b, 0, "max-parallel-downloads", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060255, 0x7f060256, "download-only-on-wifi", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0600c5, 0x7f0600c6, "dont-download-on-roaming", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060079, 0x7f06007a, "auto-clear-completed", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060161, 0, "notify", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06013b, 0x7f06013c, "maintain_download_history", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060264, 0, "on-the-fly-reading", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06028a, 0, "", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0600cc, 0, "smb-download-newly-added-files", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0600a0, 0, "create-smb-sthumbnails", false);
        a((acf)((ArrayList) (obj)).get(3));
        obj = new acg(this, ((ArrayList) (obj)));
        b = ((acg) (obj));
        bundle.setAdapter(((android.widget.ListAdapter) (obj)));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
