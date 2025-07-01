// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxExpiringEmbedLinkFile;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequestsFile, BoxRequest

public static class setFields extends BoxRequestItem
{

    private static final long serialVersionUID = 0x70be1f2741234cadL;

    public String getIfNoneMatchEtag()
    {
        return super.getIfNoneMatchEtag();
    }

    public volatile BoxRequest setFields(String as[])
    {
        return setFields(as);
    }

    public transient setFields setFields(String as[])
    {
        int j = as.length;
        int i = 0;
        boolean flag = false;
        for (; i < j; i++)
        {
            if (as[i].equalsIgnoreCase("expiring_embed_link"))
            {
                flag = true;
            }
        }

        if (!flag)
        {
            String as1[] = new String[as.length + 1];
            System.arraycopy(as, 0, as1, 0, as.length);
            as1[as.length] = "expiring_embed_link";
            return (setFields)super.setFields(as1);
        } else
        {
            return (setFields)super.setFields(as);
        }
    }

    public volatile BoxRequest setIfNoneMatchEtag(String s)
    {
        return setIfNoneMatchEtag(s);
    }

    public setIfNoneMatchEtag setIfNoneMatchEtag(String s)
    {
        return (setIfNoneMatchEtag)super.setIfNoneMatchEtag(s);
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxExpiringEmbedLinkFile, s, s1, boxsession);
        mRequestMethod = mRequestMethod;
        setFields(new String[] {
            "expiring_embed_link"
        });
    }
}
