package defpackage;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.support.v7.widget.SearchView;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.models.BoxIterator;
import defpackage.cv;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: fg  reason: default package */
/* compiled from: SuggestionsAdapter */
public final class fg extends cr implements View.OnClickListener {
    public int j = 1;
    private final SearchManager k = ((SearchManager) this.d.getSystemService("search"));
    private final SearchView l;
    private final SearchableInfo m;
    private final Context n;
    private final WeakHashMap<String, Drawable.ConstantState> o;
    private final int p;
    private boolean q = false;
    private ColorStateList r;
    private int s = -1;
    private int t = -1;
    private int u = -1;
    private int v = -1;
    private int w = -1;
    private int x = -1;

    /* renamed from: fg$a */
    /* compiled from: SuggestionsAdapter */
    static final class a {
        public final TextView a;
        public final TextView b;
        public final ImageView c;
        public final ImageView d;
        public final ImageView e;

        public a(View view) {
            this.a = (TextView) view.findViewById(16908308);
            this.b = (TextView) view.findViewById(16908309);
            this.c = (ImageView) view.findViewById(16908295);
            this.d = (ImageView) view.findViewById(16908296);
            this.e = (ImageView) view.findViewById(cv.f.edit_query);
        }
    }

    public fg(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout());
        this.l = searchView;
        this.m = searchableInfo;
        this.p = searchView.getSuggestionCommitIconResId();
        this.n = context;
        this.o = weakHashMap;
    }

    private Drawable a(ComponentName componentName) {
        PackageManager packageManager = this.d.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, NotificationCompat.FLAG_HIGH_PRIORITY);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("SuggestionsAdapter", e.toString());
            return null;
        }
    }

    private Drawable a(Uri uri) {
        InputStream openInputStream;
        try {
            if ("android.resource".equals(uri.getScheme())) {
                return b(uri);
            }
            openInputStream = this.n.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            Drawable createFromStream = Drawable.createFromStream(openInputStream, (String) null);
            try {
                openInputStream.close();
                return createFromStream;
            } catch (IOException e) {
                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e);
                return createFromStream;
            }
        } catch (Resources.NotFoundException e2) {
            throw new FileNotFoundException("Resource does not exist: " + uri);
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        } catch (Throwable th) {
            try {
                openInputStream.close();
            } catch (IOException e4) {
                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e4);
            }
            throw th;
        }
    }

    private Drawable a(String str) {
        if (str == null || str.length() == 0 || BoxConstants.ROOT_FOLDER_ID.equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.n.getPackageName() + "/" + parseInt;
            Drawable b = b(str2);
            if (b != null) {
                return b;
            }
            Drawable drawable = e.getDrawable(this.n, parseInt);
            a(str2, drawable);
            return drawable;
        } catch (NumberFormatException e) {
            Drawable b2 = b(str);
            if (b2 != null) {
                return b2;
            }
            Drawable a2 = a(Uri.parse(str));
            a(str, a2);
            return a2;
        } catch (Resources.NotFoundException e2) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        }
    }

    private static String a(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    private static void a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private static void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void a(String str, Drawable drawable) {
        if (drawable != null) {
            this.o.put(str, drawable.getConstantState());
        }
    }

    private Drawable b(Uri uri) {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.d.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else if (size == 2) {
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + uri);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    private Drawable b(String str) {
        Drawable.ConstantState constantState = this.o.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private static void c(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    public final Cursor a(CharSequence charSequence) {
        String[] strArr;
        Cursor query;
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.l.getVisibility() != 0 || this.l.getWindowVisibility() != 0) {
            return null;
        }
        try {
            SearchableInfo searchableInfo = this.m;
            if (searchableInfo == null) {
                query = null;
            } else {
                String suggestAuthority = searchableInfo.getSuggestAuthority();
                if (suggestAuthority == null) {
                    query = null;
                } else {
                    Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
                    String suggestPath = searchableInfo.getSuggestPath();
                    if (suggestPath != null) {
                        fragment.appendEncodedPath(suggestPath);
                    }
                    fragment.appendPath("search_suggest_query");
                    String suggestSelection = searchableInfo.getSuggestSelection();
                    if (suggestSelection != null) {
                        strArr = new String[]{charSequence2};
                    } else {
                        fragment.appendPath(charSequence2);
                        strArr = null;
                    }
                    fragment.appendQueryParameter(BoxIterator.FIELD_LIMIT, "50");
                    query = this.d.getContentResolver().query(fragment.build(), (String[]) null, suggestSelection, strArr, (String) null);
                }
            }
            if (query != null) {
                query.getCount();
                return query;
            }
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
        }
        return null;
    }

    public final View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View a2 = super.a(context, cursor, viewGroup);
        a2.setTag(new a(a2));
        ((ImageView) a2.findViewById(cv.f.edit_query)).setImageResource(this.p);
        return a2;
    }

    public final void a(Cursor cursor) {
        if (this.q) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.s = cursor.getColumnIndex("suggest_text_1");
                this.t = cursor.getColumnIndex("suggest_text_2");
                this.u = cursor.getColumnIndex("suggest_text_2_url");
                this.v = cursor.getColumnIndex("suggest_icon_1");
                this.w = cursor.getColumnIndex("suggest_icon_2");
                this.x = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v37, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v38, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v1, resolved type: android.text.SpannableString} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v41, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.view.View r14, android.database.Cursor r15) {
        /*
            r13 = this;
            r12 = 2
            r11 = -1
            r10 = 1
            r1 = 0
            r2 = 0
            java.lang.Object r0 = r14.getTag()
            r6 = r0
            fg$a r6 = (defpackage.fg.a) r6
            int r0 = r13.x
            if (r0 == r11) goto L_0x0143
            int r0 = r13.x
            int r0 = r15.getInt(r0)
            r7 = r0
        L_0x0017:
            android.widget.TextView r0 = r6.a
            if (r0 == 0) goto L_0x0026
            int r0 = r13.s
            java.lang.String r0 = a((android.database.Cursor) r15, (int) r0)
            android.widget.TextView r3 = r6.a
            a((android.widget.TextView) r3, (java.lang.CharSequence) r0)
        L_0x0026:
            android.widget.TextView r0 = r6.b
            if (r0 == 0) goto L_0x0085
            int r0 = r13.u
            java.lang.String r9 = a((android.database.Cursor) r15, (int) r0)
            if (r9 == 0) goto L_0x00c5
            android.content.res.ColorStateList r0 = r13.r
            if (r0 != 0) goto L_0x0054
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            android.content.Context r3 = r13.d
            android.content.res.Resources$Theme r3 = r3.getTheme()
            int r4 = defpackage.cv.a.textColorSearchUrl
            r3.resolveAttribute(r4, r0, r10)
            android.content.Context r3 = r13.d
            android.content.res.Resources r3 = r3.getResources()
            int r0 = r0.resourceId
            android.content.res.ColorStateList r0 = r3.getColorStateList(r0)
            r13.r = r0
        L_0x0054:
            android.text.SpannableString r8 = new android.text.SpannableString
            r8.<init>(r9)
            android.text.style.TextAppearanceSpan r0 = new android.text.style.TextAppearanceSpan
            android.content.res.ColorStateList r4 = r13.r
            r3 = r2
            r5 = r1
            r0.<init>(r1, r2, r3, r4, r5)
            int r3 = r9.length()
            r4 = 33
            r8.setSpan(r0, r2, r3, r4)
            r0 = r8
        L_0x006c:
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L_0x00cc
            android.widget.TextView r3 = r6.a
            if (r3 == 0) goto L_0x0080
            android.widget.TextView r3 = r6.a
            r3.setSingleLine(r2)
            android.widget.TextView r3 = r6.a
            r3.setMaxLines(r12)
        L_0x0080:
            android.widget.TextView r3 = r6.b
            a((android.widget.TextView) r3, (java.lang.CharSequence) r0)
        L_0x0085:
            android.widget.ImageView r0 = r6.c
            if (r0 == 0) goto L_0x0094
            android.widget.ImageView r4 = r6.c
            int r0 = r13.v
            if (r0 != r11) goto L_0x00db
            r0 = r1
        L_0x0090:
            r3 = 4
            a((android.widget.ImageView) r4, (android.graphics.drawable.Drawable) r0, (int) r3)
        L_0x0094:
            android.widget.ImageView r0 = r6.d
            if (r0 == 0) goto L_0x00a3
            android.widget.ImageView r0 = r6.d
            int r3 = r13.w
            if (r3 != r11) goto L_0x012f
        L_0x009e:
            r3 = 8
            a((android.widget.ImageView) r0, (android.graphics.drawable.Drawable) r1, (int) r3)
        L_0x00a3:
            int r0 = r13.j
            if (r0 == r12) goto L_0x00af
            int r0 = r13.j
            if (r0 != r10) goto L_0x013b
            r0 = r7 & 1
            if (r0 == 0) goto L_0x013b
        L_0x00af:
            android.widget.ImageView r0 = r6.e
            r0.setVisibility(r2)
            android.widget.ImageView r0 = r6.e
            android.widget.TextView r1 = r6.a
            java.lang.CharSequence r1 = r1.getText()
            r0.setTag(r1)
            android.widget.ImageView r0 = r6.e
            r0.setOnClickListener(r13)
        L_0x00c4:
            return
        L_0x00c5:
            int r0 = r13.t
            java.lang.String r0 = a((android.database.Cursor) r15, (int) r0)
            goto L_0x006c
        L_0x00cc:
            android.widget.TextView r3 = r6.a
            if (r3 == 0) goto L_0x0080
            android.widget.TextView r3 = r6.a
            r3.setSingleLine(r10)
            android.widget.TextView r3 = r6.a
            r3.setMaxLines(r10)
            goto L_0x0080
        L_0x00db:
            int r0 = r13.v
            java.lang.String r0 = r15.getString(r0)
            android.graphics.drawable.Drawable r0 = r13.a((java.lang.String) r0)
            if (r0 != 0) goto L_0x0090
            android.app.SearchableInfo r0 = r13.m
            android.content.ComponentName r0 = r0.getSearchActivity()
            java.lang.String r5 = r0.flattenToShortString()
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r3 = r13.o
            boolean r3 = r3.containsKey(r5)
            if (r3 == 0) goto L_0x011c
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r0 = r13.o
            java.lang.Object r0 = r0.get(r5)
            android.graphics.drawable.Drawable$ConstantState r0 = (android.graphics.drawable.Drawable.ConstantState) r0
            if (r0 != 0) goto L_0x0111
            r0 = r1
        L_0x0104:
            if (r0 != 0) goto L_0x0090
            android.content.Context r0 = r13.d
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            android.graphics.drawable.Drawable r0 = r0.getDefaultActivityIcon()
            goto L_0x0090
        L_0x0111:
            android.content.Context r3 = r13.n
            android.content.res.Resources r3 = r3.getResources()
            android.graphics.drawable.Drawable r0 = r0.newDrawable(r3)
            goto L_0x0104
        L_0x011c:
            android.graphics.drawable.Drawable r3 = r13.a((android.content.ComponentName) r0)
            if (r3 != 0) goto L_0x012a
            r0 = r1
        L_0x0123:
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r8 = r13.o
            r8.put(r5, r0)
            r0 = r3
            goto L_0x0104
        L_0x012a:
            android.graphics.drawable.Drawable$ConstantState r0 = r3.getConstantState()
            goto L_0x0123
        L_0x012f:
            int r1 = r13.w
            java.lang.String r1 = r15.getString(r1)
            android.graphics.drawable.Drawable r1 = r13.a((java.lang.String) r1)
            goto L_0x009e
        L_0x013b:
            android.widget.ImageView r0 = r6.e
            r1 = 8
            r0.setVisibility(r1)
            goto L_0x00c4
        L_0x0143:
            r7 = r2
            goto L_0x0017
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fg.a(android.view.View, android.database.Cursor):void");
    }

    public final CharSequence b(Cursor cursor) {
        String a2;
        String a3;
        if (cursor == null) {
            return null;
        }
        String a4 = a(cursor, "suggest_intent_query");
        if (a4 != null) {
            return a4;
        }
        if (this.m.shouldRewriteQueryFromData() && (a3 = a(cursor, "suggest_intent_data")) != null) {
            return a3;
        }
        if (!this.m.shouldRewriteQueryFromText() || (a2 = a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return a2;
    }

    public final View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View a2 = a(this.d, this.c, viewGroup);
            if (a2 != null) {
                ((a) a2.getTag()).a.setText(e.toString());
            }
            return a2;
        }
    }

    public final boolean hasStableIds() {
        return false;
    }

    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        c(a());
    }

    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        c(a());
    }

    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.l.setQuery((CharSequence) tag);
        }
    }
}
