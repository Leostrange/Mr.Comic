// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestDownload

class this._cls0 extends BoxDownload
{

    final getFileName this$0;

    public File getOutputFile()
    {
        if (((BoxRequestDownload)equest).getTarget() == null)
        {
            return null;
        }
        if (((BoxRequestDownload)equest).getTarget().isFile())
        {
            return ((BoxRequestDownload)equest).getTarget();
        }
        if (!SdkUtils.isEmptyString(getFileName()))
        {
            return new File(((BoxRequestDownload)equest).getTarget(), getFileName());
        } else
        {
            return super.getOutputFile();
        }
    }

    (String s, long l, String s1, String s2, String s3, 
            String s4)
    {
        this$0 = this._cls0.this;
        super(s, l, s1, s2, s3, s4);
    }
}
