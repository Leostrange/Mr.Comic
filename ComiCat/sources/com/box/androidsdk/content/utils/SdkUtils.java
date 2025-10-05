package com.box.androidsdk.content.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import android.widget.Toast;
import com.eclipsesource.json.JsonValue;
import defpackage.hc;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class SdkUtils {
    private static final int BUFFER_SIZE = 8192;
    private static final char[] HEX_CHARS = "0123456789abcdef".toCharArray();
    /* access modifiers changed from: private */
    public static HashMap<Integer, Long> LAST_TOAST_TIME = new HashMap<Integer, Long>(10) {
        private void clean() {
            long currentTimeMillis = System.currentTimeMillis() - SdkUtils.TOAST_MIN_REPEAT_DELAY;
            for (Map.Entry entry : entrySet()) {
                if (((Long) entry.getValue()).longValue() < currentTimeMillis) {
                    SdkUtils.LAST_TOAST_TIME.remove(entry);
                }
            }
        }

        public final Long put(Integer num, Long l) {
            Long l2 = (Long) super.put(num, l);
            if (size() > 9) {
                clean();
            }
            return l2;
        }
    };
    protected static final int[] THUMB_COLORS = {-4056997, -1231017, -103524, -680300, -551424, -675045, -4733409, -14237055, -15359317, -11221777, -15620865, -9467905, -12627501, -10011977, -5552196};
    public static long TOAST_MIN_REPEAT_DELAY = 3000;

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 >= i2 && i7 / i5 >= i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static <T> T cloneSerializable(T t) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        Throwable th;
        T t2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(t);
                    byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                } catch (IOException e) {
                    objectInputStream = null;
                    byteArrayInputStream = null;
                    closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                    return t2;
                } catch (ClassNotFoundException e2) {
                    objectInputStream = null;
                    byteArrayInputStream = null;
                    closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                    return t2;
                } catch (Throwable th2) {
                    byteArrayInputStream = null;
                    th = th2;
                    objectInputStream = null;
                    closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                    throw th;
                }
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                } catch (IOException e3) {
                    objectInputStream = null;
                    closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                    return t2;
                } catch (ClassNotFoundException e4) {
                    objectInputStream = null;
                    closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                    return t2;
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    objectInputStream = null;
                    th = th4;
                    closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                    throw th;
                }
            } catch (IOException e5) {
                objectInputStream = null;
                byteArrayInputStream = null;
                objectOutputStream = null;
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                return t2;
            } catch (ClassNotFoundException e6) {
                objectInputStream = null;
                byteArrayInputStream = null;
                objectOutputStream = null;
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                return t2;
            } catch (Throwable th5) {
                byteArrayInputStream = null;
                objectOutputStream = null;
                Throwable th6 = th5;
                objectInputStream = null;
                th = th6;
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                throw th;
            }
            try {
                t2 = objectInputStream.readObject();
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
            } catch (IOException e7) {
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                return t2;
            } catch (ClassNotFoundException e8) {
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                return t2;
            } catch (Throwable th7) {
                th = th7;
                closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
                throw th;
            }
        } catch (IOException e9) {
            objectInputStream = null;
            byteArrayInputStream = null;
            objectOutputStream = null;
            byteArrayOutputStream = null;
            closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
            return t2;
        } catch (ClassNotFoundException e10) {
            objectInputStream = null;
            byteArrayInputStream = null;
            objectOutputStream = null;
            byteArrayOutputStream = null;
            closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
            return t2;
        } catch (Throwable th8) {
            byteArrayInputStream = null;
            objectOutputStream = null;
            byteArrayOutputStream = null;
            th = th8;
            objectInputStream = null;
            closeQuietly(byteArrayOutputStream, objectOutputStream, byteArrayInputStream, objectInputStream);
            throw th;
        }
        return t2;
    }

    public static void closeQuietly(Closeable... closeableArr) {
        for (Closeable close : closeableArr) {
            try {
                close.close();
            } catch (Exception e) {
            }
        }
    }

    public static String concatStringWithDelimiter(String[] strArr, String str) {
        StringBuilder sb = new StringBuilder();
        int length = strArr.length;
        for (int i = 0; i < length - 1; i++) {
            sb.append(strArr[i]).append(str);
        }
        sb.append(strArr[length - 1]);
        return sb.toString();
    }

    public static String convertSerializableToString(Serializable serializable) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        ObjectOutputStream objectOutputStream2;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(serializable);
                    String str = new String(byteArrayOutputStream.toByteArray());
                    closeQuietly(byteArrayOutputStream, objectOutputStream);
                    closeQuietly(objectOutputStream);
                    return str;
                } catch (IOException e) {
                    objectOutputStream2 = objectOutputStream;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    closeQuietly(byteArrayOutputStream2, objectOutputStream2);
                    closeQuietly(objectOutputStream2);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    closeQuietly(byteArrayOutputStream, objectOutputStream);
                    closeQuietly(objectOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                objectOutputStream2 = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
                closeQuietly(byteArrayOutputStream2, objectOutputStream2);
                closeQuietly(objectOutputStream2);
                return null;
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = null;
                closeQuietly(byteArrayOutputStream, objectOutputStream);
                closeQuietly(objectOutputStream);
                throw th;
            }
        } catch (IOException e3) {
            objectOutputStream2 = null;
            byteArrayOutputStream2 = null;
            closeQuietly(byteArrayOutputStream2, objectOutputStream2);
            closeQuietly(objectOutputStream2);
            return null;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
            byteArrayOutputStream = null;
            closeQuietly(byteArrayOutputStream, objectOutputStream);
            closeQuietly(objectOutputStream);
            throw th;
        }
    }

    public static void copyStream(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    outputStream.flush();
                    return;
                } else if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedException();
                } else {
                    outputStream.write(bArr, 0, read);
                }
            } catch (Exception e) {
                if (e instanceof IOException) {
                    throw ((IOException) e);
                } else if (e instanceof InterruptedException) {
                    throw ((InterruptedException) e);
                } else {
                    return;
                }
            } catch (Throwable th) {
                if (e == null) {
                    outputStream.flush();
                }
                throw th;
            }
        }
    }

    public static OutputStream createArrayOutputStream(final OutputStream[] outputStreamArr) {
        return new OutputStream() {
            public final void close() {
                for (OutputStream close : outputStreamArr) {
                    close.close();
                }
                super.close();
            }

            public final void flush() {
                for (OutputStream flush : outputStreamArr) {
                    flush.flush();
                }
                super.flush();
            }

            public final void write(int i) {
                for (OutputStream write : outputStreamArr) {
                    write.write(i);
                }
            }

            public final void write(byte[] bArr) {
                for (OutputStream write : outputStreamArr) {
                    write.write(bArr);
                }
            }

            public final void write(byte[] bArr, int i, int i2) {
                for (OutputStream write : outputStreamArr) {
                    write.write(bArr, i, i2);
                }
            }
        };
    }

    public static ThreadPoolExecutor createDefaultThreadPoolExecutor(int i, int i2, long j, TimeUnit timeUnit) {
        return new StringMappedThreadPoolExecutor(i, i2, j, timeUnit, new LinkedBlockingQueue(), new ThreadFactory() {
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable);
            }
        });
    }

    public static Bitmap decodeSampledBitmapFromFile(Resources resources, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = calculateInSampleSize(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    public static Bitmap decodeSampledBitmapFromFile(File file, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
    }

    public static boolean deleteFolderRecursive(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return false;
            }
            for (File deleteFolderRecursive : listFiles) {
                deleteFolderRecursive(deleteFolderRecursive);
            }
        }
        return file.delete();
    }

    private static char[] encodeHex(byte[] bArr) {
        int i = 0;
        int length = bArr.length;
        char[] cArr = new char[(length << 1)];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr[i] = HEX_CHARS[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr[i3] = HEX_CHARS[bArr[i2] & 15];
        }
        return cArr;
    }

    public static String generateStateToken() {
        return UUID.randomUUID().toString();
    }

    public static String getAsStringSafely(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x003b A[SYNTHETIC, Splitter:B:23:0x003b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getAssetFile(android.content.Context r6, java.lang.String r7) {
        /*
            r0 = 0
            android.content.res.AssetManager r1 = r6.getAssets()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r3.<init>()     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            java.io.InputStream r1 = r1.open(r7)     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r4.<init>(r1)     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r2.<init>(r4)     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r1 = 1
        L_0x0019:
            java.lang.String r4 = r2.readLine()     // Catch:{ IOException -> 0x0026 }
            if (r4 == 0) goto L_0x003f
            if (r1 == 0) goto L_0x0032
            r1 = 0
        L_0x0022:
            r3.append(r4)     // Catch:{ IOException -> 0x0026 }
            goto L_0x0019
        L_0x0026:
            r1 = move-exception
        L_0x0027:
            java.lang.String r3 = "getAssetFile"
            com.box.androidsdk.content.utils.BoxLogUtils.e(r3, r7, r1)     // Catch:{ all -> 0x0038 }
            if (r2 == 0) goto L_0x0031
            r2.close()     // Catch:{ Exception -> 0x004e }
        L_0x0031:
            return r0
        L_0x0032:
            r5 = 10
            r3.append(r5)     // Catch:{ IOException -> 0x0026 }
            goto L_0x0022
        L_0x0038:
            r0 = move-exception
        L_0x0039:
            if (r2 == 0) goto L_0x003e
            r2.close()     // Catch:{ Exception -> 0x0055 }
        L_0x003e:
            throw r0
        L_0x003f:
            java.lang.String r0 = r3.toString()     // Catch:{ IOException -> 0x0026 }
            r2.close()     // Catch:{ Exception -> 0x0047 }
            goto L_0x0031
        L_0x0047:
            r1 = move-exception
            java.lang.String r2 = "getAssetFile"
            com.box.androidsdk.content.utils.BoxLogUtils.e(r2, r7, r1)
            goto L_0x0031
        L_0x004e:
            r1 = move-exception
            java.lang.String r2 = "getAssetFile"
            com.box.androidsdk.content.utils.BoxLogUtils.e(r2, r7, r1)
            goto L_0x0031
        L_0x0055:
            r1 = move-exception
            java.lang.String r2 = "getAssetFile"
            com.box.androidsdk.content.utils.BoxLogUtils.e(r2, r7, r1)
            goto L_0x003e
        L_0x005c:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0039
        L_0x0060:
            r1 = move-exception
            r2 = r0
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: com.box.androidsdk.content.utils.SdkUtils.getAssetFile(android.content.Context, java.lang.String):java.lang.String");
    }

    public static boolean isBlank(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isEmptyString(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isInternetAvailable(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        return networkInfo.isConnected() || (networkInfo2 != null && networkInfo2.isConnected());
    }

    public static long parseJsonValueToInteger(JsonValue jsonValue) {
        try {
            return (long) jsonValue.asInt();
        } catch (UnsupportedOperationException e) {
            return (long) Integer.parseInt(jsonValue.asString().replace("\"", ""));
        }
    }

    public static long parseJsonValueToLong(JsonValue jsonValue) {
        try {
            return jsonValue.asLong();
        } catch (UnsupportedOperationException e) {
            return Long.parseLong(jsonValue.asString().replace("\"", ""));
        }
    }

    public static void setColorsThumb(TextView textView, int i) {
        Drawable drawable = textView.getResources().getDrawable(hc.b.boxsdk_thumb_background);
        drawable.setColorFilter(THUMB_COLORS[i % THUMB_COLORS.length], PorterDuff.Mode.MULTIPLY);
        if (Build.VERSION.SDK_INT > 15) {
            textView.setBackground(drawable);
        } else {
            textView.setBackgroundDrawable(drawable);
        }
    }

    public static void setInitialsThumb(Context context, TextView textView, String str) {
        char c;
        char c2 = 0;
        if (str != null) {
            String[] split = str.split(" ");
            c = split[0].length() > 0 ? split[0].charAt(0) : 0;
            if (split.length > 1) {
                c2 = split[split.length - 1].charAt(0);
            }
        } else {
            c = 0;
        }
        setColorsThumb(textView, c + c2);
        textView.setText(new StringBuilder().append(c).append(c2).toString());
        textView.setTextColor(context.getResources().getColor(hc.a.box_white_text));
    }

    public static String sha1(InputStream inputStream) {
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                instance.update(bArr, 0, read);
            } else {
                inputStream.close();
                return new String(encodeHex(instance.digest()));
            }
        }
    }

    public static void toastSafely(final Context context, final int i, final int i2) {
        Long l = LAST_TOAST_TIME.get(Integer.valueOf(i));
        if (l == null || l.longValue() + TOAST_MIN_REPEAT_DELAY >= System.currentTimeMillis()) {
            Looper mainLooper = Looper.getMainLooper();
            if (Thread.currentThread().equals(mainLooper.getThread())) {
                LAST_TOAST_TIME.put(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis()));
                Toast.makeText(context, i, i2).show();
                return;
            }
            new Handler(mainLooper).post(new Runnable() {
                public final void run() {
                    SdkUtils.LAST_TOAST_TIME.put(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis()));
                    Toast.makeText(context, i, i2).show();
                }
            });
        }
    }
}
