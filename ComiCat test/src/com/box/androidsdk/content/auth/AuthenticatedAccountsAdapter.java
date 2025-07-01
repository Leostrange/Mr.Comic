// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.box.androidsdk.content.views.BoxAvatarView;
import com.box.androidsdk.content.views.OfflineAvatarController;
import java.util.List;

public class AuthenticatedAccountsAdapter extends ArrayAdapter
{
    public static class DifferentAuthenticationInfo extends BoxAuthentication.BoxAuthenticationInfo
    {

        public DifferentAuthenticationInfo()
        {
        }
    }

    public static class ViewHolder
    {

        public TextView descriptionView;
        public BoxAvatarView initialsView;
        public TextView titleView;

        public ViewHolder()
        {
        }
    }


    private static final int CREATE_NEW_TYPE_ID = 2;
    private OfflineAvatarController mAvatarController;

    public AuthenticatedAccountsAdapter(Context context, int i, List list)
    {
        super(context, i, list);
        mAvatarController = new OfflineAvatarController(context);
    }

    public int getCount()
    {
        return super.getCount() + 1;
    }

    public BoxAuthentication.BoxAuthenticationInfo getItem(int i)
    {
        if (i == getCount() - 1)
        {
            return new DifferentAuthenticationInfo();
        } else
        {
            return (BoxAuthentication.BoxAuthenticationInfo)super.getItem(i);
        }
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public int getItemViewType(int i)
    {
        if (i == getCount() - 1)
        {
            return 2;
        } else
        {
            return super.getItemViewType(i);
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1;
        BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo;
        boolean flag;
        flag = false;
        if (getItemViewType(i) == 2)
        {
            return LayoutInflater.from(getContext()).inflate(hc.d.boxsdk_list_item_new_account, viewgroup, false);
        }
        view1 = LayoutInflater.from(getContext()).inflate(hc.d.boxsdk_list_item_account, viewgroup, false);
        viewgroup = (ViewHolder)view1.getTag();
        view = viewgroup;
        if (viewgroup == null)
        {
            view = new ViewHolder();
            view.titleView = (TextView)view1.findViewById(hc.c.box_account_title);
            view.descriptionView = (TextView)view1.findViewById(hc.c.box_account_description);
            view.initialsView = (BoxAvatarView)view1.findViewById(hc.c.box_account_initials);
            view1.setTag(view);
        }
        boxauthenticationinfo = getItem(i);
        if (boxauthenticationinfo == null || boxauthenticationinfo.getUser() == null) goto _L2; else goto _L1
_L1:
        i = ((flag) ? 1 : 0);
        if (!SdkUtils.isEmptyString(boxauthenticationinfo.getUser().getName()))
        {
            i = 1;
        }
        if (i != 0)
        {
            viewgroup = boxauthenticationinfo.getUser().getName();
        } else
        {
            viewgroup = boxauthenticationinfo.getUser().getLogin();
        }
        ((ViewHolder) (view)).titleView.setText(viewgroup);
        if (i != 0)
        {
            ((ViewHolder) (view)).descriptionView.setText(boxauthenticationinfo.getUser().getLogin());
        }
        ((ViewHolder) (view)).initialsView.loadUser(boxauthenticationinfo.getUser(), mAvatarController);
_L4:
        return view1;
_L2:
        if (boxauthenticationinfo != null)
        {
            BoxLogUtils.e("invalid account info", boxauthenticationinfo.toJson());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getViewTypeCount()
    {
        return 2;
    }
}
