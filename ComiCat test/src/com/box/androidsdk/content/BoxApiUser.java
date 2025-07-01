// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiUser extends BoxApi
{

    public BoxApiUser(BoxSession boxsession)
    {
        super(boxsession);
    }

    protected String getAvatarDownloadUrl(String s)
    {
        return (new StringBuilder()).append(getUserInformationUrl(s)).append("/avatar").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsUser.CreateEnterpriseUser getCreateEnterpriseUserRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsUser.CreateEnterpriseUser(getUsersUrl(), mSession, s, s1);
    }

    public com.box.androidsdk.content.requests.BoxRequestsUser.GetUserInfo getCurrentUserInfoRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsUser.GetUserInfo(getUserInformationUrl("me"), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsUser.DeleteEnterpriseUser getDeleteEnterpriseUserRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsUser.DeleteEnterpriseUser(getUserInformationUrl(s), mSession, s);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile getDownloadAvatarRequest(File file, String s)
    {
        if (!file.exists())
        {
            throw new FileNotFoundException();
        } else
        {
            return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile(s, file, getAvatarDownloadUrl(s), mSession);
        }
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile getDownloadAvatarRequest(OutputStream outputstream, String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile(s, outputstream, getAvatarDownloadUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsUser.GetEnterpriseUsers getEnterpriseUsersRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsUser.GetEnterpriseUsers(getUsersUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsUser.GetUserInfo getUserInfoRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsUser.GetUserInfo(getUserInformationUrl(s), mSession);
    }

    protected String getUserInformationUrl(String s)
    {
        return String.format("%s/%s", new Object[] {
            getUsersUrl(), s
        });
    }

    protected String getUsersUrl()
    {
        return String.format("%s/users", new Object[] {
            getBaseUri()
        });
    }
}
