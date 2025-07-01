// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class db
    implements android.support.v7.internal.widget.AdapterViewCompat.d
{

    private final android.support.v7.app.ActionBar.OnNavigationListener a;

    public db(android.support.v7.app.ActionBar.OnNavigationListener onnavigationlistener)
    {
        a = onnavigationlistener;
    }

    public final void a(int i, long l)
    {
        if (a != null)
        {
            a.onNavigationItemSelected(i, l);
        }
    }
}
