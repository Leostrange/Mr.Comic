// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.channels.FileChannel;
import java.util.Collection;
import java.util.LinkedList;

public final class ahk
{

    public static final BigInteger a;
    public static final BigInteger b;
    public static final BigInteger c;
    public static final BigInteger d;
    public static final BigInteger e;
    public static final BigInteger f;
    public static final BigInteger g;
    public static final BigInteger h;
    public static final File i[] = new File[0];

    public static Collection a(File file)
    {
        ahu ahu2 = ahy.b;
        ahu ahu1 = ahy.b;
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder("Parameter 'directory' is not a directory: ")).append(file).toString());
        }
        if (ahu2 == null)
        {
            throw new NullPointerException("Parameter 'fileFilter' is null");
        }
        ahu2 = aht.a(new ahu[] {
            ahu2, aht.a(ahr.b)
        });
        LinkedList linkedlist;
        if (ahu1 == null)
        {
            ahu1 = ahs.b;
        } else
        {
            ahu1 = aht.a(new ahu[] {
                ahu1, ahr.b
            });
        }
        linkedlist = new LinkedList();
        a(((Collection) (linkedlist)), file, aht.b(new ahu[] {
            ahu2, ahu1
        }), false);
        return linkedlist;
    }

    public static void a(File file, File file1)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists())
        {
            throw new FileNotFoundException((new StringBuilder("Source '")).append(file).append("' does not exist").toString());
        }
        if (file.isDirectory())
        {
            throw new IOException((new StringBuilder("Source '")).append(file).append("' is a directory").toString());
        }
        if (file1.exists())
        {
            throw new ahj((new StringBuilder("Destination '")).append(file1).append("' already exists").toString());
        }
        if (file1.isDirectory())
        {
            throw new IOException((new StringBuilder("Destination '")).append(file1).append("' is a directory").toString());
        }
        if (!file.renameTo(file1))
        {
            if (file == null)
            {
                throw new NullPointerException("Source must not be null");
            }
            if (file1 == null)
            {
                throw new NullPointerException("Destination must not be null");
            }
            if (!file.exists())
            {
                throw new FileNotFoundException((new StringBuilder("Source '")).append(file).append("' does not exist").toString());
            }
            if (file.isDirectory())
            {
                throw new IOException((new StringBuilder("Source '")).append(file).append("' exists but is a directory").toString());
            }
            if (file.getCanonicalPath().equals(file1.getCanonicalPath()))
            {
                throw new IOException((new StringBuilder("Source '")).append(file).append("' and destination '").append(file1).append("' are the same").toString());
            }
            File file2 = file1.getParentFile();
            if (file2 != null && !file2.mkdirs() && !file2.isDirectory())
            {
                throw new IOException((new StringBuilder("Destination '")).append(file2).append("' directory cannot be created").toString());
            }
            if (file1.exists() && !file1.canWrite())
            {
                throw new IOException((new StringBuilder("Destination '")).append(file1).append("' exists but is read-only").toString());
            }
            b(file, file1);
            if (!file.delete())
            {
                b(file1);
                throw new IOException((new StringBuilder("Failed to delete original file '")).append(file).append("' after copy to '").append(file1).append("'").toString());
            }
        }
    }

    private static void a(Collection collection, File file, ahu ahu1, boolean flag)
    {
        file = file.listFiles(ahu1);
        if (file != null)
        {
            int k = file.length;
            int j = 0;
            while (j < k) 
            {
                File file1 = file[j];
                if (file1.isDirectory())
                {
                    if (flag)
                    {
                        collection.add(file1);
                    }
                    a(collection, file1, ahu1, flag);
                } else
                {
                    collection.add(file1);
                }
                j++;
            }
        }
    }

    private static void b(File file, File file1)
    {
        Object obj1;
        Object obj2;
        if (file1.exists() && file1.isDirectory())
        {
            throw new IOException((new StringBuilder("Destination '")).append(file1).append("' exists but is a directory").toString());
        }
        obj1 = null;
        obj2 = null;
        Object obj = new FileInputStream(file);
        obj1 = new FileOutputStream(file1);
        obj2 = ((FileInputStream) (obj)).getChannel();
        FileChannel filechannel = ((FileOutputStream) (obj1)).getChannel();
        long l3 = ((FileChannel) (obj2)).size();
        long l = 0L;
          goto _L1
_L7:
        long l1;
        l1 = filechannel.transferFrom(((java.nio.channels.ReadableByteChannel) (obj2)), l, l1);
        if (l1 == 0L) goto _L3; else goto _L2
_L2:
        l += l1;
          goto _L1
_L3:
        ahn.a(new Closeable[] {
            filechannel, obj1, obj2, obj
        });
        l = file.length();
        l1 = file1.length();
        if (l != l1)
        {
            throw new IOException((new StringBuilder("Failed to copy full contents from '")).append(file).append("' to '").append(file1).append("' Expected length: ").append(l).append(" Actual: ").append(l1).toString());
        } else
        {
            file1.setLastModified(file.lastModified());
            return;
        }
        file;
        obj = null;
        file1 = null;
_L4:
        ahn.a(new Closeable[] {
            file1, obj2, obj, obj1
        });
        throw file;
        file;
        obj1 = obj;
        file1 = null;
        obj = null;
        continue; /* Loop/switch isn't completed */
        file;
        Object obj3 = obj;
        obj = null;
        file1 = null;
        obj2 = obj1;
        obj1 = obj3;
        continue; /* Loop/switch isn't completed */
        file;
        Object obj4 = obj;
        obj = obj2;
        file1 = null;
        obj2 = obj1;
        obj1 = obj4;
        continue; /* Loop/switch isn't completed */
        file;
        Object obj5 = obj;
        file1 = filechannel;
        obj = obj2;
        obj2 = obj1;
        obj1 = obj5;
        if (true) goto _L4; else goto _L1
_L1:
        if (l >= l3) goto _L3; else goto _L5
_L5:
        long l2 = l3 - l;
        l1 = l2;
        if (l2 > 0x1e00000L)
        {
            l1 = 0x1e00000L;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static boolean b(File file)
    {
        if (file == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            if (file.isDirectory())
            {
                e(file);
            }
        }
        catch (Exception exception) { }
        try
        {
            flag = file.delete();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return false;
        }
        return flag;
    }

    public static long c(File file)
    {
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is not a directory").toString());
        } else
        {
            return f(file);
        }
    }

    private static void d(File file)
    {
        if (file.exists())
        {
            if (!g(file))
            {
                e(file);
            }
            if (!file.delete())
            {
                throw new IOException((new StringBuilder("Unable to delete directory ")).append(file).append(".").toString());
            }
        }
    }

    private static void e(File file)
    {
        File afile[];
        int j;
        int k;
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is not a directory").toString());
        }
        afile = file.listFiles();
        if (afile == null)
        {
            throw new IOException((new StringBuilder("Failed to list contents of ")).append(file).toString());
        }
        k = afile.length;
        file = null;
        j = 0;
_L2:
        File file1;
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        file1 = afile[j];
        if (file1.isDirectory())
        {
            d(file1);
            break MISSING_BLOCK_LABEL_211;
        }
        boolean flag;
        flag = file1.exists();
        if (file1.delete())
        {
            break MISSING_BLOCK_LABEL_211;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        throw new FileNotFoundException((new StringBuilder("File does not exist: ")).append(file1).toString());
        throw new IOException((new StringBuilder("Unable to delete file: ")).append(file1).toString());
        if (file != null)
        {
            throw file;
        } else
        {
            return;
        }
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        file;
          goto _L3
    }

    private static long f(File file)
    {
        file = file.listFiles();
        if (file != null) goto _L2; else goto _L1
_L1:
        long l1 = 0L;
_L4:
        return l1;
_L2:
        int j;
        int k;
        long l;
        k = file.length;
        j = 0;
        l = 0L;
_L6:
        l1 = l;
        if (j >= k) goto _L4; else goto _L3
_L3:
        File file1;
        file1 = file[j];
        l1 = l;
label0:
        {
            if (g(file1))
            {
                break MISSING_BLOCK_LABEL_102;
            }
            if (file1.isDirectory())
            {
                l1 = f(file1);
                break label0;
            }
            try
            {
                l1 = file1.length();
            }
            catch (IOException ioexception)
            {
                l1 = l;
                break MISSING_BLOCK_LABEL_102;
            }
        }
        l += l1;
        l1 = l;
        if (l < 0L) goto _L4; else goto _L5
_L5:
        l1 = l;
        j++;
        l = l1;
          goto _L6
    }

    private static boolean g(File file)
    {
        if (aho.a())
        {
            return aho.a(file);
        }
        if (file == null)
        {
            throw new NullPointerException("File must not be null");
        }
        if (ahl.a())
        {
            return false;
        }
        File file1;
        if (file.getParent() == null)
        {
            file1 = file;
        } else
        {
            file1 = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        if (file1.getCanonicalFile().equals(file1.getAbsoluteFile()))
        {
            if (!file.exists())
            {
                file = file.getCanonicalFile();
                file1 = file.getParentFile();
                if (file1 == null || !file1.exists())
                {
                    return false;
                }
                file = file1.listFiles(new FileFilter(file) {

                    final File a;

                    public final boolean accept(File file2)
                    {
                        return file2.equals(a);
                    }

            
            {
                a = file;
                super();
            }
                });
                if (file != null && file.length > 0)
                {
                    return true;
                }
            }
            return false;
        } else
        {
            return true;
        }
    }

    static 
    {
        BigInteger biginteger = BigInteger.valueOf(1024L);
        a = biginteger;
        b = biginteger.multiply(biginteger);
        c = a.multiply(b);
        d = a.multiply(c);
        e = a.multiply(d);
        f = a.multiply(e);
        g = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(0x1000000000000000L));
        h = a.multiply(g);
    }
}
