package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import defpackage.cv;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: ds  reason: default package */
/* compiled from: MenuBuilder */
public class ds implements p {
    private static final int[] l = {1, 4, 5, 3, 2, 0};
    final Context a;
    public a b;
    ArrayList<du> c;
    public ArrayList<du> d;
    public int e = 0;
    CharSequence f;
    Drawable g;
    View h;
    public boolean i = false;
    du j;
    public boolean k;
    private final Resources m;
    private boolean n;
    private boolean o;
    private ArrayList<du> p;
    private boolean q;
    private ArrayList<du> r;
    private boolean s;
    private ContextMenu.ContextMenuInfo t;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private ArrayList<du> x = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<dy>> y = new CopyOnWriteArrayList<>();

    /* renamed from: ds$a */
    /* compiled from: MenuBuilder */
    public interface a {
        boolean onMenuItemSelected(ds dsVar, MenuItem menuItem);

        void onMenuModeChange(ds dsVar);
    }

    /* renamed from: ds$b */
    /* compiled from: MenuBuilder */
    public interface b {
        boolean a(du duVar);
    }

    public ds(Context context) {
        boolean z = true;
        this.a = context;
        this.m = context.getResources();
        this.c = new ArrayList<>();
        this.p = new ArrayList<>();
        this.q = true;
        this.d = new ArrayList<>();
        this.r = new ArrayList<>();
        this.s = true;
        this.o = (this.m.getConfiguration().keyboard == 1 || !this.m.getBoolean(cv.b.abc_config_showMenuShortcutsWhenKeyboardPresent)) ? false : z;
    }

    private static int a(ArrayList<du> arrayList, int i2) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).a <= i2) {
                return size + 1;
            }
        }
        return 0;
    }

    private MenuItem a(int i2, int i3, int i4, CharSequence charSequence) {
        int i5 = (-65536 & i4) >> 16;
        if (i5 < 0 || i5 >= l.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i6 = (l[i5] << 16) | (65535 & i4);
        du duVar = new du(this, i2, i3, i4, i6, charSequence, this.e);
        if (this.t != null) {
            duVar.e = this.t;
        }
        this.c.add(a(this.c, i6), duVar);
        b(true);
        return duVar;
    }

    private du a(int i2, KeyEvent keyEvent) {
        ArrayList<du> arrayList = this.x;
        arrayList.clear();
        a((List<du>) arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean b2 = b();
        for (int i3 = 0; i3 < size; i3++) {
            du duVar = arrayList.get(i3);
            char alphabeticShortcut = b2 ? duVar.getAlphabeticShortcut() : duVar.getNumericShortcut();
            if (alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) {
                return duVar;
            }
            if (alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) {
                return duVar;
            }
            if (b2 && alphabeticShortcut == 8 && i2 == 67) {
                return duVar;
            }
        }
        return null;
    }

    private void a(int i2, boolean z) {
        if (i2 >= 0 && i2 < this.c.size()) {
            this.c.remove(i2);
            if (z) {
                b(true);
            }
        }
    }

    private void a(List<du> list, int i2, KeyEvent keyEvent) {
        boolean b2 = b();
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            int size = this.c.size();
            for (int i3 = 0; i3 < size; i3++) {
                du duVar = this.c.get(i3);
                if (duVar.hasSubMenu()) {
                    ((ds) duVar.getSubMenu()).a(list, i2, keyEvent);
                }
                char alphabeticShortcut = b2 ? duVar.getAlphabeticShortcut() : duVar.getNumericShortcut();
                if ((metaState & 5) == 0 && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (b2 && alphabeticShortcut == 8 && i2 == 67)) && duVar.isEnabled())) {
                    list.add(duVar);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final ds a(Drawable drawable) {
        a((CharSequence) null, drawable, (View) null);
        return this;
    }

    /* access modifiers changed from: protected */
    public final ds a(CharSequence charSequence) {
        a(charSequence, (Drawable) null, (View) null);
        return this;
    }

    /* access modifiers changed from: protected */
    public String a() {
        return "android:menu:actionviewstates";
    }

    public final void a(Bundle bundle) {
        Parcelable onSaveInstanceState;
        if (!this.y.isEmpty()) {
            SparseArray sparseArray = new SparseArray();
            Iterator<WeakReference<dy>> it = this.y.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                dy dyVar = (dy) next.get();
                if (dyVar == null) {
                    this.y.remove(next);
                } else {
                    int id = dyVar.getId();
                    if (id > 0 && (onSaveInstanceState = dyVar.onSaveInstanceState()) != null) {
                        sparseArray.put(id, onSaveInstanceState);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public final void a(dy dyVar) {
        a(dyVar, this.a);
    }

    public final void a(dy dyVar, Context context) {
        this.y.add(new WeakReference(dyVar));
        dyVar.initForMenu(context, this);
        this.s = true;
    }

    /* access modifiers changed from: package-private */
    public final void a(CharSequence charSequence, Drawable drawable, View view) {
        if (view != null) {
            this.h = view;
            this.f = null;
            this.g = null;
        } else {
            if (charSequence != null) {
                this.f = charSequence;
            }
            if (drawable != null) {
                this.g = drawable;
            }
            this.h = null;
        }
        b(false);
    }

    public final void a(boolean z) {
        if (!this.w) {
            this.w = true;
            Iterator<WeakReference<dy>> it = this.y.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                dy dyVar = (dy) next.get();
                if (dyVar == null) {
                    this.y.remove(next);
                } else {
                    dyVar.onCloseMenu(this, z);
                }
            }
            this.w = false;
        }
    }

    public final boolean a(MenuItem menuItem, dy dyVar, int i2) {
        boolean z = false;
        du duVar = (du) menuItem;
        if (duVar == null || !duVar.isEnabled()) {
            return false;
        }
        boolean b2 = duVar.b();
        ao aoVar = duVar.d;
        boolean z2 = aoVar != null && aoVar.e();
        if (duVar.i()) {
            boolean expandActionView = duVar.expandActionView() | b2;
            if (!expandActionView) {
                return expandActionView;
            }
            a(true);
            return expandActionView;
        } else if (duVar.hasSubMenu() || z2) {
            a(false);
            if (!duVar.hasSubMenu()) {
                duVar.a(new ec(this.a, this, duVar));
            }
            ec ecVar = (ec) duVar.getSubMenu();
            if (z2) {
                aoVar.a((SubMenu) ecVar);
            }
            if (!this.y.isEmpty()) {
                if (dyVar != null) {
                    z = dyVar.onSubMenuSelected(ecVar);
                }
                Iterator<WeakReference<dy>> it = this.y.iterator();
                boolean z3 = z;
                while (it.hasNext()) {
                    WeakReference next = it.next();
                    dy dyVar2 = (dy) next.get();
                    if (dyVar2 == null) {
                        this.y.remove(next);
                    } else {
                        z3 = !z3 ? dyVar2.onSubMenuSelected(ecVar) : z3;
                    }
                }
                z = z3;
            }
            boolean z4 = b2 | z;
            if (z4) {
                return z4;
            }
            a(true);
            return z4;
        } else {
            if ((i2 & 1) == 0) {
                a(true);
            }
            return b2;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(ds dsVar, MenuItem menuItem) {
        return this.b != null && this.b.onMenuItemSelected(dsVar, menuItem);
    }

    public boolean a(du duVar) {
        boolean z = false;
        if (!this.y.isEmpty()) {
            d();
            Iterator<WeakReference<dy>> it = this.y.iterator();
            boolean z2 = false;
            while (true) {
                if (!it.hasNext()) {
                    z = z2;
                    break;
                }
                WeakReference next = it.next();
                dy dyVar = (dy) next.get();
                if (dyVar == null) {
                    this.y.remove(next);
                } else {
                    z = dyVar.expandItemActionView(this, duVar);
                    if (z) {
                        break;
                    }
                    z2 = z;
                }
            }
            e();
            if (z) {
                this.j = duVar;
            }
        }
        return z;
    }

    public MenuItem add(int i2) {
        return a(0, 0, 0, this.m.getString(i2));
    }

    public MenuItem add(int i2, int i3, int i4, int i5) {
        return a(i2, i3, i4, this.m.getString(i5));
    }

    public MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return a(i2, i3, i4, charSequence);
    }

    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    public int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i2, i3, i4, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    public SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, (CharSequence) this.m.getString(i2));
    }

    public SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return addSubMenu(i2, i3, i4, (CharSequence) this.m.getString(i5));
    }

    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        du duVar = (du) a(i2, i3, i4, charSequence);
        ec ecVar = new ec(this.a, this, duVar);
        duVar.a(ecVar);
        return ecVar;
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.y.isEmpty()) {
            Iterator<WeakReference<dy>> it = this.y.iterator();
            while (it.hasNext()) {
                WeakReference next = it.next();
                dy dyVar = (dy) next.get();
                if (dyVar == null) {
                    this.y.remove(next);
                } else {
                    int id = dyVar.getId();
                    if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                        dyVar.onRestoreInstanceState(parcelable);
                    }
                }
            }
        }
    }

    public final void b(dy dyVar) {
        Iterator<WeakReference<dy>> it = this.y.iterator();
        while (it.hasNext()) {
            WeakReference next = it.next();
            dy dyVar2 = (dy) next.get();
            if (dyVar2 == null || dyVar2 == dyVar) {
                this.y.remove(next);
            }
        }
    }

    public final void b(boolean z) {
        if (!this.u) {
            if (z) {
                this.q = true;
                this.s = true;
            }
            if (!this.y.isEmpty()) {
                d();
                Iterator<WeakReference<dy>> it = this.y.iterator();
                while (it.hasNext()) {
                    WeakReference next = it.next();
                    dy dyVar = (dy) next.get();
                    if (dyVar == null) {
                        this.y.remove(next);
                    } else {
                        dyVar.updateMenuView(z);
                    }
                }
                e();
                return;
            }
            return;
        }
        this.v = true;
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return this.n;
    }

    public boolean b(du duVar) {
        boolean z = false;
        if (!this.y.isEmpty() && this.j == duVar) {
            d();
            Iterator<WeakReference<dy>> it = this.y.iterator();
            boolean z2 = false;
            while (true) {
                if (!it.hasNext()) {
                    z = z2;
                    break;
                }
                WeakReference next = it.next();
                dy dyVar = (dy) next.get();
                if (dyVar == null) {
                    this.y.remove(next);
                } else {
                    z = dyVar.collapseItemActionView(this, duVar);
                    if (z) {
                        break;
                    }
                    z2 = z;
                }
            }
            e();
            if (z) {
                this.j = null;
            }
        }
        return z;
    }

    public final void c(Bundle bundle) {
        int size = size();
        int i2 = 0;
        SparseArray sparseArray = null;
        while (i2 < size) {
            MenuItem item = getItem(i2);
            View a2 = aw.a(item);
            if (!(a2 == null || a2.getId() == -1)) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                a2.saveHierarchyState(sparseArray);
                if (aw.c(item)) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            SparseArray sparseArray2 = sparseArray;
            if (item.hasSubMenu()) {
                ((ec) item.getSubMenu()).c(bundle);
            }
            i2++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(a(), sparseArray);
        }
    }

    public boolean c() {
        return this.o;
    }

    public void clear() {
        if (this.j != null) {
            b(this.j);
        }
        this.c.clear();
        b(true);
    }

    public void clearHeader() {
        this.g = null;
        this.f = null;
        this.h = null;
        b(false);
    }

    public void close() {
        a(true);
    }

    public final void d() {
        if (!this.u) {
            this.u = true;
            this.v = false;
        }
    }

    public final void d(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(a());
            int size = size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = getItem(i2);
                View a2 = aw.a(item);
                if (!(a2 == null || a2.getId() == -1)) {
                    a2.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((ec) item.getSubMenu()).d(bundle);
                }
            }
            int i3 = bundle.getInt("android:menu:expandedactionview");
            if (i3 > 0 && (findItem = findItem(i3)) != null) {
                aw.b(findItem);
            }
        }
    }

    public final void e() {
        this.u = false;
        if (this.v) {
            this.v = false;
            b(true);
        }
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        this.q = true;
        b(true);
    }

    public MenuItem findItem(int i2) {
        MenuItem findItem;
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            du duVar = this.c.get(i3);
            if (duVar.getItemId() == i2) {
                return duVar;
            }
            if (duVar.hasSubMenu() && (findItem = duVar.getSubMenu().findItem(i2)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public final void g() {
        this.s = true;
        b(true);
    }

    public MenuItem getItem(int i2) {
        return this.c.get(i2);
    }

    public final ArrayList<du> h() {
        if (!this.q) {
            return this.p;
        }
        this.p.clear();
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            du duVar = this.c.get(i2);
            if (duVar.isVisible()) {
                this.p.add(duVar);
            }
        }
        this.q = false;
        this.s = true;
        return this.p;
    }

    public boolean hasVisibleItems() {
        if (this.k) {
            return true;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.c.get(i2).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList<du> h2 = h();
        if (this.s) {
            Iterator<WeakReference<dy>> it = this.y.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference next = it.next();
                dy dyVar = (dy) next.get();
                if (dyVar == null) {
                    this.y.remove(next);
                } else {
                    z = dyVar.flagActionItems() | z;
                }
            }
            if (z) {
                this.d.clear();
                this.r.clear();
                int size = h2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    du duVar = h2.get(i2);
                    if (duVar.f()) {
                        this.d.add(duVar);
                    } else {
                        this.r.add(duVar);
                    }
                }
            } else {
                this.d.clear();
                this.r.clear();
                this.r.addAll(h());
            }
            this.s = false;
        }
    }

    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return a(i2, keyEvent) != null;
    }

    public final ArrayList<du> j() {
        i();
        return this.r;
    }

    public ds k() {
        return this;
    }

    public boolean performIdentifierAction(int i2, int i3) {
        return a(findItem(i2), (dy) null, i3);
    }

    public boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        du a2 = a(i2, keyEvent);
        boolean z = false;
        if (a2 != null) {
            z = a((MenuItem) a2, (dy) null, i3);
        }
        if ((i3 & 2) != 0) {
            a(true);
        }
        return z;
    }

    public void removeGroup(int i2) {
        int i3;
        int size = size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i3 = -1;
                break;
            } else if (this.c.get(i4).getGroupId() == i2) {
                i3 = i4;
                break;
            } else {
                i4++;
            }
        }
        if (i3 >= 0) {
            int size2 = this.c.size() - i3;
            int i5 = 0;
            while (true) {
                int i6 = i5 + 1;
                if (i5 >= size2 || this.c.get(i3).getGroupId() != i2) {
                    b(true);
                } else {
                    a(i3, false);
                    i5 = i6;
                }
            }
            b(true);
        }
    }

    public void removeItem(int i2) {
        int i3;
        int size = size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i3 = -1;
                break;
            } else if (this.c.get(i4).getItemId() == i2) {
                i3 = i4;
                break;
            } else {
                i4++;
            }
        }
        a(i3, true);
    }

    public void setGroupCheckable(int i2, boolean z, boolean z2) {
        int size = this.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            du duVar = this.c.get(i3);
            if (duVar.getGroupId() == i2) {
                duVar.a(z2);
                duVar.setCheckable(z);
            }
        }
    }

    public void setGroupEnabled(int i2, boolean z) {
        int size = this.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            du duVar = this.c.get(i3);
            if (duVar.getGroupId() == i2) {
                duVar.setEnabled(z);
            }
        }
    }

    public void setGroupVisible(int i2, boolean z) {
        int size = this.c.size();
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            du duVar = this.c.get(i3);
            i3++;
            z2 = (duVar.getGroupId() != i2 || !duVar.b(z)) ? z2 : true;
        }
        if (z2) {
            b(true);
        }
    }

    public void setQwertyMode(boolean z) {
        this.n = z;
        b(false);
    }

    public int size() {
        return this.c.size();
    }
}
