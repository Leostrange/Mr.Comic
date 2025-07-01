// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxObject;
import java.util.ArrayList;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxResponse

public class BoxResponseBatch extends BoxObject
{

    protected ArrayList mResponses;

    public BoxResponseBatch()
    {
        mResponses = new ArrayList();
    }

    public void addResponse(BoxResponse boxresponse)
    {
        mResponses.add(boxresponse);
    }

    public ArrayList getResponses()
    {
        return mResponses;
    }
}
