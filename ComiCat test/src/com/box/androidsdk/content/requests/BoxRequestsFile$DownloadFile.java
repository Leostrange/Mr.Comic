// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxSession;
import java.io.File;
import java.io.OutputStream;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestDownload, BoxRequestsFile

public static class  extends BoxRequestDownload
{

    private static final long serialVersionUID = 0x70be1f2741234d04L;

    public (File file, String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxDownload, file, s, boxsession);
    }

    public (OutputStream outputstream, String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxDownload, outputstream, s, boxsession);
    }

    public (String s, File file, String s1, BoxSession boxsession)
    {
        super(s, com/box/androidsdk/content/models/BoxDownload, file, s1, boxsession);
    }

    public (String s, OutputStream outputstream, String s1, BoxSession boxsession)
    {
        super(s, com/box/androidsdk/content/models/BoxDownload, outputstream, s1, boxsession);
    }
}
