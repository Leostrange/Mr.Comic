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
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.SdkUtils;
import defpackage.hc;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.WeakReference;

public class BoxAvatarView extends LinearLayout {
    private static final String DEFAULT_NAME = "";
    private static final String EXTRA_AVATAR_CONTROLLER = "extraAvatarController";
    private static final String EXTRA_PARENT = "extraParent";
    private static final String EXTRA_USER = "extraUser";
    private ImageView mAvatar;
    private AvatarController mAvatarController;
    private WeakReference<BoxFutureTask<BoxDownload>> mAvatarDownloadTaskRef;
    private TextView mInitials;
    private BoxCollaborator mUser;

    public interface AvatarController {
        BoxFutureTask<BoxDownload> executeAvatarDownloadRequest(String str, BoxAvatarView boxAvatarView);

        File getAvatarFile(String str);
    }

    public BoxAvatarView(Context context) {
        this(context, (AttributeSet) null);
    }

    public BoxAvatarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BoxAvatarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View inflate = LayoutInflater.from(context).inflate(hc.d.boxsdk_avatar_item, this, true);
        this.mInitials = (TextView) inflate.findViewById(hc.c.box_avatar_initials);
        this.mAvatar = (ImageView) inflate.findViewById(hc.c.box_avatar_image);
    }

    public <T extends Serializable & AvatarController> void loadUser(BoxCollaborator boxCollaborator, T t) {
        if (t != null) {
            this.mAvatarController = (AvatarController) t;
        }
        if (this.mUser == null || boxCollaborator == null || !TextUtils.equals(this.mUser.getId(), boxCollaborator.getId())) {
            this.mUser = boxCollaborator;
            if (!(this.mAvatarDownloadTaskRef == null || this.mAvatarDownloadTaskRef.get() == null)) {
                try {
                    ((BoxFutureTask) this.mAvatarDownloadTaskRef.get()).cancel(true);
                } catch (Exception e) {
                }
            }
            updateAvatar();
        }
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            this.mAvatarController = (AvatarController) ((Bundle) parcelable).getSerializable(EXTRA_AVATAR_CONTROLLER);
            this.mUser = (BoxUser) ((Bundle) parcelable).getSerializable(EXTRA_USER);
            super.onRestoreInstanceState(((Bundle) parcelable).getParcelable(EXTRA_PARENT));
            if (this.mUser != null) {
                updateAvatar();
                return;
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putSerializable(EXTRA_AVATAR_CONTROLLER, (Serializable) this.mAvatarController);
        bundle.putSerializable(EXTRA_USER, this.mUser);
        bundle.putParcelable(EXTRA_PARENT, super.onSaveInstanceState());
        return bundle;
    }

    /* access modifiers changed from: protected */
    public void updateAvatar() {
        if (this.mUser != null && this.mAvatarController != null) {
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                post(new Runnable() {
                    public void run() {
                        BoxAvatarView.this.updateAvatar();
                    }
                });
                return;
            }
            File avatarFile = this.mAvatarController.getAvatarFile(this.mUser.getId());
            if (avatarFile.exists()) {
                this.mAvatar.setImageDrawable(Drawable.createFromPath(avatarFile.getAbsolutePath()));
                this.mAvatar.setVisibility(0);
                this.mInitials.setVisibility(8);
                return;
            }
            String str = DEFAULT_NAME;
            if (this.mUser instanceof BoxCollaborator) {
                str = this.mUser.getName();
            } else if (SdkUtils.isBlank(str) && (this.mUser instanceof BoxUser)) {
                str = ((BoxUser) this.mUser).getLogin();
            }
            SdkUtils.setInitialsThumb(getContext(), this.mInitials, str);
            this.mAvatar.setVisibility(8);
            this.mInitials.setVisibility(0);
            this.mAvatarDownloadTaskRef = new WeakReference<>(this.mAvatarController.executeAvatarDownloadRequest(this.mUser.getId(), this));
        }
    }
}
