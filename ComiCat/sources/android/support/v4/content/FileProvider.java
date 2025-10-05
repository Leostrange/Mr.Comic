package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

public class FileProvider extends ContentProvider {
    private static final String[] a = {"_display_name", "_size"};
    private static final File b = new File("/");
    private static HashMap<String, a> c = new HashMap<>();
    private a d;

    interface a {
        File a(Uri uri);
    }

    static class b implements a {
        final HashMap<String, File> a = new HashMap<>();
        private final String b;

        public b(String str) {
            this.b = str;
        }

        public final File a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.a.get(decode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, decode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 158 */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0086, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x008e, code lost:
        throw new java.lang.IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:?, code lost:
        c.put(r11, r0);
        r0 = r0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0086 A[ExcHandler: XmlPullParserException (r0v5 'e' org.xmlpull.v1.XmlPullParserException A[CUSTOM_DECLARE]), Splitter:B:5:0x000f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.support.v4.content.FileProvider.a a(android.content.Context r10, java.lang.String r11) {
        /*
            r2 = 0
            r9 = 1
            java.util.HashMap<java.lang.String, android.support.v4.content.FileProvider$a> r3 = c
            monitor-enter(r3)
            java.util.HashMap<java.lang.String, android.support.v4.content.FileProvider$a> r0 = c     // Catch:{ all -> 0x003b }
            java.lang.Object r0 = r0.get(r11)     // Catch:{ all -> 0x003b }
            android.support.v4.content.FileProvider$a r0 = (android.support.v4.content.FileProvider.a) r0     // Catch:{ all -> 0x003b }
            if (r0 != 0) goto L_0x00ef
            android.support.v4.content.FileProvider$b r0 = new android.support.v4.content.FileProvider$b     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r0.<init>(r11)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            android.content.pm.PackageManager r1 = r10.getPackageManager()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r4 = 128(0x80, float:1.794E-43)
            android.content.pm.ProviderInfo r1 = r1.resolveContentProvider(r11, r4)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            android.content.pm.PackageManager r4 = r10.getPackageManager()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.String r5 = "android.support.FILE_PROVIDER_PATHS"
            android.content.res.XmlResourceParser r4 = r1.loadXmlMetaData(r4, r5)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r4 != 0) goto L_0x0047
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.String r1 = "Missing android.support.FILE_PROVIDER_PATHS meta-data"
            r0.<init>(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            throw r0     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
        L_0x0032:
            r0 = move-exception
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x003b }
            java.lang.String r2 = "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
            r1.<init>(r2, r0)     // Catch:{ all -> 0x003b }
            throw r1     // Catch:{ all -> 0x003b }
        L_0x003b:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x003b }
            throw r0
        L_0x003e:
            java.io.File r1 = r1.getCanonicalFile()     // Catch:{ IOException -> 0x00d4, XmlPullParserException -> 0x0086 }
            java.util.HashMap<java.lang.String, java.io.File> r6 = r0.a     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r6.put(r5, r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
        L_0x0047:
            int r1 = r4.next()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r1 == r9) goto L_0x00ea
            r5 = 2
            if (r1 != r5) goto L_0x0047
            java.lang.String r1 = r4.getName()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r5 = 0
            java.lang.String r6 = "name"
            java.lang.String r5 = r4.getAttributeValue(r5, r6)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r6 = 0
            java.lang.String r7 = "path"
            java.lang.String r6 = r4.getAttributeValue(r6, r7)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.String r7 = "root-path"
            boolean r7 = r7.equals(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r7 == 0) goto L_0x008f
            java.io.File r1 = b     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r8 = 0
            r7[r8] = r6     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.io.File r1 = a((java.io.File) r1, (java.lang.String[]) r7)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
        L_0x0076:
            if (r1 == 0) goto L_0x0047
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r6 == 0) goto L_0x003e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.String r1 = "Name must not be empty"
            r0.<init>(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            throw r0     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
        L_0x0086:
            r0 = move-exception
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x003b }
            java.lang.String r2 = "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
            r1.<init>(r2, r0)     // Catch:{ all -> 0x003b }
            throw r1     // Catch:{ all -> 0x003b }
        L_0x008f:
            java.lang.String r7 = "files-path"
            boolean r7 = r7.equals(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r7 == 0) goto L_0x00a6
            java.io.File r1 = r10.getFilesDir()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r8 = 0
            r7[r8] = r6     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.io.File r1 = a((java.io.File) r1, (java.lang.String[]) r7)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            goto L_0x0076
        L_0x00a6:
            java.lang.String r7 = "cache-path"
            boolean r7 = r7.equals(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r7 == 0) goto L_0x00bd
            java.io.File r1 = r10.getCacheDir()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r8 = 0
            r7[r8] = r6     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.io.File r1 = a((java.io.File) r1, (java.lang.String[]) r7)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            goto L_0x0076
        L_0x00bd:
            java.lang.String r7 = "external-path"
            boolean r1 = r7.equals(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            if (r1 == 0) goto L_0x00f1
            java.io.File r1 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r8 = 0
            r7[r8] = r6     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.io.File r1 = a((java.io.File) r1, (java.lang.String[]) r7)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            goto L_0x0076
        L_0x00d4:
            r0 = move-exception
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.String r5 = "Failed to resolve canonical path for "
            r4.<init>(r5)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            r2.<init>(r1, r0)     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
            throw r2     // Catch:{ IOException -> 0x0032, XmlPullParserException -> 0x0086 }
        L_0x00ea:
            java.util.HashMap<java.lang.String, android.support.v4.content.FileProvider$a> r1 = c     // Catch:{ all -> 0x003b }
            r1.put(r11, r0)     // Catch:{ all -> 0x003b }
        L_0x00ef:
            monitor-exit(r3)     // Catch:{ all -> 0x003b }
            return r0
        L_0x00f1:
            r1 = r2
            goto L_0x0076
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.FileProvider.a(android.content.Context, java.lang.String):android.support.v4.content.FileProvider$a");
    }

    private static File a(File file, String... strArr) {
        int i = 0;
        File file2 = file;
        while (i <= 0) {
            String str = strArr[0];
            i++;
            file2 = str != null ? new File(file2, str) : file2;
        }
        return file2;
    }

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        } else {
            this.d = a(context, providerInfo.authority);
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return this.d.a(uri).delete() ? 1 : 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0012, code lost:
        r0 = android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(r0.getName().substring(r1 + 1));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getType(android.net.Uri r4) {
        /*
            r3 = this;
            android.support.v4.content.FileProvider$a r0 = r3.d
            java.io.File r0 = r0.a(r4)
            java.lang.String r1 = r0.getName()
            r2 = 46
            int r1 = r1.lastIndexOf(r2)
            if (r1 < 0) goto L_0x0027
            java.lang.String r0 = r0.getName()
            int r1 = r1 + 1
            java.lang.String r0 = r0.substring(r1)
            android.webkit.MimeTypeMap r1 = android.webkit.MimeTypeMap.getSingleton()
            java.lang.String r0 = r1.getMimeTypeFromExtension(r0)
            if (r0 == 0) goto L_0x0027
        L_0x0026:
            return r0
        L_0x0027:
            java.lang.String r0 = "application/octet-stream"
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.FileProvider.getType(android.net.Uri):java.lang.String");
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    public boolean onCreate() {
        return true;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) {
        int i;
        File a2 = this.d.a(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if ("rwt".equals(str)) {
            i = 1006632960;
        } else {
            throw new IllegalArgumentException("Invalid mode: " + str);
        }
        return ParcelFileDescriptor.open(a2, i);
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File a2 = this.d.a(uri);
        if (strArr == null) {
            strArr = a;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int length = strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            String str3 = strArr[i2];
            if ("_display_name".equals(str3)) {
                strArr3[i3] = "_display_name";
                i = i3 + 1;
                objArr[i3] = a2.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i3] = "_size";
                i = i3 + 1;
                objArr[i3] = Long.valueOf(a2.length());
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        String[] strArr4 = new String[i3];
        System.arraycopy(strArr3, 0, strArr4, 0, i3);
        Object[] objArr2 = new Object[i3];
        System.arraycopy(objArr, 0, objArr2, 0, i3);
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
