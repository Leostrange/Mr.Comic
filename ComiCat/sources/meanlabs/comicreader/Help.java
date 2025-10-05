package meanlabs.comicreader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.util.ArrayList;
import meanlabs.comicat.R;
import org.apache.http.protocol.HTTP;

public class Help extends ReaderActivity {

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(Help help, byte b) {
            this();
        }

        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    Help.this.a(R.raw.manual, R.string.settingsGuide);
                    return;
                case 1:
                    Help.this.a(R.raw.tipsandtricks, R.string.howTo);
                    return;
                case 2:
                    Help.this.a(R.raw.troubleshoot, R.string.troubleshoot);
                    return;
                case 3:
                    String str = Help.this.getString(R.string.shareText) + (agv.g() ? "https://play.google.com/store/apps/details?id=meanlabs.comicat" : "http://www.amazon.com/gp/product/B004UBB1HQ/");
                    Help help = Help.this;
                    String string = Help.this.getString(R.string.shareTitle);
                    String string2 = Help.this.getString(R.string.sharePrompt);
                    try {
                        Intent intent = new Intent("android.intent.action.SEND");
                        intent.setType(HTTP.PLAIN_TEXT_TYPE);
                        intent.putExtra("android.intent.extra.SUBJECT", string);
                        intent.putExtra("android.intent.extra.TEXT", str);
                        help.startActivity(Intent.createChooser(intent, string2));
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 4:
                    agv.a((Activity) Help.this);
                    return;
                case 5:
                    agv.a((Context) Help.this, agv.g() ? "market://details?id=meanlabs.goldencat" : "amzn://apps/android?p=meanlabs.goldencat");
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        Intent intent = new Intent(this, UserGuide.class);
        intent.putExtra("guide", i);
        intent.putExtra("title", getString(i2));
        startActivity(intent);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        agw.a(arrayList, getResources(), R.string.settingsGuide, R.string.guideMsg);
        agw.a(arrayList, getResources(), R.string.howTo, R.string.howToMsg);
        agw.a(arrayList, getResources(), R.string.troubleshoot, R.string.troubleshootMsg);
        agw.a(arrayList, getResources(), R.string.share, R.string.shareMsg);
        agw.a(arrayList, getResources(), R.string.contactUs, R.string.contactUsMsg);
        if (agv.g()) {
            agw.a(arrayList, getResources(), R.string.tryGoldenCat, R.string.tryGoldenCatMsg);
        }
        listView.setAdapter(new acg(this, arrayList));
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
