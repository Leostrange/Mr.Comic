package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import defpackage.cv;
import java.lang.ref.WeakReference;

class AlertController {
    /* access modifiers changed from: private */
    public ListAdapter mAdapter;
    private int mAlertDialogLayout;
    private final View.OnClickListener mButtonHandler = new View.OnClickListener() {
        public void onClick(View view) {
            Message obtain = (view != AlertController.this.mButtonPositive || AlertController.this.mButtonPositiveMessage == null) ? (view != AlertController.this.mButtonNegative || AlertController.this.mButtonNegativeMessage == null) ? (view != AlertController.this.mButtonNeutral || AlertController.this.mButtonNeutralMessage == null) ? null : Message.obtain(AlertController.this.mButtonNeutralMessage) : Message.obtain(AlertController.this.mButtonNegativeMessage) : Message.obtain(AlertController.this.mButtonPositiveMessage);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController.this.mHandler.obtainMessage(1, AlertController.this.mDialog).sendToTarget();
        }
    };
    /* access modifiers changed from: private */
    public Button mButtonNegative;
    /* access modifiers changed from: private */
    public Message mButtonNegativeMessage;
    private CharSequence mButtonNegativeText;
    /* access modifiers changed from: private */
    public Button mButtonNeutral;
    /* access modifiers changed from: private */
    public Message mButtonNeutralMessage;
    private CharSequence mButtonNeutralText;
    private int mButtonPanelLayoutHint = 0;
    private int mButtonPanelSideLayout;
    /* access modifiers changed from: private */
    public Button mButtonPositive;
    /* access modifiers changed from: private */
    public Message mButtonPositiveMessage;
    private CharSequence mButtonPositiveText;
    /* access modifiers changed from: private */
    public int mCheckedItem = -1;
    private final Context mContext;
    private View mCustomTitleView;
    /* access modifiers changed from: private */
    public final AppCompatDialog mDialog;
    /* access modifiers changed from: private */
    public Handler mHandler;
    private Drawable mIcon;
    private int mIconId = 0;
    private ImageView mIconView;
    /* access modifiers changed from: private */
    public int mListItemLayout;
    /* access modifiers changed from: private */
    public int mListLayout;
    /* access modifiers changed from: private */
    public ListView mListView;
    private CharSequence mMessage;
    private TextView mMessageView;
    /* access modifiers changed from: private */
    public int mMultiChoiceItemLayout;
    private ScrollView mScrollView;
    /* access modifiers changed from: private */
    public int mSingleChoiceItemLayout;
    private CharSequence mTitle;
    private TextView mTitleView;
    private View mView;
    private int mViewLayoutResId;
    private int mViewSpacingBottom;
    private int mViewSpacingLeft;
    private int mViewSpacingRight;
    private boolean mViewSpacingSpecified = false;
    private int mViewSpacingTop;
    private final Window mWindow;

    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean mCancelable;
        public int mCheckedItem = -1;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public int mIconAttrId = 0;
        public int mIconId = 0;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public DialogInterface.OnCancelListener mOnCancelListener;
        public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public DialogInterface.OnDismissListener mOnDismissListener;
        public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
        public DialogInterface.OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public boolean mRecycleOnMeasure = true;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public boolean mViewSpacingSpecified = false;
        public int mViewSpacingTop;

        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mCancelable = true;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void createListView(final AlertController alertController) {
            ListAdapter checkedItemAdapter;
            final ListView listView = (ListView) this.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
            if (!this.mIsMultiChoice) {
                int access$1000 = this.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                checkedItemAdapter = this.mCursor == null ? this.mAdapter != null ? this.mAdapter : new CheckedItemAdapter(this.mContext, access$1000, 16908308, this.mItems) : new SimpleCursorAdapter(this.mContext, access$1000, this.mCursor, new String[]{this.mLabelColumn}, new int[]{16908308});
            } else if (this.mCursor == null) {
                checkedItemAdapter = new ArrayAdapter<CharSequence>(this.mContext, alertController.mMultiChoiceItemLayout, 16908308, this.mItems) {
                    public View getView(int i, View view, ViewGroup viewGroup) {
                        View view2 = super.getView(i, view, viewGroup);
                        if (AlertParams.this.mCheckedItems != null && AlertParams.this.mCheckedItems[i]) {
                            listView.setItemChecked(i, true);
                        }
                        return view2;
                    }
                };
            } else {
                final AlertController alertController2 = alertController;
                checkedItemAdapter = new CursorAdapter(this.mContext, this.mCursor, false) {
                    private final int mIsCheckedIndex;
                    private final int mLabelIndex;

                    {
                        Cursor cursor = getCursor();
                        this.mLabelIndex = cursor.getColumnIndexOrThrow(AlertParams.this.mLabelColumn);
                        this.mIsCheckedIndex = cursor.getColumnIndexOrThrow(AlertParams.this.mIsCheckedColumn);
                    }

                    public void bindView(View view, Context context, Cursor cursor) {
                        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.mLabelIndex));
                        listView.setItemChecked(cursor.getPosition(), cursor.getInt(this.mIsCheckedIndex) == 1);
                    }

                    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                        return AlertParams.this.mInflater.inflate(alertController2.mMultiChoiceItemLayout, viewGroup, false);
                    }
                };
            }
            if (this.mOnPrepareListViewListener != null) {
                this.mOnPrepareListViewListener.onPrepareListView(listView);
            }
            ListAdapter unused = alertController.mAdapter = checkedItemAdapter;
            int unused2 = alertController.mCheckedItem = this.mCheckedItem;
            if (this.mOnClickListener != null) {
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        AlertParams.this.mOnClickListener.onClick(alertController.mDialog, i);
                        if (!AlertParams.this.mIsSingleChoice) {
                            alertController.mDialog.dismiss();
                        }
                    }
                });
            } else if (this.mOnCheckboxClickListener != null) {
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        if (AlertParams.this.mCheckedItems != null) {
                            AlertParams.this.mCheckedItems[i] = listView.isItemChecked(i);
                        }
                        AlertParams.this.mOnCheckboxClickListener.onClick(alertController.mDialog, i, listView.isItemChecked(i));
                    }
                });
            }
            if (this.mOnItemSelectedListener != null) {
                listView.setOnItemSelectedListener(this.mOnItemSelectedListener);
            }
            if (this.mIsSingleChoice) {
                listView.setChoiceMode(1);
            } else if (this.mIsMultiChoice) {
                listView.setChoiceMode(2);
            }
            ListView unused3 = alertController.mListView = listView;
        }

        public void apply(AlertController alertController) {
            if (this.mCustomTitleView != null) {
                alertController.setCustomTitle(this.mCustomTitleView);
            } else {
                if (this.mTitle != null) {
                    alertController.setTitle(this.mTitle);
                }
                if (this.mIcon != null) {
                    alertController.setIcon(this.mIcon);
                }
                if (this.mIconId != 0) {
                    alertController.setIcon(this.mIconId);
                }
                if (this.mIconAttrId != 0) {
                    alertController.setIcon(alertController.getIconAttributeResId(this.mIconAttrId));
                }
            }
            if (this.mMessage != null) {
                alertController.setMessage(this.mMessage);
            }
            if (this.mPositiveButtonText != null) {
                alertController.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener, (Message) null);
            }
            if (this.mNegativeButtonText != null) {
                alertController.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener, (Message) null);
            }
            if (this.mNeutralButtonText != null) {
                alertController.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener, (Message) null);
            }
            if (!(this.mItems == null && this.mCursor == null && this.mAdapter == null)) {
                createListView(alertController);
            }
            if (this.mView != null) {
                if (this.mViewSpacingSpecified) {
                    alertController.setView(this.mView, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                    return;
                }
                alertController.setView(this.mView);
            } else if (this.mViewLayoutResId != 0) {
                alertController.setView(this.mViewLayoutResId);
            }
        }
    }

    static final class ButtonHandler extends Handler {
        private static final int MSG_DISMISS_DIALOG = 1;
        private WeakReference<DialogInterface> mDialog;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.mDialog = new WeakReference<>(dialogInterface);
        }

        public final void handleMessage(Message message) {
            switch (message.what) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.mDialog.get(), message.what);
                    return;
                case 1:
                    ((DialogInterface) message.obj).dismiss();
                    return;
                default:
                    return;
            }
        }
    }

    static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public CheckedItemAdapter(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.mContext = context;
        this.mDialog = appCompatDialog;
        this.mWindow = window;
        this.mHandler = new ButtonHandler(appCompatDialog);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, cv.k.AlertDialog, cv.a.alertDialogStyle, 0);
        this.mAlertDialogLayout = obtainStyledAttributes.getResourceId(cv.k.AlertDialog_android_layout, 0);
        this.mButtonPanelSideLayout = obtainStyledAttributes.getResourceId(cv.k.AlertDialog_buttonPanelSideLayout, 0);
        this.mListLayout = obtainStyledAttributes.getResourceId(cv.k.AlertDialog_listLayout, 0);
        this.mMultiChoiceItemLayout = obtainStyledAttributes.getResourceId(cv.k.AlertDialog_multiChoiceItemLayout, 0);
        this.mSingleChoiceItemLayout = obtainStyledAttributes.getResourceId(cv.k.AlertDialog_singleChoiceItemLayout, 0);
        this.mListItemLayout = obtainStyledAttributes.getResourceId(cv.k.AlertDialog_listItemLayout, 0);
        obtainStyledAttributes.recycle();
    }

    static boolean canTextInput(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (canTextInput(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void centerButton(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    private int selectContentView() {
        return this.mButtonPanelSideLayout == 0 ? this.mAlertDialogLayout : this.mButtonPanelLayoutHint == 1 ? this.mButtonPanelSideLayout : this.mAlertDialogLayout;
    }

    private boolean setupButtons() {
        boolean z;
        this.mButtonPositive = (Button) this.mWindow.findViewById(16908313);
        this.mButtonPositive.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonPositiveText)) {
            this.mButtonPositive.setVisibility(8);
            z = false;
        } else {
            this.mButtonPositive.setText(this.mButtonPositiveText);
            this.mButtonPositive.setVisibility(0);
            z = true;
        }
        this.mButtonNegative = (Button) this.mWindow.findViewById(16908314);
        this.mButtonNegative.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNegativeText)) {
            this.mButtonNegative.setVisibility(8);
        } else {
            this.mButtonNegative.setText(this.mButtonNegativeText);
            this.mButtonNegative.setVisibility(0);
            z |= true;
        }
        this.mButtonNeutral = (Button) this.mWindow.findViewById(16908315);
        this.mButtonNeutral.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNeutralText)) {
            this.mButtonNeutral.setVisibility(8);
        } else {
            this.mButtonNeutral.setText(this.mButtonNeutralText);
            this.mButtonNeutral.setVisibility(0);
            z |= true;
        }
        if (shouldCenterSingleButton(this.mContext)) {
            if (z) {
                centerButton(this.mButtonPositive);
            } else if (z) {
                centerButton(this.mButtonNegative);
            } else if (z) {
                centerButton(this.mButtonNeutral);
            }
        }
        return z;
    }

    private void setupContent(ViewGroup viewGroup) {
        this.mScrollView = (ScrollView) this.mWindow.findViewById(cv.f.scrollView);
        this.mScrollView.setFocusable(false);
        this.mMessageView = (TextView) this.mWindow.findViewById(16908299);
        if (this.mMessageView != null) {
            if (this.mMessage != null) {
                this.mMessageView.setText(this.mMessage);
                return;
            }
            this.mMessageView.setVisibility(8);
            this.mScrollView.removeView(this.mMessageView);
            if (this.mListView != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.mScrollView.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.mScrollView);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.mListView, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    private boolean setupTitle(ViewGroup viewGroup) {
        if (this.mCustomTitleView != null) {
            viewGroup.addView(this.mCustomTitleView, 0, new ViewGroup.LayoutParams(-1, -2));
            this.mWindow.findViewById(cv.f.title_template).setVisibility(8);
            return true;
        }
        this.mIconView = (ImageView) this.mWindow.findViewById(16908294);
        if (!TextUtils.isEmpty(this.mTitle)) {
            this.mTitleView = (TextView) this.mWindow.findViewById(cv.f.alertTitle);
            this.mTitleView.setText(this.mTitle);
            if (this.mIconId != 0) {
                this.mIconView.setImageResource(this.mIconId);
                return true;
            } else if (this.mIcon != null) {
                this.mIconView.setImageDrawable(this.mIcon);
                return true;
            } else {
                this.mTitleView.setPadding(this.mIconView.getPaddingLeft(), this.mIconView.getPaddingTop(), this.mIconView.getPaddingRight(), this.mIconView.getPaddingBottom());
                this.mIconView.setVisibility(8);
                return true;
            }
        } else {
            this.mWindow.findViewById(cv.f.title_template).setVisibility(8);
            this.mIconView.setVisibility(8);
            viewGroup.setVisibility(8);
            return false;
        }
    }

    private void setupView() {
        boolean z = false;
        setupContent((ViewGroup) this.mWindow.findViewById(cv.f.contentPanel));
        boolean z2 = setupButtons();
        es a = es.a(this.mContext, (AttributeSet) null, cv.k.AlertDialog, cv.a.alertDialogStyle);
        setupTitle((ViewGroup) this.mWindow.findViewById(cv.f.topPanel));
        View findViewById = this.mWindow.findViewById(cv.f.buttonPanel);
        if (!z2) {
            findViewById.setVisibility(8);
            View findViewById2 = this.mWindow.findViewById(cv.f.textSpacerNoButtons);
            if (findViewById2 != null) {
                findViewById2.setVisibility(0);
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.mWindow.findViewById(cv.f.customPanel);
        View inflate = this.mView != null ? this.mView : this.mViewLayoutResId != 0 ? LayoutInflater.from(this.mContext).inflate(this.mViewLayoutResId, frameLayout, false) : null;
        if (inflate != null) {
            z = true;
        }
        if (!z || !canTextInput(inflate)) {
            this.mWindow.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout2 = (FrameLayout) this.mWindow.findViewById(cv.f.custom);
            frameLayout2.addView(inflate, new ViewGroup.LayoutParams(-1, -1));
            if (this.mViewSpacingSpecified) {
                frameLayout2.setPadding(this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
            }
            if (this.mListView != null) {
                ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 0.0f;
            }
        } else {
            frameLayout.setVisibility(8);
        }
        ListView listView = this.mListView;
        if (!(listView == null || this.mAdapter == null)) {
            listView.setAdapter(this.mAdapter);
            int i = this.mCheckedItem;
            if (i >= 0) {
                listView.setItemChecked(i, true);
                listView.setSelection(i);
            }
        }
        a.a.recycle();
    }

    private static boolean shouldCenterSingleButton(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(cv.a.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public Button getButton(int i) {
        switch (i) {
            case -3:
                return this.mButtonNeutral;
            case -2:
                return this.mButtonNegative;
            case -1:
                return this.mButtonPositive;
            default:
                return null;
        }
    }

    public int getIconAttributeResId(int i) {
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.mListView;
    }

    public void installContent() {
        this.mDialog.supportRequestWindowFeature(1);
        this.mDialog.setContentView(selectContentView());
        setupView();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.mScrollView != null && this.mScrollView.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.mScrollView != null && this.mScrollView.executeKeyEvent(keyEvent);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.mHandler.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.mButtonNeutralText = charSequence;
                this.mButtonNeutralMessage = message;
                return;
            case -2:
                this.mButtonNegativeText = charSequence;
                this.mButtonNegativeMessage = message;
                return;
            case -1:
                this.mButtonPositiveText = charSequence;
                this.mButtonPositiveMessage = message;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void setButtonPanelLayoutHint(int i) {
        this.mButtonPanelLayoutHint = i;
    }

    public void setCustomTitle(View view) {
        this.mCustomTitleView = view;
    }

    public void setIcon(int i) {
        this.mIcon = null;
        this.mIconId = i;
        if (this.mIconView == null) {
            return;
        }
        if (i != 0) {
            this.mIconView.setImageResource(this.mIconId);
        } else {
            this.mIconView.setVisibility(8);
        }
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.mIconId = 0;
        if (this.mIconView == null) {
            return;
        }
        if (drawable != null) {
            this.mIconView.setImageDrawable(drawable);
        } else {
            this.mIconView.setVisibility(8);
        }
    }

    public void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        if (this.mMessageView != null) {
            this.mMessageView.setText(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        }
    }

    public void setView(int i) {
        this.mView = null;
        this.mViewLayoutResId = i;
        this.mViewSpacingSpecified = false;
    }

    public void setView(View view) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = false;
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = true;
        this.mViewSpacingLeft = i;
        this.mViewSpacingTop = i2;
        this.mViewSpacingRight = i3;
        this.mViewSpacingBottom = i4;
    }
}
