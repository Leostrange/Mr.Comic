// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.box.androidsdk.content.auth:
//            ChooseAuthenticationFragment, AuthenticatedAccountsAdapter

class this._cls0
    implements android.widget.
{

    final ChooseAuthenticationFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (adapterview.getAdapter() instanceof AuthenticatedAccountsAdapter)
        {
            adapterview = ((AuthenticatedAccountsAdapter)adapterview.getAdapter()).getItem(i);
            if (adapterview instanceof fferentAuthenticationInfo)
            {
                if (getActivity() instanceof AuthenticationChosen)
                {
                    ((AuthenticationChosen)getActivity()).onDifferentAuthenticationChosen();
                }
            } else
            if (getActivity() instanceof AuthenticationChosen)
            {
                ((AuthenticationChosen)getActivity()).onAuthenticationChosen(adapterview);
                return;
            }
        }
    }

    AuthenticationChosen()
    {
        this$0 = ChooseAuthenticationFragment.this;
        super();
    }
}
