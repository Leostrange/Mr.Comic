// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;

// Referenced classes of package net.sf.sevenzipjbinding:
//            SevenZipNativeInitializationException, ArchiveFormat, IInStream, IArchiveOpenCallback, 
//            ISevenZipInArchive, ICryptoGetTextPassword, SevenZipException

public class SevenZip
{
    public static final class ArchiveOpenCryptoCallback
        implements IArchiveOpenCallback, ICryptoGetTextPassword
    {

        private final String passwordForOpen;

        public final String cryptoGetTextPassword()
        {
            return passwordForOpen;
        }

        public final void setCompleted(Long long1, Long long2)
        {
        }

        public final void setTotal(Long long1, Long long2)
        {
        }

        public ArchiveOpenCryptoCallback(String s)
        {
            passwordForOpen = s;
        }
    }

    public static class DummyOpenArchiveCallback
        implements IArchiveOpenCallback, ICryptoGetTextPassword
    {

        public String cryptoGetTextPassword()
        {
            throw new SevenZipException("No password was provided for opening protected archive.");
        }

        public void setCompleted(Long long1, Long long2)
        {
        }

        public void setTotal(Long long1, Long long2)
        {
        }

        public DummyOpenArchiveCallback()
        {
        }
    }


    private static final String PROPERTY_SEVENZIPJBINDING_LIBNAME = "sevenzipjbinding.libname.%s";
    private static final String SEVENZIPJBINDING_LIB_PROPERTIES_FILENAME = "sevenzipjbinding-lib.properties";
    private static final String SEVENZIPJBINDING_PLATFORMS_PROPRETIES_FILENAME = "/sevenzipjbinding-platforms.properties";
    private static final String SYSTEM_PROPERTY_SEVEN_ZIP_NO_DO_PRIVILEGED_INITIALIZATION = "sevenzip.no_doprivileged_initialization";
    private static final String SYSTEM_PROPERTY_TMP = "java.io.tmpdir";
    private static boolean autoInitializationWillOccur = true;
    private static List availablePlatforms = null;
    private static boolean initializationSuccessful = false;
    private static SevenZipNativeInitializationException lastInitializationException = null;
    private static String usedPlatform = null;

    private SevenZip()
    {
    }

    private static ISevenZipInArchive callNativeOpenArchive(String s, IInStream iinstream, IArchiveOpenCallback iarchiveopencallback)
    {
        if (iinstream == null)
        {
            throw new NullPointerException("SevenZip.callNativeOpenArchive(...): inStream parameter is null");
        } else
        {
            return nativeOpenArchive(s, iinstream, iarchiveopencallback);
        }
    }

    private static void copyLibraryToFS(File file, InputStream inputstream)
    {
        Object obj1 = new FileOutputStream(file);
        Object obj = obj1;
        byte abyte0[] = new byte[0x10000];
_L2:
        obj = obj1;
        int i = inputstream.read(abyte0);
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = obj1;
        ((FileOutputStream) (obj1)).write(abyte0, 0, i);
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
_L6:
        obj = obj1;
        exception.printStackTrace();
        obj = obj1;
        throw new RuntimeException((new StringBuilder("Error initializing SevenZipJBinding native library: can't copy native library out of a resource file to the temporary location: '")).append(file.getAbsolutePath()).append("'").toString(), exception);
        file;
_L4:
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        if (inputstream != null)
        {
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream) { }
        }
        throw file;
_L1:
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        ((FileOutputStream) (obj1)).close();
        return;
        file;
        return;
        file;
        obj = null;
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        obj1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static void ensureLibraryIsInitialized()
    {
        if (autoInitializationWillOccur)
        {
            autoInitializationWillOccur = false;
            try
            {
                initSevenZipFromPlatformJAR();
            }
            catch (SevenZipNativeInitializationException sevenzipnativeinitializationexception)
            {
                lastInitializationException = sevenzipnativeinitializationexception;
                throw new RuntimeException("SevenZipJBinding couldn't be initialized automaticly using initialization from platform depended JAR and the default temporary directory. Please, make sure the correct 'sevenzipjbinding-<Platform>.jar' file is in the class path or consider initializing SevenZipJBinding manualy using one of the offered initialization methods: 'net.sf.sevenzipjbinding.SevenZip.init*()'", sevenzipnativeinitializationexception);
            }
        }
        if (!initializationSuccessful)
        {
            throw new RuntimeException("SevenZipJBinding wasn't initialized successfully last time.", lastInitializationException);
        } else
        {
            return;
        }
    }

    public static Throwable getLastInitializationException()
    {
        return lastInitializationException;
    }

    private static String getPlatformBestMatch()
    {
        Object obj = getPlatformList();
        if (((List) (obj)).size() == 1)
        {
            return (String)((List) (obj)).get(0);
        }
        String s = System.getProperty("os.arch");
        String s1 = System.getProperty("os.name").split(" ")[0];
        if (((List) (obj)).contains((new StringBuilder()).append(s1).append("-").append(s).toString()))
        {
            return (new StringBuilder()).append(s1).append("-").append(s).toString();
        }
        StringBuilder stringbuilder = new StringBuilder("Can't find suited platform for os.arch=");
        stringbuilder.append(s);
        stringbuilder.append(", os.name=");
        stringbuilder.append(s1);
        stringbuilder.append("... Available list of platforms: ");
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); stringbuilder.append(", "))
        {
            stringbuilder.append((String)((Iterator) (obj)).next());
        }

        stringbuilder.setLength(stringbuilder.length() - 2);
        throwInitException(stringbuilder.toString());
        return null;
    }

    public static List getPlatformList()
    {
        if (availablePlatforms != null)
        {
            return availablePlatforms;
        }
        Object obj = net/sf/sevenzipjbinding/SevenZip.getResourceAsStream("/sevenzipjbinding-platforms.properties");
        if (obj == null)
        {
            throw new SevenZipNativeInitializationException("Can not find 7-Zip-JBinding platform property file /sevenzipjbinding-platforms.properties. Make sure the 'sevenzipjbinding-<Platform>.jar' file is in the class path or consider initializing SevenZipJBinding manualy using one of the offered initialization methods: 'net.sf.sevenzipjbinding.SevenZip.init*()'");
        }
        Properties properties = new Properties();
        int i;
        try
        {
            properties.load(((InputStream) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throwInitException(((Exception) (obj)), "Error loading existing property file /sevenzipjbinding-platforms.properties");
        }
        obj = new ArrayList();
        i = 1;
        do
        {
            String s = properties.getProperty((new StringBuilder("platform.")).append(i).toString());
            if (s != null)
            {
                ((List) (obj)).add(s);
                i++;
            } else
            {
                availablePlatforms = ((List) (obj));
                return ((List) (obj));
            }
        } while (true);
    }

    public static String getUsedPlatform()
    {
        return usedPlatform;
    }

    public static void initLoadedLibraries()
    {
        if (initializationSuccessful)
        {
            return;
        } else
        {
            autoInitializationWillOccur = false;
            nativeInitialization();
            return;
        }
    }

    public static void initSevenZipFromPlatformJAR()
    {
        initSevenZipFromPlatformJARIntern(null, null);
    }

    public static void initSevenZipFromPlatformJAR(File file)
    {
        initSevenZipFromPlatformJARIntern(null, file);
    }

    public static void initSevenZipFromPlatformJAR(String s)
    {
        initSevenZipFromPlatformJARIntern(s, null);
    }

    public static void initSevenZipFromPlatformJAR(String s, File file)
    {
        initSevenZipFromPlatformJARIntern(s, file);
    }

    private static void initSevenZipFromPlatformJARIntern(String s, File file)
    {
        int i = 1;
        String s1;
        Properties properties;
        String s2;
        Object obj;
        InputStream inputstream;
        try
        {
            autoInitializationWillOccur = false;
            if (initializationSuccessful)
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            lastInitializationException = s;
            throw s;
        }
        s1 = s;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        s1 = getPlatformBestMatch();
        usedPlatform = s1;
        s1 = (new StringBuilder("/")).append(s1).append("/").toString();
        s = net/sf/sevenzipjbinding/SevenZip.getResourceAsStream((new StringBuilder()).append(s1).append("sevenzipjbinding-lib.properties").toString());
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        throwInitException((new StringBuilder("error loading property file '")).append(s1).append("sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar'. Is the platform jar-file not in the class path?").toString());
        properties = new Properties();
        properties.load(s);
_L4:
        if (file == null) goto _L2; else goto _L1
_L1:
        s = file;
_L5:
        if (!s.exists() || !s.isDirectory())
        {
            throwInitException((new StringBuilder("invalid tmp directory '")).append(file).append("'").toString());
        }
        if (!s.canWrite())
        {
            throwInitException((new StringBuilder("can't create files in '")).append(s.getAbsolutePath()).append("'").toString());
        }
        file = new File((new StringBuilder()).append(s.getAbsolutePath()).append(File.separator).append("SevenZipJBinding-").append((new Random()).nextInt(0x989680)).toString());
        if (!file.mkdir())
        {
            throwInitException((new StringBuilder("Directory '")).append(s.getAbsolutePath()).append("' couldn't be created").toString());
        }
        file.deleteOnExit();
        s = new ArrayList(2);
_L3:
        obj = String.format("sevenzipjbinding.libname.%s", new Object[] {
            Integer.valueOf(i)
        });
        s2 = properties.getProperty(((String) (obj)));
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_365;
        }
        if (s.size() != 0)
        {
            break MISSING_BLOCK_LABEL_535;
        }
        throwInitException((new StringBuilder("property file 'sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar' don't contain the property named '")).append(((String) (obj))).append("'").toString());
        obj = new File((new StringBuilder()).append(file.getAbsolutePath()).append(File.separatorChar).append(s2).toString());
        ((File) (obj)).deleteOnExit();
        inputstream = net/sf/sevenzipjbinding/SevenZip.getResourceAsStream((new StringBuilder()).append(s1).append(s2).toString());
        if (inputstream != null)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        throwInitException((new StringBuilder("error loading native library '")).append(s2).append("' from a jar-file 'sevenzipjbinding-<Platform>.jar'.").toString());
        copyLibraryToFS(((File) (obj)), inputstream);
        s.add(obj);
        i++;
          goto _L3
        s;
        throwInitException("error loading property file 'sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar'");
          goto _L4
_L2:
        s = System.getProperty("java.io.tmpdir");
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_523;
        }
        throwInitException("can't determinte tmp directory. Use may use -Djava.io.tmpdir=<path to tmp dir> parameter for jvm to fix this.");
        s = new File(s);
          goto _L5
        int j = s.size() - 1;
_L7:
        if (j == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        System.load(((File)s.get(j)).getAbsolutePath());
        j--;
        if (true) goto _L7; else goto _L6
_L6:
        nativeInitialization();
        return;
          goto _L4
    }

    public static boolean isAutoInitializationWillOccur()
    {
        return autoInitializationWillOccur;
    }

    public static boolean isInitializedSuccessfully()
    {
        return initializationSuccessful;
    }

    public static native String nativeInitSevenZipLibrary();

    private static void nativeInitialization()
    {
        String s = System.getProperty("sevenzip.no_doprivileged_initialization");
        Object obj1 = new String[1];
        Throwable athrowable[] = new Throwable[1];
        if (s == null || s.trim().equals("0"))
        {
            AccessController.doPrivileged(new PrivilegedAction(((String []) (obj1)), athrowable) {

                final String val$errorMessage[];
                final Throwable val$throwable[];

                public final volatile Object run()
                {
                    return run();
                }

                public final Void run()
                {
                    try
                    {
                        errorMessage[0] = SevenZip.nativeInitSevenZipLibrary();
                    }
                    catch (Throwable throwable1)
                    {
                        throwable[0] = throwable1;
                    }
                    return null;
                }

            
            {
                errorMessage = as;
                throwable = athrowable;
                super();
            }
            });
        } else
        {
            obj1[0] = nativeInitSevenZipLibrary();
        }
        if (obj1[0] != null || athrowable[0] != null)
        {
            obj1 = obj1[0];
            Object obj = obj1;
            if (obj1 == null)
            {
                obj = "No message";
            }
            obj = new SevenZipNativeInitializationException((new StringBuilder("Error initializing 7-Zip-JBinding: ")).append(((String) (obj))).toString(), athrowable[0]);
            lastInitializationException = ((SevenZipNativeInitializationException) (obj));
            throw obj;
        } else
        {
            initializationSuccessful = true;
            return;
        }
    }

    public static native ISevenZipInArchive nativeOpenArchive(String s, IInStream iinstream, IArchiveOpenCallback iarchiveopencallback);

    public static ISevenZipInArchive openInArchive(ArchiveFormat archiveformat, IInStream iinstream)
    {
        ensureLibraryIsInitialized();
        if (archiveformat != null)
        {
            return callNativeOpenArchive(archiveformat.getMethodName(), iinstream, new DummyOpenArchiveCallback());
        } else
        {
            return callNativeOpenArchive(null, iinstream, new DummyOpenArchiveCallback());
        }
    }

    public static ISevenZipInArchive openInArchive(ArchiveFormat archiveformat, IInStream iinstream, String s)
    {
        ensureLibraryIsInitialized();
        if (archiveformat != null)
        {
            return callNativeOpenArchive(archiveformat.getMethodName(), iinstream, new ArchiveOpenCryptoCallback(s));
        } else
        {
            return callNativeOpenArchive(null, iinstream, new ArchiveOpenCryptoCallback(s));
        }
    }

    public static ISevenZipInArchive openInArchive(ArchiveFormat archiveformat, IInStream iinstream, IArchiveOpenCallback iarchiveopencallback)
    {
        ensureLibraryIsInitialized();
        if (archiveformat != null)
        {
            return callNativeOpenArchive(archiveformat.getMethodName(), iinstream, iarchiveopencallback);
        } else
        {
            return callNativeOpenArchive(null, iinstream, iarchiveopencallback);
        }
    }

    private static void throwInitException(Exception exception, String s)
    {
        throw new SevenZipNativeInitializationException((new StringBuilder("Error loading SevenZipJBinding native library into JVM: ")).append(s).append(" [You may also try different SevenZipJBinding initialization methods 'net.sf.sevenzipjbinding.SevenZip.init*()' in order to solve this problem] ").toString(), exception);
    }

    private static void throwInitException(String s)
    {
        throwInitException(null, s);
    }

}
