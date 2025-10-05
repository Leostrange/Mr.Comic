package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

/* renamed from: b  reason: default package */
/* compiled from: MultiDex */
public final class b {
    private static final String a = ("code_cache" + File.separator + "secondary-dexes");
    private static final Set<String> b = new HashSet();
    private static final boolean c = a(System.getProperty("java.vm.version"));

    /* renamed from: b$a */
    /* compiled from: MultiDex */
    static final class a {
        static void a(ClassLoader classLoader, List<File> list) {
            int size = list.size();
            Field a = b.b(classLoader, BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
            StringBuilder sb = new StringBuilder((String) a.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':').append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = next;
                zipFileArr[previousIndex] = new ZipFile(next);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            a.set(classLoader, sb.toString());
            b.a((Object) classLoader, "mPaths", (Object[]) strArr);
            b.a((Object) classLoader, "mFiles", (Object[]) fileArr);
            b.a((Object) classLoader, "mZips", (Object[]) zipFileArr);
            b.a((Object) classLoader, "mDexs", (Object[]) dexFileArr);
        }
    }

    private static Method a(Object obj, String str, Class<?>... clsArr) {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00bb, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00bc, code lost:
        android.util.Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e1, code lost:
        android.util.Log.i("MultiDex", "install done");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:?, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r6) {
        /*
            java.lang.String r0 = "MultiDex"
            java.lang.String r1 = "install"
            android.util.Log.i(r0, r1)
            boolean r0 = c
            if (r0 == 0) goto L_0x0013
            java.lang.String r0 = "MultiDex"
            java.lang.String r1 = "VM has multidex support, MultiDex support library is disabled."
            android.util.Log.i(r0, r1)
        L_0x0012:
            return
        L_0x0013:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 4
            if (r0 >= r1) goto L_0x0035
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Multi dex installation failed. SDK "
            r1.<init>(r2)
            int r2 = android.os.Build.VERSION.SDK_INT
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " is unsupported. Min SDK version is 4."
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0035:
            android.content.pm.ApplicationInfo r0 = b(r6)     // Catch:{ Exception -> 0x004d }
            if (r0 == 0) goto L_0x0012
            java.util.Set<java.lang.String> r1 = b     // Catch:{ Exception -> 0x004d }
            monitor-enter(r1)     // Catch:{ Exception -> 0x004d }
            java.lang.String r2 = r0.sourceDir     // Catch:{ all -> 0x004a }
            java.util.Set<java.lang.String> r3 = b     // Catch:{ all -> 0x004a }
            boolean r3 = r3.contains(r2)     // Catch:{ all -> 0x004a }
            if (r3 == 0) goto L_0x0074
            monitor-exit(r1)     // Catch:{ all -> 0x004a }
            goto L_0x0012
        L_0x004a:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x004a }
            throw r0     // Catch:{ Exception -> 0x004d }
        L_0x004d:
            r0 = move-exception
            java.lang.String r1 = "MultiDex"
            java.lang.String r2 = "Multidex installation failure"
            android.util.Log.e(r1, r2, r0)
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Multi dex installation failed ("
            r2.<init>(r3)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r2 = ")."
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L_0x0074:
            java.util.Set<java.lang.String> r3 = b     // Catch:{ all -> 0x004a }
            r3.add(r2)     // Catch:{ all -> 0x004a }
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x004a }
            r3 = 20
            if (r2 <= r3) goto L_0x00ab
            java.lang.String r2 = "MultiDex"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x004a }
            java.lang.String r4 = "MultiDex is not guaranteed to work in SDK version "
            r3.<init>(r4)     // Catch:{ all -> 0x004a }
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x004a }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x004a }
            java.lang.String r4 = ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\""
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x004a }
            java.lang.String r4 = "java.vm.version"
            java.lang.String r4 = java.lang.System.getProperty(r4)     // Catch:{ all -> 0x004a }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x004a }
            java.lang.String r4 = "\""
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x004a }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x004a }
            android.util.Log.w(r2, r3)     // Catch:{ all -> 0x004a }
        L_0x00ab:
            java.lang.ClassLoader r2 = r6.getClassLoader()     // Catch:{ RuntimeException -> 0x00bb }
            if (r2 != 0) goto L_0x00c6
            java.lang.String r0 = "MultiDex"
            java.lang.String r2 = "Context class loader is null. Must be running in test mode. Skip patching."
            android.util.Log.e(r0, r2)     // Catch:{ all -> 0x004a }
            monitor-exit(r1)     // Catch:{ all -> 0x004a }
            goto L_0x0012
        L_0x00bb:
            r0 = move-exception
            java.lang.String r2 = "MultiDex"
            java.lang.String r3 = "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."
            android.util.Log.w(r2, r3, r0)     // Catch:{ all -> 0x004a }
            monitor-exit(r1)     // Catch:{ all -> 0x004a }
            goto L_0x0012
        L_0x00c6:
            c(r6)     // Catch:{ Throwable -> 0x00ea }
        L_0x00c9:
            java.io.File r3 = new java.io.File     // Catch:{ all -> 0x004a }
            java.lang.String r4 = r0.dataDir     // Catch:{ all -> 0x004a }
            java.lang.String r5 = a     // Catch:{ all -> 0x004a }
            r3.<init>(r4, r5)     // Catch:{ all -> 0x004a }
            r4 = 0
            java.util.List r4 = defpackage.c.a((android.content.Context) r6, (android.content.pm.ApplicationInfo) r0, (java.io.File) r3, (boolean) r4)     // Catch:{ all -> 0x004a }
            boolean r5 = a((java.util.List<java.io.File>) r4)     // Catch:{ all -> 0x004a }
            if (r5 == 0) goto L_0x00f3
            a((java.lang.ClassLoader) r2, (java.io.File) r3, (java.util.List<java.io.File>) r4)     // Catch:{ all -> 0x004a }
        L_0x00e0:
            monitor-exit(r1)     // Catch:{ all -> 0x004a }
            java.lang.String r0 = "MultiDex"
            java.lang.String r1 = "install done"
            android.util.Log.i(r0, r1)
            goto L_0x0012
        L_0x00ea:
            r3 = move-exception
            java.lang.String r4 = "MultiDex"
            java.lang.String r5 = "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."
            android.util.Log.w(r4, r5, r3)     // Catch:{ all -> 0x004a }
            goto L_0x00c9
        L_0x00f3:
            java.lang.String r4 = "MultiDex"
            java.lang.String r5 = "Files were not valid zip files.  Forcing a reload."
            android.util.Log.w(r4, r5)     // Catch:{ all -> 0x004a }
            r4 = 1
            java.util.List r0 = defpackage.c.a((android.content.Context) r6, (android.content.pm.ApplicationInfo) r0, (java.io.File) r3, (boolean) r4)     // Catch:{ all -> 0x004a }
            boolean r4 = a((java.util.List<java.io.File>) r0)     // Catch:{ all -> 0x004a }
            if (r4 == 0) goto L_0x0109
            a((java.lang.ClassLoader) r2, (java.io.File) r3, (java.util.List<java.io.File>) r0)     // Catch:{ all -> 0x004a }
            goto L_0x00e0
        L_0x0109:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch:{ all -> 0x004a }
            java.lang.String r2 = "Zip files were not valid."
            r0.<init>(r2)     // Catch:{ all -> 0x004a }
            throw r0     // Catch:{ all -> 0x004a }
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b.a(android.content.Context):void");
    }

    private static void a(ClassLoader classLoader, File file, List<File> list) {
        IOException[] iOExceptionArr;
        if (list.isEmpty()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            Object obj = b(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList(list);
            a(obj, "dexElements", (Object[]) a(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(obj, new Object[]{arrayList2, file, arrayList}));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field b2 = b(classLoader, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) b2.get(classLoader);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[(arrayList.size() + iOExceptionArr2.length)];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                b2.set(classLoader, iOExceptionArr);
            }
        } else if (Build.VERSION.SDK_INT >= 14) {
            Object obj2 = b(classLoader, "pathList").get(classLoader);
            ArrayList arrayList3 = new ArrayList(list);
            a(obj2, "dexElements", (Object[]) a(obj2, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class}).invoke(obj2, new Object[]{arrayList3, file}));
        } else {
            a.a(classLoader, list);
        }
    }

    static /* synthetic */ void a(Object obj, String str, Object[] objArr) {
        Field b2 = b(obj, str);
        Object[] objArr2 = (Object[]) b2.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        b2.set(obj, objArr3);
    }

    private static boolean a(String str) {
        boolean z = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 > 0)) {
                        z = true;
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
        Log.i("MultiDex", "VM with version " + str + (z ? " has multidex support" : " does not have multidex support"));
        return z;
    }

    private static boolean a(List<File> list) {
        for (File a2 : list) {
            if (!c.a(a2)) {
                return false;
            }
        }
        return true;
    }

    private static ApplicationInfo b(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager == null || packageName == null) {
                return null;
            }
            return packageManager.getApplicationInfo(packageName, NotificationCompat.FLAG_HIGH_PRIORITY);
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* access modifiers changed from: private */
    public static Field b(Object obj, String str) {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    private static void c(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            Log.i("MultiDex", "Clearing old secondary dex dir (" + file.getPath() + ").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Log.w("MultiDex", "Failed to list secondary dex dir content (" + file.getPath() + ").");
                return;
            }
            for (File file2 : listFiles) {
                Log.i("MultiDex", "Trying to delete old file " + file2.getPath() + " of size " + file2.length());
                if (!file2.delete()) {
                    Log.w("MultiDex", "Failed to delete old file " + file2.getPath());
                } else {
                    Log.i("MultiDex", "Deleted old file " + file2.getPath());
                }
            }
            if (!file.delete()) {
                Log.w("MultiDex", "Failed to delete secondary dex dir " + file.getPath());
            } else {
                Log.i("MultiDex", "Deleted old secondary dex dir " + file.getPath());
            }
        }
    }
}
