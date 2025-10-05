package net.sf.sevenzipjbinding;

import com.box.androidsdk.content.BoxConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

public class SevenZip {
    private static final String PROPERTY_SEVENZIPJBINDING_LIBNAME = "sevenzipjbinding.libname.%s";
    private static final String SEVENZIPJBINDING_LIB_PROPERTIES_FILENAME = "sevenzipjbinding-lib.properties";
    private static final String SEVENZIPJBINDING_PLATFORMS_PROPRETIES_FILENAME = "/sevenzipjbinding-platforms.properties";
    private static final String SYSTEM_PROPERTY_SEVEN_ZIP_NO_DO_PRIVILEGED_INITIALIZATION = "sevenzip.no_doprivileged_initialization";
    private static final String SYSTEM_PROPERTY_TMP = "java.io.tmpdir";
    private static boolean autoInitializationWillOccur = true;
    private static List<String> availablePlatforms = null;
    private static boolean initializationSuccessful = false;
    private static SevenZipNativeInitializationException lastInitializationException = null;
    private static String usedPlatform = null;

    public static final class ArchiveOpenCryptoCallback implements IArchiveOpenCallback, ICryptoGetTextPassword {
        private final String passwordForOpen;

        public ArchiveOpenCryptoCallback(String str) {
            this.passwordForOpen = str;
        }

        public final String cryptoGetTextPassword() {
            return this.passwordForOpen;
        }

        public final void setCompleted(Long l, Long l2) {
        }

        public final void setTotal(Long l, Long l2) {
        }
    }

    public static class DummyOpenArchiveCallback implements IArchiveOpenCallback, ICryptoGetTextPassword {
        public String cryptoGetTextPassword() {
            throw new SevenZipException("No password was provided for opening protected archive.");
        }

        public void setCompleted(Long l, Long l2) {
        }

        public void setTotal(Long l, Long l2) {
        }
    }

    private SevenZip() {
    }

    private static ISevenZipInArchive callNativeOpenArchive(String str, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback) {
        if (iInStream != null) {
            return nativeOpenArchive(str, iInStream, iArchiveOpenCallback);
        }
        throw new NullPointerException("SevenZip.callNativeOpenArchive(...): inStream parameter is null");
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003e A[SYNTHETIC, Splitter:B:17:0x003e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void copyLibraryToFS(java.io.File r5, java.io.InputStream r6) {
        /*
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0056, all -> 0x0053 }
            r1.<init>(r5)     // Catch:{ Exception -> 0x0056, all -> 0x0053 }
            r0 = 65536(0x10000, float:9.18355E-41)
            byte[] r0 = new byte[r0]     // Catch:{ Exception -> 0x0015 }
        L_0x000a:
            int r2 = r6.read(r0)     // Catch:{ Exception -> 0x0015 }
            if (r2 <= 0) goto L_0x0042
            r3 = 0
            r1.write(r0, r3, r2)     // Catch:{ Exception -> 0x0015 }
            goto L_0x000a
        L_0x0015:
            r0 = move-exception
        L_0x0016:
            r0.printStackTrace()     // Catch:{ all -> 0x0038 }
            java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch:{ all -> 0x0038 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0038 }
            java.lang.String r4 = "Error initializing SevenZipJBinding native library: can't copy native library out of a resource file to the temporary location: '"
            r3.<init>(r4)     // Catch:{ all -> 0x0038 }
            java.lang.String r4 = r5.getAbsolutePath()     // Catch:{ all -> 0x0038 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0038 }
            java.lang.String r4 = "'"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0038 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0038 }
            r2.<init>(r3, r0)     // Catch:{ all -> 0x0038 }
            throw r2     // Catch:{ all -> 0x0038 }
        L_0x0038:
            r0 = move-exception
        L_0x0039:
            r6.close()     // Catch:{ IOException -> 0x004f }
        L_0x003c:
            if (r6 == 0) goto L_0x0041
            r1.close()     // Catch:{ IOException -> 0x0051 }
        L_0x0041:
            throw r0
        L_0x0042:
            r6.close()     // Catch:{ IOException -> 0x004b }
        L_0x0045:
            if (r6 == 0) goto L_0x004a
            r1.close()     // Catch:{ IOException -> 0x004d }
        L_0x004a:
            return
        L_0x004b:
            r0 = move-exception
            goto L_0x0045
        L_0x004d:
            r0 = move-exception
            goto L_0x004a
        L_0x004f:
            r2 = move-exception
            goto L_0x003c
        L_0x0051:
            r1 = move-exception
            goto L_0x0041
        L_0x0053:
            r0 = move-exception
            r1 = r2
            goto L_0x0039
        L_0x0056:
            r0 = move-exception
            r1 = r2
            goto L_0x0016
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sf.sevenzipjbinding.SevenZip.copyLibraryToFS(java.io.File, java.io.InputStream):void");
    }

    private static void ensureLibraryIsInitialized() {
        if (autoInitializationWillOccur) {
            autoInitializationWillOccur = false;
            try {
                initSevenZipFromPlatformJAR();
            } catch (SevenZipNativeInitializationException e) {
                lastInitializationException = e;
                throw new RuntimeException("SevenZipJBinding couldn't be initialized automaticly using initialization from platform depended JAR and the default temporary directory. Please, make sure the correct 'sevenzipjbinding-<Platform>.jar' file is in the class path or consider initializing SevenZipJBinding manualy using one of the offered initialization methods: 'net.sf.sevenzipjbinding.SevenZip.init*()'", e);
            }
        }
        if (!initializationSuccessful) {
            throw new RuntimeException("SevenZipJBinding wasn't initialized successfully last time.", lastInitializationException);
        }
    }

    public static Throwable getLastInitializationException() {
        return lastInitializationException;
    }

    private static String getPlatformBestMatch() {
        List<String> platformList = getPlatformList();
        if (platformList.size() == 1) {
            return platformList.get(0);
        }
        String property = System.getProperty("os.arch");
        String str = System.getProperty("os.name").split(" ")[0];
        if (platformList.contains(str + "-" + property)) {
            return str + "-" + property;
        }
        StringBuilder sb = new StringBuilder("Can't find suited platform for os.arch=");
        sb.append(property);
        sb.append(", os.name=");
        sb.append(str);
        sb.append("... Available list of platforms: ");
        for (String append : platformList) {
            sb.append(append);
            sb.append(", ");
        }
        sb.setLength(sb.length() - 2);
        throwInitException(sb.toString());
        return null;
    }

    public static List<String> getPlatformList() {
        if (availablePlatforms != null) {
            return availablePlatforms;
        }
        InputStream resourceAsStream = SevenZip.class.getResourceAsStream(SEVENZIPJBINDING_PLATFORMS_PROPRETIES_FILENAME);
        if (resourceAsStream == null) {
            throw new SevenZipNativeInitializationException("Can not find 7-Zip-JBinding platform property file /sevenzipjbinding-platforms.properties. Make sure the 'sevenzipjbinding-<Platform>.jar' file is in the class path or consider initializing SevenZipJBinding manualy using one of the offered initialization methods: 'net.sf.sevenzipjbinding.SevenZip.init*()'");
        }
        Properties properties = new Properties();
        try {
            properties.load(resourceAsStream);
        } catch (IOException e) {
            throwInitException(e, "Error loading existing property file /sevenzipjbinding-platforms.properties");
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            String property = properties.getProperty("platform." + i);
            if (property != null) {
                arrayList.add(property);
                i++;
            } else {
                availablePlatforms = arrayList;
                return arrayList;
            }
        }
    }

    public static String getUsedPlatform() {
        return usedPlatform;
    }

    public static void initLoadedLibraries() {
        if (!initializationSuccessful) {
            autoInitializationWillOccur = false;
            nativeInitialization();
        }
    }

    public static void initSevenZipFromPlatformJAR() {
        initSevenZipFromPlatformJARIntern((String) null, (File) null);
    }

    public static void initSevenZipFromPlatformJAR(File file) {
        initSevenZipFromPlatformJARIntern((String) null, file);
    }

    public static void initSevenZipFromPlatformJAR(String str) {
        initSevenZipFromPlatformJARIntern(str, (File) null);
    }

    public static void initSevenZipFromPlatformJAR(String str, File file) {
        initSevenZipFromPlatformJARIntern(str, file);
    }

    private static void initSevenZipFromPlatformJARIntern(String str, File file) {
        File file2;
        int i = 1;
        try {
            autoInitializationWillOccur = false;
            if (!initializationSuccessful) {
                if (str == null) {
                    str = getPlatformBestMatch();
                }
                usedPlatform = str;
                String str2 = "/" + str + "/";
                InputStream resourceAsStream = SevenZip.class.getResourceAsStream(str2 + SEVENZIPJBINDING_LIB_PROPERTIES_FILENAME);
                if (resourceAsStream == null) {
                    throwInitException("error loading property file '" + str2 + "sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar'. Is the platform jar-file not in the class path?");
                }
                Properties properties = new Properties();
                try {
                    properties.load(resourceAsStream);
                } catch (IOException e) {
                    throwInitException("error loading property file 'sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar'");
                }
                if (file != null) {
                    file2 = file;
                } else {
                    String property = System.getProperty(SYSTEM_PROPERTY_TMP);
                    if (property == null) {
                        throwInitException("can't determinte tmp directory. Use may use -Djava.io.tmpdir=<path to tmp dir> parameter for jvm to fix this.");
                    }
                    file2 = new File(property);
                }
                if (!file2.exists() || !file2.isDirectory()) {
                    throwInitException("invalid tmp directory '" + file + "'");
                }
                if (!file2.canWrite()) {
                    throwInitException("can't create files in '" + file2.getAbsolutePath() + "'");
                }
                File file3 = new File(file2.getAbsolutePath() + File.separator + "SevenZipJBinding-" + new Random().nextInt(10000000));
                if (!file3.mkdir()) {
                    throwInitException("Directory '" + file2.getAbsolutePath() + "' couldn't be created");
                }
                file3.deleteOnExit();
                ArrayList arrayList = new ArrayList(2);
                while (true) {
                    String format = String.format(PROPERTY_SEVENZIPJBINDING_LIBNAME, new Object[]{Integer.valueOf(i)});
                    String property2 = properties.getProperty(format);
                    if (property2 == null) {
                        if (arrayList.size() != 0) {
                            break;
                        }
                        throwInitException("property file 'sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar' don't contain the property named '" + format + "'");
                    }
                    File file4 = new File(file3.getAbsolutePath() + File.separatorChar + property2);
                    file4.deleteOnExit();
                    InputStream resourceAsStream2 = SevenZip.class.getResourceAsStream(str2 + property2);
                    if (resourceAsStream2 == null) {
                        throwInitException("error loading native library '" + property2 + "' from a jar-file 'sevenzipjbinding-<Platform>.jar'.");
                    }
                    copyLibraryToFS(file4, resourceAsStream2);
                    arrayList.add(file4);
                    i++;
                }
                for (int size = arrayList.size() - 1; size != -1; size--) {
                    System.load(((File) arrayList.get(size)).getAbsolutePath());
                }
                nativeInitialization();
            }
        } catch (SevenZipNativeInitializationException e2) {
            lastInitializationException = e2;
            throw e2;
        }
    }

    public static boolean isAutoInitializationWillOccur() {
        return autoInitializationWillOccur;
    }

    public static boolean isInitializedSuccessfully() {
        return initializationSuccessful;
    }

    public static native String nativeInitSevenZipLibrary();

    private static void nativeInitialization() {
        String property = System.getProperty(SYSTEM_PROPERTY_SEVEN_ZIP_NO_DO_PRIVILEGED_INITIALIZATION);
        final String[] strArr = new String[1];
        final Throwable[] thArr = new Throwable[1];
        if (property == null || property.trim().equals(BoxConstants.ROOT_FOLDER_ID)) {
            AccessController.doPrivileged(new PrivilegedAction<Void>() {
                public final Void run() {
                    try {
                        strArr[0] = SevenZip.nativeInitSevenZipLibrary();
                        return null;
                    } catch (Throwable th) {
                        thArr[0] = th;
                        return null;
                    }
                }
            });
        } else {
            strArr[0] = nativeInitSevenZipLibrary();
        }
        if (strArr[0] == null && thArr[0] == null) {
            initializationSuccessful = true;
            return;
        }
        String str = strArr[0];
        if (str == null) {
            str = "No message";
        }
        SevenZipNativeInitializationException sevenZipNativeInitializationException = new SevenZipNativeInitializationException("Error initializing 7-Zip-JBinding: " + str, thArr[0]);
        lastInitializationException = sevenZipNativeInitializationException;
        throw sevenZipNativeInitializationException;
    }

    public static native ISevenZipInArchive nativeOpenArchive(String str, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback);

    public static ISevenZipInArchive openInArchive(ArchiveFormat archiveFormat, IInStream iInStream) {
        ensureLibraryIsInitialized();
        return archiveFormat != null ? callNativeOpenArchive(archiveFormat.getMethodName(), iInStream, new DummyOpenArchiveCallback()) : callNativeOpenArchive((String) null, iInStream, new DummyOpenArchiveCallback());
    }

    public static ISevenZipInArchive openInArchive(ArchiveFormat archiveFormat, IInStream iInStream, String str) {
        ensureLibraryIsInitialized();
        return archiveFormat != null ? callNativeOpenArchive(archiveFormat.getMethodName(), iInStream, new ArchiveOpenCryptoCallback(str)) : callNativeOpenArchive((String) null, iInStream, new ArchiveOpenCryptoCallback(str));
    }

    public static ISevenZipInArchive openInArchive(ArchiveFormat archiveFormat, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback) {
        ensureLibraryIsInitialized();
        return archiveFormat != null ? callNativeOpenArchive(archiveFormat.getMethodName(), iInStream, iArchiveOpenCallback) : callNativeOpenArchive((String) null, iInStream, iArchiveOpenCallback);
    }

    private static void throwInitException(Exception exc, String str) {
        throw new SevenZipNativeInitializationException("Error loading SevenZipJBinding native library into JVM: " + str + " [You may also try different SevenZipJBinding initialization methods 'net.sf.sevenzipjbinding.SevenZip.init*()' in order to solve this problem] ", exc);
    }

    private static void throwInitException(String str) {
        throwInitException((Exception) null, str);
    }
}
