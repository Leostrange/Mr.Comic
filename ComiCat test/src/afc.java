// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.ExtractAskMode;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.IArchiveExtractCallback;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

public final class afc
    implements afe
{

    private ISevenZipInArchive a;
    private ArrayList b;
    private IInStream c;
    private File d;
    private boolean e;

    public afc()
    {
    }

    static String a(ISimpleInArchiveItem isimpleinarchiveitem)
    {
        String s = null;
        String s1 = isimpleinarchiveitem.getPath();
        s = s1;
_L2:
        String s2 = s;
        if (s == null)
        {
            s2 = String.valueOf(isimpleinarchiveitem.getItemIndex());
        }
        return s2;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean a(IInStream iinstream)
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        c = iinstream;
        flag = flag1;
        if (sk.a() == null) goto _L2; else goto _L1
_L1:
        a = sk.a(null, c);
        if (a == null)
        {
            a = sk.a(ArchiveFormat.ZIP, c);
        }
        flag = flag1;
        if (a == null) goto _L2; else goto _L3
_L3:
        b = new ArrayList();
        int j;
        iinstream = a.getSimpleInterface().getArchiveItems();
        j = iinstream.length;
        int i = 0;
_L12:
        if (i >= j) goto _L5; else goto _L4
_L4:
        ISimpleInArchiveItem isimpleinarchiveitem = iinstream[i];
        if (isimpleinarchiveitem == null) goto _L7; else goto _L6
_L6:
        if (!isimpleinarchiveitem.isFolder() && afa.a(a(isimpleinarchiveitem), b(isimpleinarchiveitem)))
        {
            b.add(isimpleinarchiveitem);
        }
          goto _L7
_L5:
        Collections.sort(b, new Comparator() {

            final afc a;

            public final int compare(Object obj, Object obj1)
            {
                obj = (ISimpleInArchiveItem)obj;
                obj1 = (ISimpleInArchiveItem)obj1;
                return agv.a(afc.a(((ISimpleInArchiveItem) (obj))), afc.a(((ISimpleInArchiveItem) (obj1))));
            }

            
            {
                a = afc.this;
                super();
            }
        });
_L10:
        (new StringBuilder("Opened Archived, Format: ")).append(a.getArchiveFormat().getMethodName()).append(", Page count: ").append(b.size());
        if (b.size() <= 0) goto _L9; else goto _L8
_L8:
        flag = e();
_L2:
        if (a == null && c != null)
        {
            try
            {
                c.close();
                c = null;
            }
            // Misplaced declaration of an exception variable
            catch (IInStream iinstream)
            {
                iinstream.printStackTrace();
                return flag;
            }
        }
        return flag;
        iinstream;
        iinstream.printStackTrace();
          goto _L10
        iinstream;
        iinstream.printStackTrace();
        a = null;
        flag = flag1;
          goto _L2
_L9:
        flag = true;
          goto _L2
_L7:
        i++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private static long b(ISimpleInArchiveItem isimpleinarchiveitem)
    {
        long l = -1L;
        try
        {
            isimpleinarchiveitem = isimpleinarchiveitem.getSize();
        }
        // Misplaced declaration of an exception variable
        catch (ISimpleInArchiveItem isimpleinarchiveitem)
        {
            isimpleinarchiveitem.printStackTrace();
            return -1L;
        }
        if (isimpleinarchiveitem == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        l = isimpleinarchiveitem.longValue();
        return l;
    }

    private static void b(File file)
    {
        boolean flag = false;
        File afile[] = file.listFiles();
        StringBuilder stringbuilder1 = new StringBuilder("Purging Cache of ");
        int i;
        if (afile == null)
        {
            i = 0;
        } else
        {
            i = afile.length;
        }
        stringbuilder1.append(i).append(" files");
        if (afile != null)
        {
            int j = afile.length;
            for (i = 0; i < j; i++)
            {
                agz.a(afile[i]);
            }

            file = file.listFiles();
            StringBuilder stringbuilder = new StringBuilder("Purged Cache ");
            if (file == null)
            {
                i = ((flag) ? 1 : 0);
            } else
            {
                i = file.length;
            }
            stringbuilder.append(i).append(" files remaining.");
        }
    }

    private boolean e()
    {
        boolean flag1 = true;
        ArchiveFormat archiveformat = a.getArchiveFormat();
        boolean flag = flag1;
        if (archiveformat != ArchiveFormat.SEVEN_ZIP)
        {
            flag = flag1;
            if (archiveformat != ArchiveFormat.TAR)
            {
                Object obj;
                ExtractOperationResult extractoperationresult;
                try
                {
                    obj = new net.sf.sevenzipjbinding.impl.InArchiveImpl.ExtractSlowCallback(null);
                    a.extract(new int[] {
                        ((ISimpleInArchiveItem)b.get(0)).getItemIndex()
                    }, true, ((IArchiveExtractCallback) (obj)));
                    obj = ((net.sf.sevenzipjbinding.impl.InArchiveImpl.ExtractSlowCallback) (obj)).getExtractOperationResult();
                    extractoperationresult = ExtractOperationResult.OK;
                }
                catch (SevenZipException sevenzipexception)
                {
                    sevenzipexception.printStackTrace();
                    return false;
                }
                if (obj == extractoperationresult)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
        }
        return flag;
    }

    private void f()
    {
        int ai[];
        Object obj;
        ISimpleInArchiveItem isimpleinarchiveitem;
        Exception exception1;
        int i;
        long l;
        long l1;
        try
        {
            ai = new int[b.size()];
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        l = 0L;
        obj = b.iterator();
        i = 0;
_L2:
        if (!((Iterator) (obj)).hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        isimpleinarchiveitem = (ISimpleInArchiveItem)((Iterator) (obj)).next();
        ai[i] = isimpleinarchiveitem.getItemIndex();
        l1 = isimpleinarchiveitem.getSize().longValue();
        l = l1 + l;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
        exception1;
        exception1.printStackTrace();
          goto _L3
_L1:
        obj = agv.f();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_205;
        }
        if (!((File) (obj)).exists())
        {
            return;
        }
        if (l >= ahc.a())
        {
            break MISSING_BLOCK_LABEL_205;
        }
        d = new File((new StringBuilder()).append(((File) (obj)).getAbsolutePath()).append("/pages").toString());
        if (!d.exists())
        {
            break MISSING_BLOCK_LABEL_194;
        }
        b(d);
_L4:
        a.extract(ai, false, new IArchiveExtractCallback() {

            final afc a;

            public final ISequentialOutStream getStream(int j, ExtractAskMode extractaskmode)
            {
                try
                {
                    extractaskmode = new sj(a.b(j));
                }
                // Misplaced declaration of an exception variable
                catch (ExtractAskMode extractaskmode)
                {
                    throw new SevenZipException(extractaskmode);
                }
                return extractaskmode;
            }

            public final void prepareOperation(ExtractAskMode extractaskmode)
            {
            }

            public final void setCompleted(long l2)
            {
            }

            public final void setOperationResult(ExtractOperationResult extractoperationresult)
            {
            }

            public final void setTotal(long l2)
            {
            }

            
            {
                a = afc.this;
                super();
            }
        });
        e = true;
        return;
        d.mkdir();
          goto _L4
    }

    public final aff a(int i)
    {
        return new afd((ISimpleInArchiveItem)b.get(i), b(((ISimpleInArchiveItem)b.get(i)).getItemIndex()));
    }

    public final void a()
    {
        ArchiveFormat archiveformat = a.getArchiveFormat();
        if (archiveformat == ArchiveFormat.SEVEN_ZIP || archiveformat == ArchiveFormat.TAR)
        {
            (new StringBuilder("Preparing page cache for format: ")).append(archiveformat);
            f();
        }
    }

    public final boolean a(File file)
    {
        boolean flag;
        try
        {
            flag = a(((IInStream) (new RandomAccessFileInStream(new RandomAccessFile(file, "r")))));
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
            return false;
        }
        return flag;
    }

    public final File b(int i)
    {
        if (d != null)
        {
            return new File((new StringBuilder()).append(d.getAbsolutePath()).append("/").append(i).toString());
        } else
        {
            return null;
        }
    }

    public final void b()
    {
        if (e)
        {
            b(d);
        }
        if (a != null)
        {
            try
            {
                a.close();
                a = null;
            }
            catch (SevenZipException sevenzipexception)
            {
                sevenzipexception.printStackTrace();
                a = null;
            }
        }
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        c.close();
        c = null;
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    public final int c()
    {
        return b.size();
    }

    public final afa.a d()
    {
        return afa.a.d;
    }
}
