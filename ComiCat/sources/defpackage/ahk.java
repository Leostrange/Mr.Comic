package defpackage;

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

/* renamed from: ahk  reason: default package */
/* compiled from: FileUtils */
public final class ahk {
    public static final BigInteger a;
    public static final BigInteger b;
    public static final BigInteger c = a.multiply(b);
    public static final BigInteger d = a.multiply(c);
    public static final BigInteger e = a.multiply(d);
    public static final BigInteger f = a.multiply(e);
    public static final BigInteger g = BigInteger.valueOf(1024).multiply(BigInteger.valueOf(1152921504606846976L));
    public static final BigInteger h = a.multiply(g);
    public static final File[] i = new File[0];

    static {
        BigInteger valueOf = BigInteger.valueOf(1024);
        a = valueOf;
        b = valueOf.multiply(valueOf);
    }

    public static Collection<File> a(File file) {
        ahu a2;
        ahu ahu = ahy.b;
        ahu ahu2 = ahy.b;
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("Parameter 'directory' is not a directory: " + file);
        } else if (ahu == null) {
            throw new NullPointerException("Parameter 'fileFilter' is null");
        } else {
            ahu a3 = aht.a(ahu, aht.a(ahr.b));
            if (ahu2 == null) {
                a2 = ahs.b;
            } else {
                a2 = aht.a(ahu2, ahr.b);
            }
            LinkedList linkedList = new LinkedList();
            a(linkedList, file, aht.b(a3, a2), false);
            return linkedList;
        }
    }

    public static void a(File file, File file2) {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' is a directory");
        } else if (file2.exists()) {
            throw new ahj("Destination '" + file2 + "' already exists");
        } else if (file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' is a directory");
        } else if (file.renameTo(file2)) {
        } else {
            if (file == null) {
                throw new NullPointerException("Source must not be null");
            } else if (file2 == null) {
                throw new NullPointerException("Destination must not be null");
            } else if (!file.exists()) {
                throw new FileNotFoundException("Source '" + file + "' does not exist");
            } else if (file.isDirectory()) {
                throw new IOException("Source '" + file + "' exists but is a directory");
            } else if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
                throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
            } else {
                File parentFile = file2.getParentFile();
                if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                    throw new IOException("Destination '" + parentFile + "' directory cannot be created");
                } else if (!file2.exists() || file2.canWrite()) {
                    b(file, file2);
                    if (!file.delete()) {
                        b(file2);
                        throw new IOException("Failed to delete original file '" + file + "' after copy to '" + file2 + "'");
                    }
                } else {
                    throw new IOException("Destination '" + file2 + "' exists but is read-only");
                }
            }
        }
    }

    private static void a(Collection<File> collection, File file, ahu ahu, boolean z) {
        File[] listFiles = file.listFiles(ahu);
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    if (z) {
                        collection.add(file2);
                    }
                    a(collection, file2, ahu, z);
                } else {
                    collection.add(file2);
                }
            }
        }
    }

    private static void b(File file, File file2) {
        FileChannel fileChannel;
        FileChannel fileChannel2;
        if (!file2.exists() || !file2.isDirectory()) {
            FileInputStream fileInputStream = null;
            FileOutputStream fileOutputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        FileChannel channel = fileInputStream2.getChannel();
                        try {
                            FileChannel channel2 = fileOutputStream2.getChannel();
                            try {
                                long size = channel.size();
                                long j = 0;
                                while (j < size) {
                                    long j2 = size - j;
                                    if (j2 > 31457280) {
                                        j2 = 31457280;
                                    }
                                    long transferFrom = channel2.transferFrom(channel, j, j2);
                                    if (transferFrom == 0) {
                                        break;
                                    }
                                    j += transferFrom;
                                }
                                ahn.a(channel2, fileOutputStream2, channel, fileInputStream2);
                                long length = file.length();
                                long length2 = file2.length();
                                if (length != length2) {
                                    throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "' Expected length: " + length + " Actual: " + length2);
                                }
                                file2.setLastModified(file.lastModified());
                            } catch (Throwable th) {
                                fileOutputStream = fileOutputStream2;
                                fileInputStream = fileInputStream2;
                                FileChannel fileChannel3 = channel;
                                fileChannel2 = channel2;
                                th = th;
                                fileChannel = fileChannel3;
                                ahn.a(fileChannel2, fileOutputStream, fileChannel, fileInputStream);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            fileInputStream = fileInputStream2;
                            fileChannel = channel;
                            fileChannel2 = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = fileOutputStream2;
                        fileInputStream = fileInputStream2;
                        fileChannel = null;
                        fileChannel2 = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = fileInputStream2;
                    fileChannel2 = null;
                    fileChannel = null;
                    ahn.a(fileChannel2, fileOutputStream, fileChannel, fileInputStream);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                fileChannel = null;
                fileChannel2 = null;
                ahn.a(fileChannel2, fileOutputStream, fileChannel, fileInputStream);
                throw th;
            }
        } else {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
    }

    public static boolean b(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                e(file);
            }
        } catch (Exception e2) {
        }
        try {
            return file.delete();
        } catch (Exception e3) {
            return false;
        }
    }

    public static long c(File file) {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (file.isDirectory()) {
            return f(file);
        } else {
            throw new IllegalArgumentException(file + " is not a directory");
        }
    }

    private static void d(File file) {
        if (file.exists()) {
            if (!g(file)) {
                e(file);
            }
            if (!file.delete()) {
                throw new IOException("Unable to delete directory " + file + ".");
            }
        }
    }

    private static void e(File file) {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("Failed to list contents of " + file);
            }
            IOException e2 = null;
            for (File file2 : listFiles) {
                try {
                    if (file2.isDirectory()) {
                        d(file2);
                    } else {
                        boolean exists = file2.exists();
                        if (!file2.delete()) {
                            if (!exists) {
                                throw new FileNotFoundException("File does not exist: " + file2);
                            }
                            throw new IOException("Unable to delete file: " + file2);
                        }
                    }
                } catch (IOException e3) {
                    e2 = e3;
                }
            }
            if (e2 != null) {
                throw e2;
            }
        }
    }

    private static long f(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return 0;
        }
        long j = 0;
        for (File file2 : listFiles) {
            try {
                if (g(file2)) {
                    continue;
                } else {
                    j += file2.isDirectory() ? f(file2) : file2.length();
                    if (j < 0) {
                        return j;
                    }
                }
            } catch (IOException e2) {
            }
        }
        return j;
    }

    private static boolean g(File file) {
        if (aho.a()) {
            return aho.a(file);
        }
        if (file == null) {
            throw new NullPointerException("File must not be null");
        } else if (ahl.a()) {
            return false;
        } else {
            File file2 = file.getParent() == null ? file : new File(file.getParentFile().getCanonicalFile(), file.getName());
            if (!file2.getCanonicalFile().equals(file2.getAbsoluteFile())) {
                return true;
            }
            if (!file.exists()) {
                final File canonicalFile = file.getCanonicalFile();
                File parentFile = canonicalFile.getParentFile();
                if (parentFile == null || !parentFile.exists()) {
                    return false;
                }
                File[] listFiles = parentFile.listFiles(new FileFilter() {
                    public final boolean accept(File file) {
                        return file.equals(canonicalFile);
                    }
                });
                if (listFiles != null && listFiles.length > 0) {
                    return true;
                }
            }
            return false;
        }
    }
}
