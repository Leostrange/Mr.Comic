// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.listeners.DownloadStartListener;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.ProgressOutputStream;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Socket;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestDownload, BoxHttpResponse

public static class mRetryAfterMillis extends mRetryAfterMillis
{

    protected static final int DEFAULT_MAX_WAIT_MILLIS = 0x15f90;
    protected static final int DEFAULT_NUM_RETRIES = 2;
    protected int mNumAcceptedRetries;
    protected int mRetryAfterMillis;

    protected OutputStream getOutputStream(BoxDownload boxdownload)
    {
        if (((BoxRequestDownload)mRequest).mFileOutputStream == null)
        {
            if (!boxdownload.getOutputFile().exists())
            {
                boxdownload.getOutputFile().createNewFile();
            }
            return new FileOutputStream(boxdownload.getOutputFile());
        } else
        {
            return ((BoxRequestDownload)mRequest).mFileOutputStream;
        }
    }

    public BoxDownload onResponse(Class class1, BoxHttpResponse boxhttpresponse)
    {
        String s;
        long l;
        class1 = boxhttpresponse.getContentType();
        s = boxhttpresponse.getHttpURLConnection().getContentEncoding();
        l = -1L;
        if (Thread.currentThread().isInterrupted())
        {
            disconnectForInterrupt(boxhttpresponse);
        }
        if (boxhttpresponse.getResponseCode() == 429)
        {
            return (BoxDownload)retryRateLimited(boxhttpresponse);
        }
        if (boxhttpresponse.getResponseCode() != 202)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        if (mNumAcceptedRetries >= 2) goto _L2; else goto _L1
_L1:
        mNumAcceptedRetries = mNumAcceptedRetries + 1;
        mRetryAfterMillis = getRetryAfterFromResponse(boxhttpresponse, 1);
_L4:
        Thread.sleep(mRetryAfterMillis);
        return (BoxDownload)((BoxRequestDownload)mRequest).send();
_L2:
        if (mRetryAfterMillis >= 0x15f90)
        {
            break; /* Loop/switch isn't completed */
        }
        mRetryAfterMillis = (int)((double)mRetryAfterMillis * (1.5D + Math.random()));
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            throw new com.box.androidsdk.content.tHandler.mRetryAfterMillis("Max wait time exceeded.", mNumAcceptedRetries);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            throw new BoxException(class1.getMessage(), boxhttpresponse);
        }
        if (boxhttpresponse.getResponseCode() != 200 && boxhttpresponse.getResponseCode() != 206) goto _L6; else goto _L5
_L5:
        Object obj;
        Object obj2;
        obj2 = boxhttpresponse.getHttpURLConnection().getHeaderField("Content-Length");
        obj = boxhttpresponse.getHttpURLConnection().getHeaderField("Content-Disposition");
        long l1 = Long.parseLong(((String) (obj2)));
        l = l1;
_L12:
        Object obj3;
        obj3 = new BoxDownload(((String) (obj)), l, class1, boxhttpresponse.getHttpURLConnection().getHeaderField("Content-Range"), boxhttpresponse.getHttpURLConnection().getHeaderField("Date"), boxhttpresponse.getHttpURLConnection().getHeaderField("Expiration")) {

            final BoxRequestDownload.DownloadRequestHandler this$0;

            public File getOutputFile()
            {
                if (((BoxRequestDownload)mRequest).getTarget() == null)
                {
                    return null;
                }
                if (((BoxRequestDownload)mRequest).getTarget().isFile())
                {
                    return ((BoxRequestDownload)mRequest).getTarget();
                }
                if (!SdkUtils.isEmptyString(getFileName()))
                {
                    return new File(((BoxRequestDownload)mRequest).getTarget(), getFileName());
                } else
                {
                    return super.getOutputFile();
                }
            }

            
            {
                this$0 = BoxRequestDownload.DownloadRequestHandler.this;
                super(s, l, s1, s2, s3, s4);
            }
        };
        if (((BoxRequestDownload)mRequest).mDownloadStartListener != null)
        {
            ((BoxRequestDownload)mRequest).mDownloadStartListener.onStart(((BoxDownload) (obj3)));
        }
        if (((BoxRequestDownload)mRequest).mListener == null) goto _L8; else goto _L7
_L7:
        obj = new ProgressOutputStream(getOutputStream(((BoxDownload) (obj3))), ((BoxRequestDownload)mRequest).mListener, l);
        class1 = ((Class) (obj));
        obj2 = obj;
        ((BoxRequestDownload)mRequest).mListener.onProgressChanged(0L, l);
_L10:
        class1 = ((Class) (obj));
        obj2 = obj;
        SdkUtils.copyStream(boxhttpresponse.getBody(), ((OutputStream) (obj)));
        try
        {
            boxhttpresponse.getBody().close();
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            BoxLogUtils.e("error closing inputstream", class1);
        }
        if (((BoxRequestDownload)mRequest).getTargetStream() == null)
        {
            try
            {
                ((OutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Class class1)
            {
                BoxLogUtils.e("error closing outputstream", class1);
            }
        }
        return ((BoxDownload) (obj3));
_L8:
        obj = getOutputStream(((BoxDownload) (obj3)));
        if (true) goto _L10; else goto _L9
_L9:
        Object obj1;
        obj1;
        obj2 = null;
_L14:
        class1 = ((Class) (obj2));
        obj3 = ((BoxRequestDownload)mRequest).getSocket();
        if (obj3 == null || s == null)
        {
            break MISSING_BLOCK_LABEL_478;
        }
        class1 = ((Class) (obj2));
        boolean flag = s.equalsIgnoreCase("gzip");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_478;
        }
        class1 = ((Class) (obj2));
        ((Socket) (obj3)).close();
_L11:
        class1 = ((Class) (obj2));
        throw new BoxException(((Exception) (obj1)).getMessage(), ((Throwable) (obj1)));
        obj2;
        obj1 = class1;
        class1 = ((Class) (obj2));
_L13:
        Exception exception1;
        try
        {
            boxhttpresponse.getBody().close();
        }
        // Misplaced declaration of an exception variable
        catch (BoxHttpResponse boxhttpresponse)
        {
            BoxLogUtils.e("error closing inputstream", boxhttpresponse);
        }
        if (((BoxRequestDownload)mRequest).getTargetStream() == null)
        {
            try
            {
                ((OutputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch (BoxHttpResponse boxhttpresponse)
            {
                BoxLogUtils.e("error closing outputstream", boxhttpresponse);
            }
        }
        throw class1;
        exception1;
        class1 = ((Class) (obj2));
        BoxLogUtils.e("error closing socket", exception1);
          goto _L11
_L6:
        return new BoxDownload(null, 0L, null, null, null, null);
        Exception exception;
        exception;
          goto _L12
        class1;
        obj1 = null;
          goto _L13
        obj1;
          goto _L14
    }

    public volatile BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
    {
        return onResponse(class1, boxhttpresponse);
    }

    public _cls1.this._cls0(BoxRequestDownload boxrequestdownload)
    {
        super(boxrequestdownload);
        mNumAcceptedRetries = 0;
        mRetryAfterMillis = 1000;
    }
}
