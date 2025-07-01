// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.listeners.ProgressListener;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class BoxHttpRequest
{

    protected final ProgressListener mListener;
    protected final HttpURLConnection mUrlConnection;

    public BoxHttpRequest(URL url, BoxRequest.Methods methods, ProgressListener progresslistener)
    {
        mUrlConnection = (HttpURLConnection)url.openConnection();
        mUrlConnection.setRequestMethod(methods.toString());
        mListener = progresslistener;
    }

    public BoxHttpRequest addHeader(String s, String s1)
    {
        mUrlConnection.addRequestProperty(s, s1);
        return this;
    }

    public HttpURLConnection getUrlConnection()
    {
        return mUrlConnection;
    }

    public BoxHttpRequest setBody(InputStream inputstream)
    {
        mUrlConnection.setDoOutput(true);
        OutputStream outputstream = mUrlConnection.getOutputStream();
        for (int i = inputstream.read(); i != -1; i = inputstream.read())
        {
            outputstream.write(i);
        }

        outputstream.close();
        return this;
    }
}
