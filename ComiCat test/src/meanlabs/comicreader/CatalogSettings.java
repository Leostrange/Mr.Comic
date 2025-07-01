// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acf;
import acg;
import aei;
import aes;
import aeu;
import agm;
import agv;
import agw;
import ahf;
import aib;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity, ComicFolders

public class CatalogSettings extends ReaderActivity
    implements ComicFolders.a
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final CatalogSettings a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            i;
            JVM INSTR tableswitch 0 11: default 64
        //                       0 81
        //                       1 91
        //                       2 112
        //                       3 126
        //                       4 140
        //                       5 150
        //                       6 258
        //                       7 277
        //                       8 404
        //                       9 418
        //                       10 435
        //                       11 445;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L1:
            adapterview = (acg)adapterview.getAdapter();
            if (adapterview != null)
            {
                adapterview.notifyDataSetInvalidated();
            }
            return;
_L2:
            CatalogSettings.a(a);
            continue; /* Loop/switch isn't completed */
_L3:
            agw.a(a, "include-secondry-formats", new agw.a(this, adapterview) {

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
            aei.a().d.d("rescan-on-start");
            continue; /* Loop/switch isn't completed */
_L5:
            aei.a().d.d("fix-file-extn");
            continue; /* Loop/switch isn't completed */
_L6:
            CatalogSettings.b(a);
            continue; /* Loop/switch isn't completed */
_L7:
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
            acharsequence[0] = "prefIndividualComics";
            acharsequence[1] = "prefFlatFolders";
            acharsequence[2] = "prefNestedFolders";
            obj = new android.app.AlertDialog.Builder(((android.content.Context) (obj)));
            ((android.app.AlertDialog.Builder) (obj)).setTitle(0x7f06021e);
            String s = aei.a().d.b("shelf-mode");
            ((android.app.AlertDialog.Builder) (obj)).setSingleChoiceItems(agw.a(acharsequence), agv.a(acharsequence, s), new agw._cls8(acharsequence, view)).create().show();
            continue; /* Loop/switch isn't completed */
_L8:
            agw.a(a, new agw.a(this, adapterview) {

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
_L9:
            Object obj1 = a;
            view = new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    agm.a();
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
            CharSequence acharsequence1[] = new CharSequence[6];
            acharsequence1[0] = "prefBlack";
            acharsequence1[1] = "prefWoodenShelf";
            acharsequence1[2] = "prefSteelMesh";
            acharsequence1[3] = "prefTitanium";
            acharsequence1[4] = "prefCoolBlue";
            acharsequence1[5] = "prefBlackWood";
            obj1 = new android.app.AlertDialog.Builder(((android.content.Context) (obj1)));
            ((android.app.AlertDialog.Builder) (obj1)).setTitle(0x7f060072);
            String s1 = aei.a().d.b("gridview-theme");
            ((android.app.AlertDialog.Builder) (obj1)).setSingleChoiceItems(agw.a(acharsequence1), agv.a(acharsequence1, s1), new agw._cls17(acharsequence1, view)).create().show();
            continue; /* Loop/switch isn't completed */
_L10:
            aei.a().d.d("use-right-cover-as-thumbnail");
            continue; /* Loop/switch isn't completed */
_L11:
            aei.a().d.d("use-large-thumbnails");
            agm.a();
            continue; /* Loop/switch isn't completed */
_L12:
            CatalogSettings.c(a);
            continue; /* Loop/switch isn't completed */
_L13:
            aei.a().d.d("clear-bookmark-on-read");
            if (true) goto _L1; else goto _L14
_L14:
        }

        private a()
        {
            a = CatalogSettings.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    private acg a;

    public CatalogSettings()
    {
    }

    private void a(acf acf1)
    {
        Object obj = agw.b();
        if (obj != null && ((List) (obj)).size() > 0)
        {
            if (((List) (obj)).size() <= 2)
            {
                acf1.b = aib.a(((Iterable) (obj)), ", ");
                return;
            }
            ArrayList arraylist = new ArrayList(((List) (obj)).size());
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add((new File((String)((Iterator) (obj)).next())).getName())) { }
            acf1.b = aib.a(arraylist, ", ");
            return;
        } else
        {
            acf1.b = getString(0x7f060139);
            return;
        }
    }

    static void a(CatalogSettings catalogsettings)
    {
        Intent intent = new Intent(catalogsettings, meanlabs/comicreader/ComicFolders);
        intent.putExtra("warn", true);
        ComicFolders.a = catalogsettings;
        catalogsettings.startActivity(intent);
    }

    static void b(CatalogSettings catalogsettings)
    {
        Object obj = aei.a().e;
        obj = aes.b();
        CharSequence acharsequence[] = new CharSequence[((List) (obj)).size()];
        for (int i = 0; i < ((List) (obj)).size(); i++)
        {
            acharsequence[i] = (CharSequence)((List) (obj)).get(i);
        }

        if (((List) (obj)).size() != 0)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(catalogsettings);
            builder.setTitle(0x7f060140);
            builder.setMultiChoiceItems(acharsequence, null, catalogsettings. new android.content.DialogInterface.OnMultiChoiceClickListener() {

                final CatalogSettings a;

                public final void onClick(DialogInterface dialoginterface, int j, boolean flag)
                {
                }

            
            {
                a = CatalogSettings.this;
                super();
            }
            });
            builder.setNegativeButton(0x1040000, catalogsettings. new android.content.DialogInterface.OnClickListener() {

                final CatalogSettings a;

                public final void onClick(DialogInterface dialoginterface, int j)
                {
                    dialoginterface.dismiss();
                }

            
            {
                a = CatalogSettings.this;
                super();
            }
            });
            builder.setPositiveButton(0x7f0601da, catalogsettings. new android.content.DialogInterface.OnClickListener(((List) (obj))) {

                final List a;
                final CatalogSettings b;

                public final void onClick(DialogInterface dialoginterface, int j)
                {
                    SparseBooleanArray sparsebooleanarray = ((AlertDialog)dialoginterface).getListView().getCheckedItemPositions();
                    if (sparsebooleanarray != null && sparsebooleanarray.size() > 0)
                    {
                        aes aes1 = aei.a().e;
                        j = 0;
                        while (j < a.size()) 
                        {
                            if (!sparsebooleanarray.get(j))
                            {
                                continue;
                            }
                            String s = (String)a.get(j);
                            Integer integer = (Integer)aes1.b.get(s);
                            if (integer == null)
                            {
                                continue;
                            }
                            boolean flag;
                            if (aei.a().a.delete("exclusions", (new StringBuilder("exclusionid=")).append(integer).toString(), null) != 0)
                            {
                                flag = true;
                            } else
                            {
                                flag = false;
                            }
                            if (flag)
                            {
                                aes1.b.remove(s);
                            }
                            j++;
                        }
                        ahf.a(b, 0x7f0601f0);
                    }
                    dialoginterface.dismiss();
                }

            
            {
                b = CatalogSettings.this;
                a = list;
                super();
            }
            });
            builder.create().show();
            return;
        } else
        {
            ahf.a(catalogsettings, 0x7f060158);
            return;
        }
    }

    static void c(CatalogSettings catalogsettings)
    {
        aeu aeu1 = aei.a().d;
        String s = catalogsettings.getString(0x7f0601d1);
        String s1 = catalogsettings.getString(0x7f0601c4);
        String s2 = catalogsettings.getString(0x7f06024f);
        String s3 = catalogsettings.getString(0x7f060127);
        String s4 = catalogsettings.getString(0x7f0601d4);
        boolean flag = aeu1.a("showInbuiltFolder", 8);
        boolean flag1 = aeu1.a("showInbuiltFolder", 2);
        boolean flag2 = aeu1.a("showInbuiltFolder", 1);
        boolean flag3 = aeu1.a("showInbuiltFolder", 16);
        boolean flag4 = aeu1.a("showInbuiltFolder", 4);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(catalogsettings);
        catalogsettings = catalogsettings. new android.content.DialogInterface.OnMultiChoiceClickListener(aeu1) {

            final aeu a;
            final CatalogSettings b;

            public final void onClick(DialogInterface dialoginterface, int i, boolean flag5)
            {
                i;
                JVM INSTR tableswitch 0 4: default 36
            //                           0 41
            //                           1 56
            //                           2 70
            //                           3 84
            //                           4 99;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                agm.a(false);
                return;
_L2:
                a.a("showInbuiltFolder", 8, flag5);
                continue; /* Loop/switch isn't completed */
_L3:
                a.a("showInbuiltFolder", 2, flag5);
                continue; /* Loop/switch isn't completed */
_L4:
                a.a("showInbuiltFolder", 1, flag5);
                continue; /* Loop/switch isn't completed */
_L5:
                a.a("showInbuiltFolder", 16, flag5);
                continue; /* Loop/switch isn't completed */
_L6:
                a.a("showInbuiltFolder", 4, flag5);
                if (true) goto _L1; else goto _L7
_L7:
            }

            
            {
                b = CatalogSettings.this;
                a = aeu1;
                super();
            }
        };
        builder.setMultiChoiceItems(new CharSequence[] {
            s, s1, s2, s3, s4
        }, new boolean[] {
            flag, flag1, flag2, flag3, flag4
        }, catalogsettings);
        builder.create().show();
    }

    public final void c()
    {
        a((acf)a.a.get(0));
        a.notifyDataSetChanged();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030027);
        bundle = (ListView)findViewById(0x7f0c008d);
        Object obj = new ArrayList();
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060138, 0x7f060139, "catalog-folders", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060125, 0, "include-secondry-formats", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0601e7, 0x7f0601e8, "rescan-on-start", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060102, 0x7f060103, "fix-file-extn", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0600ed, 0x7f060140, "dummy", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06021e, 0, "shelf-mode", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06022d, 0, "catalog-sort-order", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06023f, 0, "gridview-theme", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f0601f8, 0x7f0601f9, "use-right-cover-as-thumbnail", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f06012e, 0, "use-large-thumbnails", true);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060224, 0x7f060225, "showInbuiltFolder", false);
        agw.a(((ArrayList) (obj)), getResources(), 0x7f060087, 0x7f060088, "clear-bookmark-on-read", true);
        a((acf)((ArrayList) (obj)).get(0));
        obj = new acg(this, ((ArrayList) (obj)));
        a = ((acg) (obj));
        bundle.setAdapter(((android.widget.ListAdapter) (obj)));
        bundle.setOnItemClickListener(new a((byte)0));
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0005, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0c0129)
        {
            agm.a(this, null);
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
