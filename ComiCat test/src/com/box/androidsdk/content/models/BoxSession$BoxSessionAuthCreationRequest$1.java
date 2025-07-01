// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession

class this._cls0
    implements Runnable
{

    final this._cls0 this$0;

    public void run()
    {
        if (cess._mth200(this._cls0.this).getRefreshProvider() == null || !cess._mth200(this._cls0.this).getRefreshProvider().launchAuthUi(cess._mth200(this._cls0.this).getUserId(), cess._mth200(this._cls0.this)))
        {
            cess._mth200(this._cls0.this).startAuthenticationUI();
        }
    }

    er()
    {
        this$0 = this._cls0.this;
        super();
    }
}
