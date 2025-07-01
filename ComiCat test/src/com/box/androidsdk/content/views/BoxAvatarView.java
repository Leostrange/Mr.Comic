// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.views;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxCollaborator;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.WeakReference;

public class BoxAvatarView extends LinearLayout
{
    public static interface AvatarController
    {

        public abstract BoxFutureTask executeAvatarDownloadRequest(String s, BoxAvatarView boxavatarview);

        public abstract File getAvatarFile(String s);
    }


    private static final String DEFAULT_NAME = "";
    private static final String EXTRA_AVATAR_CONTROLLER = "extraAvatarController";
    private static final String EXTRA_PARENT = "extraParent";
    private static final String EXTRA_USER = "extraUser";
    private ImageView mAvatar;
    private AvatarController mAvatarController;
    private WeakReference mAvatarDownloadTaskRef;
    private TextView mInitials;
    private BoxCollaborator mUser;

    public BoxAvatarView(Context context)
    {
        this(context, null);
    }

    public BoxAvatarView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public BoxAvatarView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        context = LayoutInflater.from(context).inflate(hc.d.boxsdk_avatar_item, this, true);
        mInitials = (TextView)context.findViewById(hc.c.box_avatar_initials);
        mAvatar = (ImageView)context.findViewById(hc.c.box_avatar_image);
    }

    public void loadUser(BoxCollaborator boxcollaborator, Serializable serializable)
    {
        if (serializable != null)
        {
            mAvatarController = (AvatarController)serializable;
        }
        if (mUser != null && boxcollaborator != null && TextUtils.equals(mUser.getId(), boxcollaborator.getId()))
        {
            return;
        }
        mUser = boxcollaborator;
        if (mAvatarDownloadTaskRef != null && mAvatarDownloadTaskRef.get() != null)
        {
            try
            {
                ((BoxFutureTask)mAvatarDownloadTaskRef.get()).cancel(true);
            }
            // Misplaced declaration of an exception variable
            catch (BoxCollaborator boxcollaborator) { }
        }
        updateAvatar();
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        if (parcelable instanceof Bundle)
        {
            mAvatarController = (AvatarController)((Bundle)parcelable).getSerializable("extraAvatarController");
            mUser = (BoxUser)((Bundle)parcelable).getSerializable("extraUser");
            super.onRestoreInstanceState(((Bundle)parcelable).getParcelable("extraParent"));
            if (mUser != null)
            {
                updateAvatar();
            }
            return;
        } else
        {
            super.onRestoreInstanceState(parcelable);
            return;
        }
    }

    protected Parcelable onSaveInstanceState()
    {
        Bundle bundle = new Bundle();
        bundle.putSerializable("extraAvatarController", (Serializable)mAvatarController);
        bundle.putSerializable("extraUser", mUser);
        bundle.putParcelable("extraParent", super.onSaveInstanceState());
        return bundle;
    }

    protected void updateAvatar()
    {
        String s1;
        if (mUser == null || mAvatarController == null)
        {
            return;
        }
        if (Thread.currentThread() != Looper.getMainLooper().getThread())
        {
            post(new Runnable() {

                final BoxAvatarView this$0;

                public void run()
                {
                    updateAvatar();
                }

            
            {
                this$0 = BoxAvatarView.this;
                super();
            }
            });
            return;
        }
        File file = mAvatarController.getAvatarFile(mUser.getId());
        if (file.exists())
        {
            mAvatar.setImageDrawable(Drawable.createFromPath(file.getAbsolutePath()));
            mAvatar.setVisibility(0);
            mInitials.setVisibility(8);
            return;
        }
        s1 = "";
        if (!(mUser instanceof BoxCollaborator)) goto _L2; else goto _L1
_L1:
        String s = mUser.getName();
_L4:
        SdkUtils.setInitialsThumb(getContext(), mInitials, s);
        mAvatar.setVisibility(8);
        mInitials.setVisibility(0);
        mAvatarDownloadTaskRef = new WeakReference(mAvatarController.executeAvatarDownloadRequest(mUser.getId(), this));
        return;
_L2:
        s = s1;
        if (SdkUtils.isBlank(""))
        {
            s = s1;
            if (mUser instanceof BoxUser)
            {
                s = ((BoxUser)mUser).getLogin();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
