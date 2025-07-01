// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.BoxFutureTask;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession

class val.task extends Thread
{

    final BoxSession this$0;
    final BoxFutureTask val$task;

    public void run()
    {
        val$task.run();
    }

    ()
    {
        this$0 = final_boxsession;
        val$task = BoxFutureTask.this;
        super();
    }
}
