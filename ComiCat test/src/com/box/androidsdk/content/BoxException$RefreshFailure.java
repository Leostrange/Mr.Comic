// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;


// Referenced classes of package com.box.androidsdk.content:
//            BoxException

public static class  extends BoxException
{

    private static final HORIZED fatalTypes[];

    public boolean isErrorFatal()
    {
        boolean flag1 = false;
          = getErrorType();
         a[] = fatalTypes;
        int j = a.length;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    if ( != a[i])
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    static 
    {
        fatalTypes = (new fatalTypes[] {
            ID_GRANT_INVALID_TOKEN, ID_GRANT_TOKEN_EXPIRED, S_DENIED, EDIT_CARD_TRIAL_ENDED, CE_BLOCKED, ID_CLIENT, HORIZED_DEVICE, _PERIOD_EXPIRED, HORIZED
        });
    }

    public (BoxException boxexception)
    {
        super(boxexception.getMessage(), BoxException.access$000(boxexception), boxexception.getResponse(), boxexception);
    }
}
