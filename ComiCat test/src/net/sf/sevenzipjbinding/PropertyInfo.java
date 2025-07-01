// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


// Referenced classes of package net.sf.sevenzipjbinding:
//            PropID

public class PropertyInfo
{

    public String name;
    public PropID propID;
    public Class varType;

    public PropertyInfo()
    {
    }

    public String toString()
    {
        return (new StringBuilder("name=")).append(name).append("; propID=").append(propID).append("; varType=").append(varType.getCanonicalName()).toString();
    }
}
