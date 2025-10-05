package defpackage;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.Arrays;
import java.util.Date;
import meanlabs.comicreader.cloud.onedrive.OneDriveAuthActivity;

/* renamed from: aeb  reason: default package */
/* compiled from: OneDriveSession */
public final class aeb extends ta implements PropertyChangeListener {
    aev j;

    aeb(aev aev) {
        super((sw) null);
        this.j = aev;
        this.h = "0000000048121DEB";
        this.a = aev.h;
        this.b = aev.d;
        this.e = aev.g;
        this.g = aev.e;
        this.d = new Date(aev.i);
        b(Arrays.asList(OneDriveAuthActivity.a));
        this.c.addPropertyChangeListener(this);
    }

    public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
        if (propertyChangeEvent.getPropertyName().equals(BoxRequestEvent.STREAM_TYPE_ALL)) {
            this.j.h = this.a;
            this.j.d = this.b;
            this.j.g = this.e;
            this.j.e = this.g;
            this.j.i = this.d.getTime();
            aew aew = aei.a().g;
            aew.c(this.j);
        }
    }
}
