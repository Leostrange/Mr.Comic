package android.support.design.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class NavigationMenuView extends ListView implements dz {
    public NavigationMenuView(Context context) {
        this(context, (AttributeSet) null);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void initialize(ds dsVar) {
    }
}
