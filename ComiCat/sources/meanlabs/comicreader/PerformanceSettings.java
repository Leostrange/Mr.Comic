package meanlabs.comicreader;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.util.ArrayList;
import meanlabs.comicat.R;

public class PerformanceSettings extends ReaderActivity {

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(PerformanceSettings performanceSettings, byte b) {
            this();
        }

        public final void onItemClick(final AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    long b = (agv.b() / 10) + 3;
                    if (b > 16) {
                        b = 16;
                    } else if (b < 6) {
                        b = 6;
                    }
                    int i2 = (int) (b - 3);
                    CharSequence[] charSequenceArr = new CharSequence[(i2 + 1)];
                    for (int i3 = 0; i3 <= i2; i3++) {
                        charSequenceArr[i3] = String.valueOf(i3 + 3) + " MB";
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(PerformanceSettings.this);
                    builder.setTitle(PerformanceSettings.this.getResources().getString(R.string.maxImgSize));
                    int a2 = (int) aei.a().d.a("max-image-memory", 6);
                    if (a2 < 3) {
                        a2 = 3;
                    }
                    builder.setSingleChoiceItems(charSequenceArr, a2 - 3, new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            aei.a().d.a("max-image-memory", String.valueOf(i + 3));
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    break;
                case 1:
                    aei.a().d.d("use-animation");
                    break;
                case 2:
                    aei.a().d.d("aggressive-caching");
                    break;
            }
            acg acg = (acg) adapterView.getAdapter();
            if (acg != null) {
                acg.notifyDataSetInvalidated();
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.maxImgSize, (int) R.string.maxImgSizeMsg, "max-image-memory", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.showTransitions, (int) R.string.showTransitionsMsg, "use-animation", true);
        if (agv.c()) {
            agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.aggressiveCaching, (int) R.string.aggressiveCachingMsg, "aggressive-caching", true);
        }
        listView.setAdapter(new acg(this, arrayList));
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
