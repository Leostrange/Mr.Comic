// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.BoxLogUtils;
import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

static final class val.jsonObjectClass
    implements xJsonObjectCreator
{

    final Class val$jsonObjectClass;

    public final BoxJsonObject createFromJsonObject(JsonObject jsonobject)
    {
        BoxJsonObject boxjsonobject;
        boxjsonobject = (BoxJsonObject)val$jsonObjectClass.newInstance();
        boxjsonobject.createFromJson(jsonobject);
        return boxjsonobject;
        jsonobject;
        BoxLogUtils.e("BoxJsonObject", (new StringBuilder("getBoxJsonObjectCreator ")).append(val$jsonObjectClass).toString(), jsonobject);
_L2:
        return null;
        jsonobject;
        BoxLogUtils.e("BoxJsonObject", (new StringBuilder("getBoxJsonObjectCreator ")).append(val$jsonObjectClass).toString(), jsonobject);
        if (true) goto _L2; else goto _L1
_L1:
    }

    xJsonObjectCreator(Class class1)
    {
        val$jsonObjectClass = class1;
        super();
    }
}
