// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

public abstract class ew
{
    public static interface a
    {

        public abstract boolean onActionItemClicked(ew ew1, MenuItem menuitem);

        public abstract boolean onCreateActionMode(ew ew1, Menu menu);

        public abstract void onDestroyActionMode(ew ew1);

        public abstract boolean onPrepareActionMode(ew ew1, Menu menu);
    }


    public Object b;
    public boolean c;

    public ew()
    {
    }

    public abstract MenuInflater a();

    public abstract void a(int j);

    public abstract void a(View view);

    public abstract void a(CharSequence charsequence);

    public void a(boolean flag)
    {
        c = flag;
    }

    public abstract Menu b();

    public abstract void b(int j);

    public abstract void b(CharSequence charsequence);

    public abstract void c();

    public abstract void d();

    public abstract CharSequence f();

    public abstract CharSequence g();

    public boolean h()
    {
        return false;
    }

    public abstract View i();
}
