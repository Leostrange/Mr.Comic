// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import bh;
import bp;
import bu;
import java.lang.annotation.Annotation;

// Referenced classes of package android.support.design.widget:
//            AnimationUtils, CoordinatorLayout, SwipeDismissBehavior, SnackbarManager

public class Snackbar
{
    final class Behavior extends SwipeDismissBehavior
    {

        final Snackbar this$0;

        public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorlayout, SnackbarLayout snackbarlayout, MotionEvent motionevent)
        {
            if (!coordinatorlayout.isPointInChildBounds(snackbarlayout, (int)motionevent.getX(), (int)motionevent.getY())) goto _L2; else goto _L1
_L1:
            motionevent.getActionMasked();
            JVM INSTR tableswitch 0 3: default 52
        //                       0 60
        //                       1 76
        //                       2 52
        //                       3 76;
               goto _L2 _L3 _L4 _L2 _L4
_L2:
            return super.onInterceptTouchEvent(coordinatorlayout, snackbarlayout, motionevent);
_L3:
            SnackbarManager.getInstance().cancelTimeout(mManagerCallback);
            continue; /* Loop/switch isn't completed */
_L4:
            SnackbarManager.getInstance().restoreTimeout(mManagerCallback);
            if (true) goto _L2; else goto _L5
_L5:
        }

        public final volatile boolean onInterceptTouchEvent(CoordinatorLayout coordinatorlayout, View view, MotionEvent motionevent)
        {
            return onInterceptTouchEvent(coordinatorlayout, (SnackbarLayout)view, motionevent);
        }

        Behavior()
        {
            this$0 = Snackbar.this;
            super();
        }
    }

    public static interface Duration
        extends Annotation
    {
    }

    public static class SnackbarLayout extends LinearLayout
    {

        private TextView mActionView;
        private int mMaxInlineActionWidth;
        private int mMaxWidth;
        private TextView mMessageView;
        private OnLayoutChangeListener mOnLayoutChangeListener;

        private static void updateTopBottomPadding(View view, int i, int j)
        {
            if (bh.A(view))
            {
                bh.b(view, bh.m(view), i, bh.n(view), j);
                return;
            } else
            {
                view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), j);
                return;
            }
        }

        private boolean updateViewsWithinLayout(int i, int j, int k)
        {
            boolean flag = false;
            if (i != getOrientation())
            {
                setOrientation(i);
                flag = true;
            }
            if (mMessageView.getPaddingTop() != j || mMessageView.getPaddingBottom() != k)
            {
                updateTopBottomPadding(mMessageView, j, k);
                flag = true;
            }
            return flag;
        }

        void animateChildrenIn(int i, int j)
        {
            bh.c(mMessageView, 0.0F);
            bh.s(mMessageView).a(1.0F).a(j).b(i).b();
            if (mActionView.getVisibility() == 0)
            {
                bh.c(mActionView, 0.0F);
                bh.s(mActionView).a(1.0F).a(j).b(i).b();
            }
        }

        void animateChildrenOut(int i, int j)
        {
            bh.c(mMessageView, 1.0F);
            bh.s(mMessageView).a(0.0F).a(j).b(i).b();
            if (mActionView.getVisibility() == 0)
            {
                bh.c(mActionView, 1.0F);
                bh.s(mActionView).a(0.0F).a(j).b(i).b();
            }
        }

        TextView getActionView()
        {
            return mActionView;
        }

        TextView getMessageView()
        {
            return mMessageView;
        }

        protected void onFinishInflate()
        {
            super.onFinishInflate();
            mMessageView = (TextView)findViewById(a.e.snackbar_text);
            mActionView = (TextView)findViewById(a.e.snackbar_action);
        }

        protected void onLayout(boolean flag, int i, int j, int k, int l)
        {
            super.onLayout(flag, i, j, k, l);
            if (flag && mOnLayoutChangeListener != null)
            {
                mOnLayoutChangeListener.onLayoutChange(this, i, j, k, l);
            }
        }

        protected void onMeasure(int i, int j)
        {
            int l;
            int i1;
            super.onMeasure(i, j);
            int k = i;
            if (mMaxWidth > 0)
            {
                k = i;
                if (getMeasuredWidth() > mMaxWidth)
                {
                    k = android.view.View.MeasureSpec.makeMeasureSpec(mMaxWidth, 0x40000000);
                    super.onMeasure(k, j);
                }
            }
            l = getResources().getDimensionPixelSize(a.d.snackbar_padding_vertical_2lines);
            i1 = getResources().getDimensionPixelSize(a.d.snackbar_padding_vertical);
            if (mMessageView.getLayout().getLineCount() > 1)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i == 0 || mMaxInlineActionWidth <= 0 || mActionView.getMeasuredWidth() <= mMaxInlineActionWidth) goto _L2; else goto _L1
_L1:
            if (!updateViewsWithinLayout(1, l, l - i1)) goto _L4; else goto _L3
_L3:
            i = 1;
_L6:
            if (i != 0)
            {
                super.onMeasure(k, j);
            }
            return;
_L2:
            if (i != 0)
            {
                i = l;
            } else
            {
                i = i1;
            }
            if (updateViewsWithinLayout(0, i, i))
            {
                i = 1;
                continue; /* Loop/switch isn't completed */
            }
_L4:
            i = 0;
            if (true) goto _L6; else goto _L5
_L5:
        }

        void setOnLayoutChangeListener(OnLayoutChangeListener onlayoutchangelistener)
        {
            mOnLayoutChangeListener = onlayoutchangelistener;
        }

        public SnackbarLayout(Context context)
        {
            this(context, null);
        }

        public SnackbarLayout(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            attributeset = context.obtainStyledAttributes(attributeset, a.h.SnackbarLayout);
            mMaxWidth = attributeset.getDimensionPixelSize(a.h.SnackbarLayout_android_maxWidth, -1);
            mMaxInlineActionWidth = attributeset.getDimensionPixelSize(a.h.SnackbarLayout_maxActionInlineWidth, -1);
            if (attributeset.hasValue(a.h.SnackbarLayout_elevation))
            {
                bh.f(this, attributeset.getDimensionPixelSize(a.h.SnackbarLayout_elevation, 0));
            }
            attributeset.recycle();
            setClickable(true);
            LayoutInflater.from(context).inflate(a.f.layout_snackbar_include, this);
        }
    }

    static interface SnackbarLayout.OnLayoutChangeListener
    {

        public abstract void onLayoutChange(View view, int i, int j, int k, int l);
    }


    private static final int ANIMATION_DURATION = 250;
    private static final int ANIMATION_FADE_DURATION = 180;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    private static final int MSG_DISMISS = 1;
    private static final int MSG_SHOW = 0;
    private static final Handler sHandler = new Handler(Looper.getMainLooper(), new android.os.Handler.Callback() {

        public final boolean handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                return false;

            case 0: // '\0'
                ((Snackbar)message.obj).showView();
                return true;

            case 1: // '\001'
                ((Snackbar)message.obj).hideView();
                break;
            }
            return true;
        }

    });
    private final Context mContext;
    private int mDuration;
    private final SnackbarManager.Callback mManagerCallback = new SnackbarManager.Callback() {

        final Snackbar this$0;

        public void dismiss()
        {
            Snackbar.sHandler.sendMessage(Snackbar.sHandler.obtainMessage(1, Snackbar.this));
        }

        public void show()
        {
            Snackbar.sHandler.sendMessage(Snackbar.sHandler.obtainMessage(0, Snackbar.this));
        }

            
            {
                this$0 = Snackbar.this;
                super();
            }
    };
    private final ViewGroup mParent;
    private final SnackbarLayout mView;

    Snackbar(ViewGroup viewgroup)
    {
        mParent = viewgroup;
        mContext = viewgroup.getContext();
        mView = (SnackbarLayout)LayoutInflater.from(mContext).inflate(a.f.layout_snackbar, mParent, false);
    }

    private void animateViewIn()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            bh.b(mView, mView.getHeight());
            bh.s(mView).c(0.0F).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a(250L).a(new bu() {

                final Snackbar this$0;

                public void onAnimationEnd(View view)
                {
                    SnackbarManager.getInstance().onShown(mManagerCallback);
                }

                public void onAnimationStart(View view)
                {
                    mView.animateChildrenIn(70, 180);
                }

            
            {
                this$0 = Snackbar.this;
                super();
            }
            }).b();
            return;
        } else
        {
            Animation animation = AnimationUtils.loadAnimation(mView.getContext(), a.a.snackbar_in);
            animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            animation.setDuration(250L);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final Snackbar this$0;

                public void onAnimationEnd(Animation animation1)
                {
                    SnackbarManager.getInstance().onShown(mManagerCallback);
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                this$0 = Snackbar.this;
                super();
            }
            });
            mView.startAnimation(animation);
            return;
        }
    }

    private void animateViewOut()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            bh.s(mView).c(mView.getHeight()).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a(250L).a(new bu() {

                final Snackbar this$0;

                public void onAnimationEnd(View view)
                {
                    onViewHidden();
                }

                public void onAnimationStart(View view)
                {
                    mView.animateChildrenOut(0, 180);
                }

            
            {
                this$0 = Snackbar.this;
                super();
            }
            }).b();
            return;
        } else
        {
            Animation animation = AnimationUtils.loadAnimation(mView.getContext(), a.a.snackbar_out);
            animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            animation.setDuration(250L);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final Snackbar this$0;

                public void onAnimationEnd(Animation animation1)
                {
                    onViewHidden();
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                this$0 = Snackbar.this;
                super();
            }
            });
            mView.startAnimation(animation);
            return;
        }
    }

    private static ViewGroup findSuitableParent(View view)
    {
        ViewGroup viewgroup1 = null;
        View view1 = view;
        do
        {
            if (view1 instanceof CoordinatorLayout)
            {
                return (ViewGroup)view1;
            }
            ViewGroup viewgroup = viewgroup1;
            if (view1 instanceof FrameLayout)
            {
                if (view1.getId() == 0x1020002)
                {
                    return (ViewGroup)view1;
                }
                viewgroup = (ViewGroup)view1;
            }
            view = view1;
            if (view1 != null)
            {
                view = view1.getParent();
                if (view instanceof View)
                {
                    view = (View)view;
                } else
                {
                    view = null;
                }
            }
            view1 = view;
            viewgroup1 = viewgroup;
        } while (view != null);
        return viewgroup;
    }

    private boolean isBeingDragged()
    {
        Object obj = mView.getLayoutParams();
        if (obj instanceof CoordinatorLayout.LayoutParams)
        {
            obj = ((CoordinatorLayout.LayoutParams)obj).getBehavior();
            if (obj instanceof SwipeDismissBehavior)
            {
                return ((SwipeDismissBehavior)obj).getDragState() != 0;
            }
        }
        return false;
    }

    public static Snackbar make(View view, int i, int j)
    {
        return make(view, view.getResources().getText(i), j);
    }

    public static Snackbar make(View view, CharSequence charsequence, int i)
    {
        view = new Snackbar(findSuitableParent(view));
        view.setText(charsequence);
        view.setDuration(i);
        return view;
    }

    private void onViewHidden()
    {
        mParent.removeView(mView);
        SnackbarManager.getInstance().onDismissed(mManagerCallback);
    }

    public void dismiss()
    {
        SnackbarManager.getInstance().dismiss(mManagerCallback);
    }

    public int getDuration()
    {
        return mDuration;
    }

    public View getView()
    {
        return mView;
    }

    final void hideView()
    {
        if (mView.getVisibility() != 0 || isBeingDragged())
        {
            onViewHidden();
            return;
        } else
        {
            animateViewOut();
            return;
        }
    }

    public Snackbar setAction(int i, android.view.View.OnClickListener onclicklistener)
    {
        return setAction(mContext.getText(i), onclicklistener);
    }

    public Snackbar setAction(CharSequence charsequence, final android.view.View.OnClickListener listener)
    {
        TextView textview = mView.getActionView();
        if (TextUtils.isEmpty(charsequence) || listener == null)
        {
            textview.setVisibility(8);
            textview.setOnClickListener(null);
            return this;
        } else
        {
            textview.setVisibility(0);
            textview.setText(charsequence);
            textview.setOnClickListener(new android.view.View.OnClickListener() {

                final Snackbar this$0;
                final android.view.View.OnClickListener val$listener;

                public void onClick(View view)
                {
                    listener.onClick(view);
                    dismiss();
                }

            
            {
                this$0 = Snackbar.this;
                listener = onclicklistener;
                super();
            }
            });
            return this;
        }
    }

    public Snackbar setActionTextColor(int i)
    {
        mView.getActionView().setTextColor(i);
        return this;
    }

    public Snackbar setActionTextColor(ColorStateList colorstatelist)
    {
        mView.getActionView().setTextColor(colorstatelist);
        return this;
    }

    public Snackbar setDuration(int i)
    {
        mDuration = i;
        return this;
    }

    public Snackbar setText(int i)
    {
        return setText(mContext.getText(i));
    }

    public Snackbar setText(CharSequence charsequence)
    {
        mView.getMessageView().setText(charsequence);
        return this;
    }

    public void show()
    {
        SnackbarManager.getInstance().show(mDuration, mManagerCallback);
    }

    final void showView()
    {
        if (mView.getParent() == null)
        {
            android.view.ViewGroup.LayoutParams layoutparams = mView.getLayoutParams();
            if (layoutparams instanceof CoordinatorLayout.LayoutParams)
            {
                Behavior behavior = new Behavior();
                behavior.setStartAlphaSwipeDistance(0.1F);
                behavior.setEndAlphaSwipeDistance(0.6F);
                behavior.setSwipeDirection(0);
                behavior.setListener(new SwipeDismissBehavior.OnDismissListener() {

                    final Snackbar this$0;

                    public void onDismiss(View view)
                    {
                        dismiss();
                    }

                    public void onDragStateChanged(int i)
                    {
                        switch (i)
                        {
                        default:
                            return;

                        case 1: // '\001'
                        case 2: // '\002'
                            SnackbarManager.getInstance().cancelTimeout(mManagerCallback);
                            return;

                        case 0: // '\0'
                            SnackbarManager.getInstance().restoreTimeout(mManagerCallback);
                            return;
                        }
                    }

            
            {
                this$0 = Snackbar.this;
                super();
            }
                });
                ((CoordinatorLayout.LayoutParams)layoutparams).setBehavior(behavior);
            }
            mParent.addView(mView);
        }
        if (bh.C(mView))
        {
            animateViewIn();
            return;
        } else
        {
            mView.setOnLayoutChangeListener(new SnackbarLayout.OnLayoutChangeListener() {

                final Snackbar this$0;

                public void onLayoutChange(View view, int i, int j, int k, int l)
                {
                    animateViewIn();
                    mView.setOnLayoutChangeListener(null);
                }

            
            {
                this$0 = Snackbar.this;
                super();
            }
            });
            return;
        }
    }






}
