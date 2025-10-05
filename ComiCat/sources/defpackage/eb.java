package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;

/* renamed from: eb  reason: default package */
/* compiled from: MenuWrapperICS */
class eb extends dp<p> implements Menu {
    eb(Context context, p pVar) {
        super(context, pVar);
    }

    public MenuItem add(int i) {
        return a(((p) this.d).add(i));
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(((p) this.d).add(i, i2, i3, i4));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(((p) this.d).add(i, i2, i3, charSequence));
    }

    public MenuItem add(CharSequence charSequence) {
        return a(((p) this.d).add(charSequence));
    }

    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = null;
        if (menuItemArr != null) {
            menuItemArr2 = new MenuItem[menuItemArr.length];
        }
        int addIntentOptions = ((p) this.d).addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = a(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    public SubMenu addSubMenu(int i) {
        return a(((p) this.d).addSubMenu(i));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return a(((p) this.d).addSubMenu(i, i2, i3, i4));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return a(((p) this.d).addSubMenu(i, i2, i3, charSequence));
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return a(((p) this.d).addSubMenu(charSequence));
    }

    public void clear() {
        if (this.b != null) {
            this.b.clear();
        }
        if (this.c != null) {
            this.c.clear();
        }
        ((p) this.d).clear();
    }

    public void close() {
        ((p) this.d).close();
    }

    public MenuItem findItem(int i) {
        return a(((p) this.d).findItem(i));
    }

    public MenuItem getItem(int i) {
        return a(((p) this.d).getItem(i));
    }

    public boolean hasVisibleItems() {
        return ((p) this.d).hasVisibleItems();
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return ((p) this.d).isShortcutKey(i, keyEvent);
    }

    public boolean performIdentifierAction(int i, int i2) {
        return ((p) this.d).performIdentifierAction(i, i2);
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return ((p) this.d).performShortcut(i, keyEvent, i2);
    }

    public void removeGroup(int i) {
        if (this.b != null) {
            Iterator<q> it = this.b.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
        ((p) this.d).removeGroup(i);
    }

    public void removeItem(int i) {
        if (this.b != null) {
            Iterator<q> it = this.b.keySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    if (i == it.next().getItemId()) {
                        it.remove();
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        ((p) this.d).removeItem(i);
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        ((p) this.d).setGroupCheckable(i, z, z2);
    }

    public void setGroupEnabled(int i, boolean z) {
        ((p) this.d).setGroupEnabled(i, z);
    }

    public void setGroupVisible(int i, boolean z) {
        ((p) this.d).setGroupVisible(i, z);
    }

    public void setQwertyMode(boolean z) {
        ((p) this.d).setQwertyMode(z);
    }

    public int size() {
        return ((p) this.d).size();
    }
}
