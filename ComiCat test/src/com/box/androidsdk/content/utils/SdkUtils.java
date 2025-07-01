// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import android.widget.Toast;
import com.eclipsesource.json.JsonValue;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.box.androidsdk.content.utils:
//            StringMappedThreadPoolExecutor, BoxLogUtils

public class SdkUtils
{

    private static final int BUFFER_SIZE = 8192;
    private static final char HEX_CHARS[] = "0123456789abcdef".toCharArray();
    private static HashMap LAST_TOAST_TIME = new HashMap(10) {

        private void clean()
        {
            long l = System.currentTimeMillis();
            long l1 = SdkUtils.TOAST_MIN_REPEAT_DELAY;
            Iterator iterator = entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (((Long)entry.getValue()).longValue() < l - l1)
                {
                    SdkUtils.LAST_TOAST_TIME.remove(entry);
                }
            } while (true);
        }

        public final Long put(Integer integer, Long long1)
        {
            integer = (Long)super.put(integer, long1);
            if (size() > 9)
            {
                clean();
            }
            return integer;
        }

        public final volatile Object put(Object obj, Object obj1)
        {
            return put((Integer)obj, (Long)obj1);
        }

    };
    protected static final int THUMB_COLORS[] = {
        0xffc2185b, 0xffed3757, 0xfffe6b9c, 0xfff59e94, 0xfff79600, 0xfff5b31b, 0xffb7c61f, 0xff26c281, 0xff15a2ab, 0xff54c4ef, 
        0xff11a4ff, 0xff6f87ff, 0xff3f51d3, 0xff673ab7, 0xffab47bc
    };
    public static long TOAST_MIN_REPEAT_DELAY = 3000L;

    public SdkUtils()
    {
    }

    public static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int i1 = options.outHeight;
        int j1 = options.outWidth;
        int l = 1;
        int k = 1;
        if (i1 > j || j1 > i)
        {
            i1 /= 2;
            j1 /= 2;
            do
            {
                l = k;
                if (i1 / k < j)
                {
                    break;
                }
                l = k;
                if (j1 / k < i)
                {
                    break;
                }
                k *= 2;
            } while (true);
        }
        return l;
    }

    public static Object cloneSerializable(Object obj)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        Object obj1;
        ByteArrayInputStream bytearrayinputstream;
        ObjectOutputStream objectoutputstream;
        try
        {
            objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
            obj1 = null;
            objectoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
            obj1 = null;
            objectoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bytearrayinputstream = null;
            objectoutputstream = null;
            obj1 = null;
        }
        try
        {
_L3:
            objectoutputstream.writeObject(obj);
            bytearrayinputstream = new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
            obj1 = null;
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
            obj1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bytearrayinputstream = null;
            obj1 = null;
        }
        try
        {
            obj1 = new ObjectInputStream(bytearrayinputstream);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
            obj1 = bytearrayinputstream;
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
            obj1 = bytearrayinputstream;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj1 = null;
        }
        obj = ((ObjectInputStream) (obj1)).readObject();
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, objectoutputstream, bytearrayinputstream, obj1
        });
        return obj;
        obj;
        obj = null;
        obj1 = null;
        objectoutputstream = null;
        bytearrayoutputstream = null;
_L6:
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, objectoutputstream, obj1, obj
        });
        return null;
        obj;
        obj = null;
        obj1 = null;
        objectoutputstream = null;
        bytearrayoutputstream = null;
_L4:
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, objectoutputstream, obj1, obj
        });
        return null;
        obj;
        bytearrayinputstream = null;
        objectoutputstream = null;
        bytearrayoutputstream = null;
        obj1 = null;
_L2:
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, objectoutputstream, bytearrayinputstream, obj1
        });
        throw obj;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        obj = obj1;
        obj1 = bytearrayinputstream;
        if (true) goto _L4; else goto _L3
        obj;
        obj = obj1;
        obj1 = bytearrayinputstream;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static transient void closeQuietly(Closeable acloseable[])
    {
        int j = acloseable.length;
        int i = 0;
        while (i < j) 
        {
            Closeable closeable = acloseable[i];
            try
            {
                closeable.close();
            }
            catch (Exception exception) { }
            i++;
        }
    }

    public static String concatStringWithDelimiter(String as[], String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = as.length;
        for (int i = 0; i < j - 1; i++)
        {
            stringbuilder.append(as[i]).append(s);
        }

        stringbuilder.append(as[j - 1]);
        return stringbuilder.toString();
    }

    public static String convertSerializableToString(Serializable serializable)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream;
        try
        {
            objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable)
        {
            serializable = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            objectoutputstream = null;
        }
        objectoutputstream.writeObject(serializable);
        serializable = new String(bytearrayoutputstream.toByteArray());
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, objectoutputstream
        });
        closeQuietly(new Closeable[] {
            objectoutputstream
        });
        return serializable;
        serializable;
        serializable = null;
        bytearrayoutputstream = null;
_L4:
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, serializable
        });
        closeQuietly(new Closeable[] {
            serializable
        });
        return null;
        serializable;
        objectoutputstream = null;
        bytearrayoutputstream = null;
_L2:
        closeQuietly(new Closeable[] {
            bytearrayoutputstream, objectoutputstream
        });
        closeQuietly(new Closeable[] {
            objectoutputstream
        });
        throw serializable;
        serializable;
        if (true) goto _L2; else goto _L1
_L1:
        serializable;
        serializable = objectoutputstream;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void copyStream(InputStream inputstream, OutputStream outputstream)
    {
        Object obj;
        byte abyte0[];
        abyte0 = new byte[8192];
        obj = null;
_L7:
        InputStream inputstream1 = obj;
        int i = inputstream.read(abyte0);
        if (i <= 0) goto _L2; else goto _L1
_L1:
        inputstream1 = obj;
        if (!Thread.currentThread().isInterrupted()) goto _L4; else goto _L3
_L3:
        inputstream1 = obj;
        try
        {
            throw new InterruptedException();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream1 = inputstream;
        }
        finally
        {
            if (inputstream1 != null) goto _L0; else goto _L0
        }
        if (!(inputstream instanceof IOException)) goto _L6; else goto _L5
_L5:
        inputstream1 = inputstream;
        throw (IOException)inputstream;
        outputstream.flush();
        throw inputstream;
_L4:
        inputstream1 = obj;
        outputstream.write(abyte0, 0, i);
          goto _L7
_L2:
        outputstream.flush();
_L9:
        return;
_L6:
        inputstream1 = inputstream;
        if (!(inputstream instanceof InterruptedException)) goto _L9; else goto _L8
_L8:
        inputstream1 = inputstream;
        throw (InterruptedException)inputstream;
    }

    public static OutputStream createArrayOutputStream(OutputStream aoutputstream[])
    {
        return new OutputStream(aoutputstream) {

            final OutputStream val$outputStreams[];

            public final void close()
            {
                OutputStream aoutputstream1[] = outputStreams;
                int j = aoutputstream1.length;
                for (int i = 0; i < j; i++)
                {
                    aoutputstream1[i].close();
                }

                super.close();
            }

            public final void flush()
            {
                OutputStream aoutputstream1[] = outputStreams;
                int j = aoutputstream1.length;
                for (int i = 0; i < j; i++)
                {
                    aoutputstream1[i].flush();
                }

                super.flush();
            }

            public final void write(int i)
            {
                OutputStream aoutputstream1[] = outputStreams;
                int k = aoutputstream1.length;
                for (int j = 0; j < k; j++)
                {
                    aoutputstream1[j].write(i);
                }

            }

            public final void write(byte abyte0[])
            {
                OutputStream aoutputstream1[] = outputStreams;
                int j = aoutputstream1.length;
                for (int i = 0; i < j; i++)
                {
                    aoutputstream1[i].write(abyte0);
                }

            }

            public final void write(byte abyte0[], int i, int j)
            {
                OutputStream aoutputstream1[] = outputStreams;
                int l = aoutputstream1.length;
                for (int k = 0; k < l; k++)
                {
                    aoutputstream1[k].write(abyte0, i, j);
                }

            }

            
            {
                outputStreams = aoutputstream;
                super();
            }
        };
    }

    public static ThreadPoolExecutor createDefaultThreadPoolExecutor(int i, int j, long l, TimeUnit timeunit)
    {
        return new StringMappedThreadPoolExecutor(i, j, l, timeunit, new LinkedBlockingQueue(), new ThreadFactory() {

            public final Thread newThread(Runnable runnable)
            {
                return new Thread(runnable);
            }

        });
    }

    public static Bitmap decodeSampledBitmapFromFile(Resources resources, int i, int j, int k)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = calculateInSampleSize(options, j, k);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    public static Bitmap decodeSampledBitmapFromFile(File file, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
    }

    public static boolean deleteFolderRecursive(File file)
    {
        int i = 0;
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            if (afile == null)
            {
                return false;
            }
            for (int j = afile.length; i < j; i++)
            {
                deleteFolderRecursive(afile[i]);
            }

        }
        return file.delete();
    }

    private static char[] encodeHex(byte abyte0[])
    {
        int j = 0;
        int k = abyte0.length;
        char ac[] = new char[k << 1];
        for (int i = 0; i < k; i++)
        {
            int l = j + 1;
            ac[j] = HEX_CHARS[(abyte0[i] & 0xf0) >>> 4];
            j = l + 1;
            ac[l] = HEX_CHARS[abyte0[i] & 0xf];
        }

        return ac;
    }

    public static String generateStateToken()
    {
        return UUID.randomUUID().toString();
    }

    public static String getAsStringSafely(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return obj.toString();
        }
    }

    public static String getAssetFile(Context context, String s)
    {
        context = context.getAssets();
        Object obj;
        Object obj1;
        obj1 = new StringBuilder();
        obj = new BufferedReader(new InputStreamReader(context.open(s)));
        boolean flag = true;
_L5:
        context = ((Context) (obj));
        String s1 = ((BufferedReader) (obj)).readLine();
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        flag = false;
_L6:
        context = ((Context) (obj));
        ((StringBuilder) (obj1)).append(s1);
          goto _L5
        obj1;
_L9:
        context = ((Context) (obj));
        BoxLogUtils.e("getAssetFile", s, ((Throwable) (obj1)));
        if (obj != null)
        {
            try
            {
                ((BufferedReader) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                BoxLogUtils.e("getAssetFile", s, context);
                return null;
            }
        }
        return null;
_L4:
        context = ((Context) (obj));
        ((StringBuilder) (obj1)).append('\n');
          goto _L6
        obj1;
        obj = context;
        context = ((Context) (obj1));
_L8:
        if (obj != null)
        {
            try
            {
                ((BufferedReader) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                BoxLogUtils.e("getAssetFile", s, ((Throwable) (obj)));
            }
        }
        throw context;
_L2:
        context = ((Context) (obj));
        obj1 = ((StringBuilder) (obj1)).toString();
        try
        {
            ((BufferedReader) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            BoxLogUtils.e("getAssetFile", s, context);
            return ((String) (obj1));
        }
        return ((String) (obj1));
        context;
        obj = null;
        if (true) goto _L8; else goto _L7
_L7:
        obj1;
        obj = null;
          goto _L9
    }

    public static boolean isBlank(String s)
    {
        return s == null || s.trim().length() == 0;
    }

    public static boolean isEmptyString(String s)
    {
        return s == null || s.length() == 0;
    }

    public static boolean isInternetAvailable(Context context)
    {
        Object obj = (ConnectivityManager)context.getApplicationContext().getSystemService("connectivity");
        context = ((ConnectivityManager) (obj)).getNetworkInfo(1);
        obj = ((ConnectivityManager) (obj)).getNetworkInfo(0);
        return context.isConnected() || obj != null && ((NetworkInfo) (obj)).isConnected();
    }

    public static long parseJsonValueToInteger(JsonValue jsonvalue)
    {
        int i;
        try
        {
            i = jsonvalue.asInt();
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            return (long)Integer.parseInt(jsonvalue.asString().replace("\"", ""));
        }
        return (long)i;
    }

    public static long parseJsonValueToLong(JsonValue jsonvalue)
    {
        long l;
        try
        {
            l = jsonvalue.asLong();
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            return Long.parseLong(jsonvalue.asString().replace("\"", ""));
        }
        return l;
    }

    public static void setColorsThumb(TextView textview, int i)
    {
        Drawable drawable = textview.getResources().getDrawable(hc.b.boxsdk_thumb_background);
        drawable.setColorFilter(THUMB_COLORS[i % THUMB_COLORS.length], android.graphics.PorterDuff.Mode.MULTIPLY);
        if (android.os.Build.VERSION.SDK_INT > 15)
        {
            textview.setBackground(drawable);
            return;
        } else
        {
            textview.setBackgroundDrawable(drawable);
            return;
        }
    }

    public static void setInitialsThumb(Context context, TextView textview, String s)
    {
        char c2 = '\0';
        char c1;
        if (s != null)
        {
            s = s.split(" ");
            char c;
            if (s[0].length() > 0)
            {
                c = s[0].charAt(0);
            } else
            {
                c = '\0';
            }
            c1 = c;
            if (s.length > 1)
            {
                c2 = s[s.length - 1].charAt(0);
                c1 = c;
            }
        } else
        {
            c1 = '\0';
        }
        setColorsThumb(textview, c1 + c2);
        textview.setText((new StringBuilder()).append(c1).append(c2).toString());
        textview.setTextColor(context.getResources().getColor(hc.a.box_white_text));
    }

    public static String sha1(InputStream inputstream)
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        byte abyte0[] = new byte[8192];
        do
        {
            int i = inputstream.read(abyte0);
            if (i > 0)
            {
                messagedigest.update(abyte0, 0, i);
            } else
            {
                inputstream.close();
                return new String(encodeHex(messagedigest.digest()));
            }
        } while (true);
    }

    public static void toastSafely(Context context, int i, int j)
    {
        Object obj = (Long)LAST_TOAST_TIME.get(Integer.valueOf(i));
        if (obj != null && ((Long) (obj)).longValue() + TOAST_MIN_REPEAT_DELAY < System.currentTimeMillis())
        {
            return;
        }
        obj = Looper.getMainLooper();
        if (Thread.currentThread().equals(((Looper) (obj)).getThread()))
        {
            LAST_TOAST_TIME.put(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis()));
            Toast.makeText(context, i, j).show();
            return;
        } else
        {
            (new Handler(((Looper) (obj)))).post(new Runnable(i, context, j) {

                final Context val$context;
                final int val$duration;
                final int val$resId;

                public final void run()
                {
                    SdkUtils.LAST_TOAST_TIME.put(Integer.valueOf(resId), Long.valueOf(System.currentTimeMillis()));
                    Toast.makeText(context, resId, duration).show();
                }

            
            {
                resId = i;
                context = context1;
                duration = j;
                super();
            }
            });
            return;
        }
    }


}
