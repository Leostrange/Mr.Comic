// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aeu;
import agv;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class UserGuide extends ReaderActivity
{

    WebView a;
    int b;

    public UserGuide()
    {
    }

    private void c()
    {
        a.getSettings().setDefaultFontSize(b);
        b = a.getSettings().getDefaultFontSize();
        aei.a().d.a("default-html-font-size", String.valueOf(b));
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030059);
        a = (WebView)findViewById(0x7f0c00f7);
        bundle = getIntent();
        int i = bundle.getIntExtra("guide", 0x7f05000a);
        bundle = bundle.getStringExtra("title");
        setTitle(bundle);
        a.getSettings().setDefaultTextEncodingName("utf-8");
        WebView webview = a;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<html>");
        stringbuilder.append("<head>");
        stringbuilder.append("<meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\" />");
        stringbuilder.append((new StringBuilder("<title>")).append(bundle).append("</title>").toString());
        stringbuilder.append(agv.a(0x7f05000c));
        stringbuilder.append("</head>");
        stringbuilder.append(agv.a(i));
        stringbuilder.append("</html>");
        webview.loadData(stringbuilder.toString(), "text/html; charset=utf-8", "utf-8");
        b = (int)aei.a().d.a("default-html-font-size", a.getSettings().getDefaultFontSize());
        c();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0011, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        int i = menuitem.getItemId();
        if (i == 0x7f0c0143)
        {
            b = b + 1;
            c();
            return true;
        }
        if (i == 0x7f0c0144)
        {
            b = b - 1;
            c();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
