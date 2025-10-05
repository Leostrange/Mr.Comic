package meanlabs.comicreader;

import android.os.Bundle;
import android.widget.ListView;
import defpackage.age;
import meanlabs.comicat.R;

public class ViewerSettings extends ReaderActivity {
    age a;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        this.a = new age(this, (ListView) findViewById(R.id.categories), (age.b) null);
        setResult(0);
    }
}
