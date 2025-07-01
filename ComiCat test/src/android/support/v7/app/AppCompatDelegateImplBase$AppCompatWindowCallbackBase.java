// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import dm;
import ds;

// Referenced classes of package android.support.v7.app:
//            AppCompatDelegateImplBase

class this._cls0 extends dm
{

    final AppCompatDelegateImplBase this$0;

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (AppCompatDelegateImplBase.this.dispatchKeyEvent(keyevent))
        {
            return true;
        } else
        {
            return super.dispatchKeyEvent(keyevent);
        }
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyevent)
    {
        if (onKeyShortcut(keyevent.getKeyCode(), keyevent))
        {
            return true;
        } else
        {
            return super.dispatchKeyShortcutEvent(keyevent);
        }
    }

    public void onContentChanged()
    {
    }

    public boolean onCreatePanelMenu(int i, Menu menu)
    {
        if (i == 0 && !(menu instanceof ds))
        {
            return false;
        } else
        {
            return super.onCreatePanelMenu(i, menu);
        }
    }

    public boolean onMenuOpened(int i, Menu menu)
    {
        if (AppCompatDelegateImplBase.this.onMenuOpened(i, menu))
        {
            return true;
        } else
        {
            return super.onMenuOpened(i, menu);
        }
    }

    public void onPanelClosed(int i, Menu menu)
    {
        if (AppCompatDelegateImplBase.this.onPanelClosed(i, menu))
        {
            return;
        } else
        {
            super.onPanelClosed(i, menu);
            return;
        }
    }

    public boolean onPreparePanel(int i, View view, Menu menu)
    {
        ds ds1;
        boolean flag;
        if (menu instanceof ds)
        {
            ds1 = (ds)menu;
        } else
        {
            ds1 = null;
        }
        if (i == 0 && ds1 == null)
        {
            flag = false;
        } else
        {
            if (ds1 != null)
            {
                ds1.k = true;
            }
            boolean flag1 = super.onPreparePanel(i, view, menu);
            flag = flag1;
            if (ds1 != null)
            {
                ds1.k = false;
                return flag1;
            }
        }
        return flag;
    }

    (android.view.lbackBase lbackbase)
    {
        this$0 = AppCompatDelegateImplBase.this;
        super(lbackbase);
    }
}
