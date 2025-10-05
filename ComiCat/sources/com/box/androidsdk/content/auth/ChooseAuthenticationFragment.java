package com.box.androidsdk.content.auth;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import com.box.androidsdk.content.auth.AuthenticatedAccountsAdapter;
import com.box.androidsdk.content.auth.BoxAuthentication;
import defpackage.hc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class ChooseAuthenticationFragment extends Fragment {
    private static final String EXTRA_BOX_AUTHENTICATION_INFOS = "boxAuthenticationInfos";
    private ListView mListView;

    public interface OnAuthenticationChosen {
        void onAuthenticationChosen(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo);

        void onDifferentAuthenticationChosen();
    }

    public static ChooseAuthenticationFragment createAuthenticationActivity(Context context) {
        return new ChooseAuthenticationFragment();
    }

    public static ChooseAuthenticationFragment createChooseAuthenticationFragment(Context context, ArrayList<BoxAuthentication.BoxAuthenticationInfo> arrayList) {
        ChooseAuthenticationFragment createAuthenticationActivity = createAuthenticationActivity(context);
        Bundle arguments = createAuthenticationActivity.getArguments();
        Bundle bundle = arguments == null ? new Bundle() : arguments;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator<BoxAuthentication.BoxAuthenticationInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().toJson());
        }
        bundle.putCharSequenceArrayList(EXTRA_BOX_AUTHENTICATION_INFOS, arrayList2);
        createAuthenticationActivity.setArguments(bundle);
        return createAuthenticationActivity;
    }

    public ArrayList<BoxAuthentication.BoxAuthenticationInfo> getAuthenticationInfoList() {
        if (getArguments() == null || getArguments().getCharSequenceArrayList(EXTRA_BOX_AUTHENTICATION_INFOS) == null) {
            Map<String, BoxAuthentication.BoxAuthenticationInfo> storedAuthInfo = BoxAuthentication.getInstance().getStoredAuthInfo(getActivity());
            if (storedAuthInfo == null) {
                return null;
            }
            ArrayList<BoxAuthentication.BoxAuthenticationInfo> arrayList = new ArrayList<>(storedAuthInfo.size());
            for (String str : storedAuthInfo.keySet()) {
                arrayList.add(storedAuthInfo.get(str));
            }
            return arrayList;
        }
        ArrayList<CharSequence> charSequenceArrayList = getArguments().getCharSequenceArrayList(EXTRA_BOX_AUTHENTICATION_INFOS);
        ArrayList<BoxAuthentication.BoxAuthenticationInfo> arrayList2 = new ArrayList<>(charSequenceArrayList.size());
        Iterator<CharSequence> it = charSequenceArrayList.iterator();
        while (it.hasNext()) {
            BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo = new BoxAuthentication.BoxAuthenticationInfo();
            boxAuthenticationInfo.createFromJson(it.next().toString());
            arrayList2.add(boxAuthenticationInfo);
        }
        return arrayList2;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ArrayList<BoxAuthentication.BoxAuthenticationInfo> authenticationInfoList = getAuthenticationInfoList();
        View inflate = layoutInflater.inflate(hc.d.boxsdk_choose_auth_activity, (ViewGroup) null);
        this.mListView = (ListView) inflate.findViewById(hc.c.boxsdk_accounts_list);
        if (authenticationInfoList == null) {
            getActivity().getFragmentManager().beginTransaction().remove(this).commit();
        } else {
            this.mListView.setAdapter(new AuthenticatedAccountsAdapter(getActivity(), hc.d.boxsdk_list_item_account, authenticationInfoList));
            this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (adapterView.getAdapter() instanceof AuthenticatedAccountsAdapter) {
                        BoxAuthentication.BoxAuthenticationInfo item = ((AuthenticatedAccountsAdapter) adapterView.getAdapter()).getItem(i);
                        if (item instanceof AuthenticatedAccountsAdapter.DifferentAuthenticationInfo) {
                            if (ChooseAuthenticationFragment.this.getActivity() instanceof OnAuthenticationChosen) {
                                ((OnAuthenticationChosen) ChooseAuthenticationFragment.this.getActivity()).onDifferentAuthenticationChosen();
                            }
                        } else if (ChooseAuthenticationFragment.this.getActivity() instanceof OnAuthenticationChosen) {
                            ((OnAuthenticationChosen) ChooseAuthenticationFragment.this.getActivity()).onAuthenticationChosen(item);
                        }
                    }
                }
            });
        }
        return inflate;
    }
}
