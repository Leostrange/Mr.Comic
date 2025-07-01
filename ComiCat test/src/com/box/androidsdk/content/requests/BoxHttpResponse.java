// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.utils.ProgressInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;

public class BoxHttpResponse
{

    private static final int BUFFER_SIZE = 8192;
    private String mBodyString;
    protected final HttpURLConnection mConnection;
    private String mContentEncoding;
    protected String mContentType;
    private InputStream mInputStream;
    protected int mResponseCode;
    private InputStream rawInputStream;

    public BoxHttpResponse(HttpURLConnection httpurlconnection)
    {
        mConnection = httpurlconnection;
        mInputStream = null;
    }

    private static boolean isErrorCode(int i)
    {
        return i >= 400;
    }

    private String readStream(InputStream inputstream)
    {
        if (inputstream == null)
        {
            return null;
        }
        Object obj = inputstream;
        if (mContentEncoding != null)
        {
            obj = inputstream;
            if (mContentEncoding.equalsIgnoreCase("gzip"))
            {
                obj = new GZIPInputStream(inputstream);
            }
        }
        inputstream = new StringBuilder();
        char ac[] = new char[8192];
        int i;
        try
        {
            obj = new InputStreamReader(((InputStream) (obj)), "UTF-8");
            i = ((InputStreamReader) (obj)).read(ac, 0, 8192);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            throw new BoxException("Unable to read stream", inputstream);
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        inputstream.append(ac, 0, i);
        i = ((InputStreamReader) (obj)).read(ac, 0, 8192);
        break MISSING_BLOCK_LABEL_74;
        ((InputStreamReader) (obj)).close();
        return inputstream.toString();
    }

    public void disconnect()
    {
        byte abyte0[];
        int i;
        try
        {
            if (rawInputStream == null)
            {
                rawInputStream = mConnection.getInputStream();
            }
            abyte0 = new byte[8192];
            i = rawInputStream.read(abyte0);
        }
        catch (IOException ioexception)
        {
            throw new BoxException("Couldn't finish closing the connection to the Box API due to a network error or because the stream was already closed.", ioexception);
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        i = rawInputStream.read(abyte0);
        break MISSING_BLOCK_LABEL_33;
        rawInputStream.close();
        if (mInputStream != null)
        {
            mInputStream.close();
        }
        return;
    }

    public InputStream getBody()
    {
        return getBody(null);
    }

    public InputStream getBody(ProgressListener progresslistener)
    {
        if (mInputStream != null) goto _L2; else goto _L1
_L1:
        String s = mConnection.getContentEncoding();
        try
        {
            if (rawInputStream == null)
            {
                rawInputStream = mConnection.getInputStream();
            }
        }
        // Misplaced declaration of an exception variable
        catch (ProgressListener progresslistener)
        {
            throw new BoxException("Couldn't connect to the Box API due to a network error.", progresslistener);
        }
        if (progresslistener != null) goto _L4; else goto _L3
_L3:
        mInputStream = rawInputStream;
_L5:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        if (s.equalsIgnoreCase("gzip"))
        {
            mInputStream = new GZIPInputStream(mInputStream);
        }
        return mInputStream;
_L4:
        mInputStream = new ProgressInputStream(rawInputStream, progresslistener, getContentLength());
        if (true) goto _L5; else goto _L2
_L2:
        return mInputStream;
    }

    public int getContentLength()
    {
        return mConnection.getContentLength();
    }

    public String getContentType()
    {
        return mContentType;
    }

    public HttpURLConnection getHttpURLConnection()
    {
        return mConnection;
    }

    public int getResponseCode()
    {
        return mResponseCode;
    }

    public String getStringBody()
    {
        if (mBodyString != null)
        {
            return mBodyString;
        }
        InputStream inputstream;
        if (!isErrorCode(mResponseCode))
        {
            break MISSING_BLOCK_LABEL_44;
        }
        inputstream = mConnection.getErrorStream();
_L1:
        mBodyString = readStream(inputstream);
        return mBodyString;
        try
        {
            inputstream = mConnection.getInputStream();
        }
        catch (IOException ioexception)
        {
            throw new BoxException("Unable to get string body", ioexception);
        }
          goto _L1
    }

    public void open()
    {
        mConnection.connect();
        mContentType = mConnection.getContentType();
        mResponseCode = mConnection.getResponseCode();
        mContentEncoding = mConnection.getContentEncoding();
    }
}
