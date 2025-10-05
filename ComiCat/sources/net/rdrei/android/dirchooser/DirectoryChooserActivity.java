package net.rdrei.android.dirchooser;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;
import defpackage.ahh;
import defpackage.ahi;

public class DirectoryChooserActivity extends ActionBarActivity implements ahh.a {
    public final void a(String str) {
        Intent intent = new Intent();
        intent.putExtra("selected_dir", str);
        setResult(1, intent);
        finish();
    }

    public final void g() {
        setResult(0);
        finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        setContentView(ahi.c.directory_chooser_activity);
        String stringExtra = getIntent().getStringExtra("directory_name");
        String stringExtra2 = getIntent().getStringExtra("initial_directory");
        if (stringExtra == null) {
            throw new IllegalArgumentException("You must provide EXTRA_NEW_DIR_NAME when starting the DirectoryChooserActivity.");
        } else if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.beginTransaction().add(ahi.b.main, (Fragment) ahh.a(stringExtra, stringExtra2)).commit();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        setResult(0);
        finish();
        return true;
    }
}
