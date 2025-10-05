package meanlabs.comicreader;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebView;
import meanlabs.comicat.R;

public class UserGuide extends ReaderActivity {
    WebView a;
    int b;

    private void c() {
        this.a.getSettings().setDefaultFontSize(this.b);
        this.b = this.a.getSettings().getDefaultFontSize();
        aei.a().d.a("default-html-font-size", String.valueOf(this.b));
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.usermanual);
        this.a = (WebView) findViewById(R.id.webview);
        Intent intent = getIntent();
        int intExtra = intent.getIntExtra("guide", R.raw.manual);
        String stringExtra = intent.getStringExtra("title");
        setTitle(stringExtra);
        this.a.getSettings().setDefaultTextEncodingName("utf-8");
        WebView webView = this.a;
        StringBuilder sb = new StringBuilder();
        sb.append("<html>");
        sb.append("<head>");
        sb.append("<meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\" />");
        sb.append("<title>" + stringExtra + "</title>");
        sb.append(agv.a((int) R.raw.stylesheet));
        sb.append("</head>");
        sb.append(agv.a(intExtra));
        sb.append("</html>");
        webView.loadData(sb.toString(), "text/html; charset=utf-8", "utf-8");
        this.b = (int) aei.a().d.a("default-html-font-size", (long) this.a.getSettings().getDefaultFontSize());
        c();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.usermanualoptionsmenu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.increaseFontSize) {
            this.b++;
            c();
            return true;
        } else if (itemId != R.id.decreaseFontSize) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            this.b--;
            c();
            return true;
        }
    }
}
