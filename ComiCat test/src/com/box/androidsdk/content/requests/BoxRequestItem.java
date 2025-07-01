// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxResponse

public abstract class BoxRequestItem extends BoxRequest
{

    protected static String QUERY_FIELDS = "fields";
    protected String mId;

    protected BoxRequestItem(BoxRequestItem boxrequestitem)
    {
        super(boxrequestitem);
        mId = null;
    }

    public BoxRequestItem(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s1, boxsession);
        mId = null;
        mContentType = BoxRequest.ContentTypes.JSON;
        mId = s;
    }

    public String getId()
    {
        return mId;
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public transient BoxRequest setFields(String as[])
    {
        if (as.length == 1 && as[0] == null)
        {
            mQueryMap.remove(QUERY_FIELDS);
        } else
        if (as.length > 0)
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append(as[0]);
            for (int i = 1; i < as.length; i++)
            {
                stringbuilder.append(String.format(Locale.ENGLISH, ",%s", new Object[] {
                    as[i]
                }));
            }

            mQueryMap.put(QUERY_FIELDS, stringbuilder.toString());
            return this;
        }
        return this;
    }

}
