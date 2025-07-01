// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.Arrays;
import java.util.Date;
import meanlabs.comicreader.cloud.onedrive.OneDriveAuthActivity;

public final class aeb extends ta
    implements PropertyChangeListener
{

    aev j;

    aeb(aev aev1)
    {
        super(null);
        j = aev1;
        h = "0000000048121DEB";
        a = aev1.h;
        b = aev1.d;
        e = aev1.g;
        g = aev1.e;
        d = new Date(aev1.i);
        b(Arrays.asList(OneDriveAuthActivity.a));
        super.c.addPropertyChangeListener(this);
    }

    public final void propertyChange(PropertyChangeEvent propertychangeevent)
    {
        if (propertychangeevent.getPropertyName().equals("all"))
        {
            j.h = a;
            j.d = b;
            j.g = e;
            j.e = g;
            j.i = d.getTime();
            propertychangeevent = aei.a().g;
            aew.c(j);
        }
    }
}
