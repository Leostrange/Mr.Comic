// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication, AuthenticatedAccountsAdapter

public class ChooseAuthenticationFragment extends Fragment
{
    public static interface OnAuthenticationChosen
    {

        public abstract void onAuthenticationChosen(BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo);

        public abstract void onDifferentAuthenticationChosen();
    }


    private static final String EXTRA_BOX_AUTHENTICATION_INFOS = "boxAuthenticationInfos";
    private ListView mListView;

    public ChooseAuthenticationFragment()
    {
    }

    public static ChooseAuthenticationFragment createAuthenticationActivity(Context context)
    {
        return new ChooseAuthenticationFragment();
    }

    public static ChooseAuthenticationFragment createChooseAuthenticationFragment(Context context, ArrayList arraylist)
    {
        ChooseAuthenticationFragment chooseauthenticationfragment = createAuthenticationActivity(context);
        context = chooseauthenticationfragment.getArguments();
        if (context == null)
        {
            context = new Bundle();
        }
        ArrayList arraylist1 = new ArrayList(arraylist.size());
        for (arraylist = arraylist.iterator(); arraylist.hasNext(); arraylist1.add(((BoxAuthentication.BoxAuthenticationInfo)arraylist.next()).toJson())) { }
        context.putCharSequenceArrayList("boxAuthenticationInfos", arraylist1);
        chooseauthenticationfragment.setArguments(context);
        return chooseauthenticationfragment;
    }

    public ArrayList getAuthenticationInfoList()
    {
        if (getArguments() != null && getArguments().getCharSequenceArrayList("boxAuthenticationInfos") != null)
        {
            Object obj = getArguments().getCharSequenceArrayList("boxAuthenticationInfos");
            ArrayList arraylist = new ArrayList(((ArrayList) (obj)).size());
            BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo;
            for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(boxauthenticationinfo))
            {
                CharSequence charsequence = (CharSequence)((Iterator) (obj)).next();
                boxauthenticationinfo = new BoxAuthentication.BoxAuthenticationInfo();
                boxauthenticationinfo.createFromJson(charsequence.toString());
            }

            return arraylist;
        }
        Map map = BoxAuthentication.getInstance().getStoredAuthInfo(getActivity());
        if (map != null)
        {
            ArrayList arraylist1 = new ArrayList(map.size());
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); arraylist1.add(map.get((String)iterator.next()))) { }
            return arraylist1;
        } else
        {
            return null;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        viewgroup = getAuthenticationInfoList();
        layoutinflater = layoutinflater.inflate(hc.d.boxsdk_choose_auth_activity, null);
        mListView = (ListView)layoutinflater.findViewById(hc.c.boxsdk_accounts_list);
        if (viewgroup == null)
        {
            getActivity().getFragmentManager().beginTransaction().remove(this).commit();
            return layoutinflater;
        } else
        {
            mListView.setAdapter(new AuthenticatedAccountsAdapter(getActivity(), hc.d.boxsdk_list_item_account, viewgroup));
            mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final ChooseAuthenticationFragment this$0;

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    if (adapterview.getAdapter() instanceof AuthenticatedAccountsAdapter)
                    {
                        adapterview = ((AuthenticatedAccountsAdapter)adapterview.getAdapter()).getItem(i);
                        if (adapterview instanceof AuthenticatedAccountsAdapter.DifferentAuthenticationInfo)
                        {
                            if (getActivity() instanceof OnAuthenticationChosen)
                            {
                                ((OnAuthenticationChosen)getActivity()).onDifferentAuthenticationChosen();
                            }
                        } else
                        if (getActivity() instanceof OnAuthenticationChosen)
                        {
                            ((OnAuthenticationChosen)getActivity()).onAuthenticationChosen(adapterview);
                            return;
                        }
                    }
                }

            
            {
                this$0 = ChooseAuthenticationFragment.this;
                super();
            }
            });
            return layoutinflater;
        }
    }
}
