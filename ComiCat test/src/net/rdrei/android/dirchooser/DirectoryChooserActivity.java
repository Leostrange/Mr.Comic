// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.rdrei.android.dirchooser;

import ahh;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;

public class DirectoryChooserActivity extends ActionBarActivity
    implements ahh.a
{

    public DirectoryChooserActivity()
    {
    }

    public final void a(String s)
    {
        Intent intent = new Intent();
        intent.putExtra("selected_dir", s);
        setResult(1, intent);
        finish();
    }

    public final void g()
    {
        setResult(0);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Object obj = getSupportActionBar();
        if (obj != null)
        {
            ((ActionBar) (obj)).setDisplayHomeAsUpEnabled(true);
        }
        setContentView(ahi.c.directory_chooser_activity);
        obj = getIntent().getStringExtra("directory_name");
        String s = getIntent().getStringExtra("initial_directory");
        if (obj == null)
        {
            throw new IllegalArgumentException("You must provide EXTRA_NEW_DIR_NAME when starting the DirectoryChooserActivity.");
        }
        if (bundle == null)
        {
            bundle = getSupportFragmentManager();
            obj = ahh.a(((String) (obj)), s);
            bundle.beginTransaction().add(ahi.b.main, ((android.support.v4.app.Fragment) (obj))).commit();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            setResult(0);
            finish();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
