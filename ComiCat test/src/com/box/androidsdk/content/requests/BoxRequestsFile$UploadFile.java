// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxSession;
import java.io.File;
import java.io.InputStream;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestUpload, BoxRequestsFile, BoxRequestMultipart

public static class mDestinationFolderId extends BoxRequestUpload
{

    private static final long serialVersionUID = 0x70be1f2741234caeL;
    String mDestinationFolderId;

    protected BoxRequestMultipart createMultipartRequest()
    {
        BoxRequestMultipart boxrequestmultipart = super.createMultipartRequest();
        boxrequestmultipart.putField("parent_id", mDestinationFolderId);
        return boxrequestmultipart;
    }

    public String getDestinationFolderId()
    {
        return mDestinationFolderId;
    }

    public String getFileName()
    {
        return mFileName;
    }

    public mFileName setFileName(String s)
    {
        mFileName = s;
        return this;
    }

    public (File file, String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFile, null, s1, boxsession);
        mRequestUrlString = s1;
        mRequestMethod = mRequestMethod;
        mDestinationFolderId = s;
        mFileName = file.getName();
        mFile = file;
        mUploadSize = file.length();
        mModifiedDate = new Date(file.lastModified());
    }

    public mModifiedDate(InputStream inputstream, String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFile, inputstream, s2, boxsession);
        mRequestUrlString = s2;
        mRequestMethod = mRequestMethod;
        mFileName = s;
        mStream = inputstream;
        mDestinationFolderId = s1;
    }
}
