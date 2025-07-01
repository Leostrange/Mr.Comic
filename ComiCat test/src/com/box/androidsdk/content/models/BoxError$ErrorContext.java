// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import java.util.ArrayList;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxError, BoxEntity

public static class  extends BoxJsonObject
{

    public static final String FIELD_CONFLICTS = "conflicts";

    public ArrayList getConflicts()
    {
        return getPropertyAsJsonObjectArray(BoxEntity.getBoxJsonObjectCreator(), "conflicts");
    }

    public ()
    {
    }
}
