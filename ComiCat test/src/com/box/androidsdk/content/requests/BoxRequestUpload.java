// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxIterator;
import com.box.androidsdk.content.models.BoxIteratorBoxEntity;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequestMultipart, BoxHttpRequest, BoxHttpResponse, 
//            BoxRequest

public abstract class BoxRequestUpload extends BoxRequestItem
{
    public static class UploadRequestHandler extends BoxRequest.BoxRequestHandler
    {

        public BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
        {
            return ((BoxIterator)super.onResponse(com/box/androidsdk/content/models/BoxIteratorBoxEntity, boxhttpresponse)).get(0);
        }

        public UploadRequestHandler(BoxRequestUpload boxrequestupload)
        {
            super(boxrequestupload);
        }
    }


    Date mCreatedDate;
    File mFile;
    String mFileName;
    Date mModifiedDate;
    String mSha1;
    InputStream mStream;
    long mUploadSize;

    public BoxRequestUpload(Class class1, InputStream inputstream, String s, BoxSession boxsession)
    {
        super(class1, null, s, boxsession);
        mRequestMethod = BoxRequest.Methods.POST;
        mStream = inputstream;
        mFileName = "";
        setRequestHandler(new UploadRequestHandler(this));
    }

    protected BoxHttpRequest createHttpRequest()
    {
        return createMultipartRequest();
    }

    protected BoxRequestMultipart createMultipartRequest()
    {
        BoxRequestMultipart boxrequestmultipart = new BoxRequestMultipart(buildUrl(), mRequestMethod, mListener);
        setHeaders(boxrequestmultipart);
        boxrequestmultipart.setFile(getInputStream(), mFileName, mUploadSize);
        if (mCreatedDate != null)
        {
            boxrequestmultipart.putField("content_created_at", mCreatedDate);
        }
        if (mModifiedDate != null)
        {
            boxrequestmultipart.putField("content_modified_at", mModifiedDate);
        }
        return boxrequestmultipart;
    }

    public Date getCreatedDate()
    {
        return mCreatedDate;
    }

    public File getFile()
    {
        return mFile;
    }

    protected InputStream getInputStream()
    {
        if (mStream != null)
        {
            return mStream;
        } else
        {
            return new FileInputStream(mFile);
        }
    }

    public Date getModifiedDate()
    {
        return mModifiedDate;
    }

    public String getSha1()
    {
        return mSha1;
    }

    public long getUploadSize()
    {
        return mUploadSize;
    }

    protected BoxHttpResponse sendRequest(BoxHttpRequest boxhttprequest, HttpURLConnection httpurlconnection)
    {
        if (boxhttprequest instanceof BoxRequestMultipart)
        {
            ((BoxRequestMultipart)boxhttprequest).writeBody(httpurlconnection, mListener);
        }
        return super.sendRequest(boxhttprequest, httpurlconnection);
    }

    public BoxRequest setCreatedDate(Date date)
    {
        mCreatedDate = date;
        return this;
    }

    protected void setHeaders(BoxHttpRequest boxhttprequest)
    {
        super.setHeaders(boxhttprequest);
        if (mSha1 != null)
        {
            boxhttprequest.addHeader("Content-MD5", mSha1);
        }
    }

    public BoxRequest setModifiedDate(Date date)
    {
        mModifiedDate = date;
        return this;
    }

    public BoxRequest setProgressListener(ProgressListener progresslistener)
    {
        mListener = progresslistener;
        return this;
    }

    public void setSha1(String s)
    {
        mSha1 = s;
    }

    public BoxRequest setUploadSize(long l)
    {
        mUploadSize = l;
        return this;
    }
}
