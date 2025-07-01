// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxJsonObject;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestsMetadata

class set extends BoxJsonObject
{

    public static final String OPERATION = "op";
    public static final String PATH = "path";
    public static final String VALUE = "value";
    final set this$0;

    public ( 1, String s, String s1)
    {
        this$0 = this._cls0.this;
        super();
        set("op", 1.set());
        set("path", (new StringBuilder("/")).append(s).toString());
        if (1 != set)
        {
            set("value", s1);
        }
    }
}
