package com.box.androidsdk.content.auth;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.box.androidsdk.content.views.BoxAvatarView;
import com.box.androidsdk.content.views.OfflineAvatarController;
import defpackage.hc;
import java.util.List;

public class AuthenticatedAccountsAdapter extends ArrayAdapter<BoxAuthentication.BoxAuthenticationInfo> {
    private static final int CREATE_NEW_TYPE_ID = 2;
    private OfflineAvatarController mAvatarController;

    public static class DifferentAuthenticationInfo extends BoxAuthentication.BoxAuthenticationInfo {
    }

    public static class ViewHolder {
        public TextView descriptionView;
        public BoxAvatarView initialsView;
        public TextView titleView;
    }

    public AuthenticatedAccountsAdapter(Context context, int i, List<BoxAuthentication.BoxAuthenticationInfo> list) {
        super(context, i, list);
        this.mAvatarController = new OfflineAvatarController(context);
    }

    public int getCount() {
        return super.getCount() + 1;
    }

    public BoxAuthentication.BoxAuthenticationInfo getItem(int i) {
        return i == getCount() + -1 ? new DifferentAuthenticationInfo() : (BoxAuthentication.BoxAuthenticationInfo) super.getItem(i);
    }

    public int getItemViewType(int i) {
        if (i == getCount() - 1) {
            return 2;
        }
        return super.getItemViewType(i);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (getItemViewType(i) == 2) {
            return LayoutInflater.from(getContext()).inflate(hc.d.boxsdk_list_item_new_account, viewGroup, false);
        }
        View inflate = LayoutInflater.from(getContext()).inflate(hc.d.boxsdk_list_item_account, viewGroup, false);
        ViewHolder viewHolder = (ViewHolder) inflate.getTag();
        if (viewHolder == null) {
            ViewHolder viewHolder2 = new ViewHolder();
            viewHolder2.titleView = (TextView) inflate.findViewById(hc.c.box_account_title);
            viewHolder2.descriptionView = (TextView) inflate.findViewById(hc.c.box_account_description);
            viewHolder2.initialsView = (BoxAvatarView) inflate.findViewById(hc.c.box_account_initials);
            inflate.setTag(viewHolder2);
            viewHolder = viewHolder2;
        }
        BoxAuthentication.BoxAuthenticationInfo item = getItem(i);
        if (item != null && item.getUser() != null) {
            if (!SdkUtils.isEmptyString(item.getUser().getName())) {
                z = true;
            }
            viewHolder.titleView.setText(z ? item.getUser().getName() : item.getUser().getLogin());
            if (z) {
                viewHolder.descriptionView.setText(item.getUser().getLogin());
            }
            viewHolder.initialsView.loadUser(item.getUser(), this.mAvatarController);
        } else if (item != null) {
            BoxLogUtils.e("invalid account info", item.toJson());
        }
        return inflate;
    }

    public int getViewTypeCount() {
        return 2;
    }
}
