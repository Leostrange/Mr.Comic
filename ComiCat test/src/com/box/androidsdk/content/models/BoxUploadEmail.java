// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxUploadEmail extends BoxJsonObject
{
    public static final class Access extends Enum
    {

        private static final Access $VALUES[];
        public static final Access COLLABORATORS;
        public static final Access OPEN;
        private final String mValue;

        public static Access fromString(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                Access aaccess[] = values();
                int j = aaccess.length;
                for (int i = 0; i < j; i++)
                {
                    Access access = aaccess[i];
                    if (s.equalsIgnoreCase(access.toString()))
                    {
                        return access;
                    }
                }

            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
                s
            }));
        }

        public static Access valueOf(String s)
        {
            return (Access)Enum.valueOf(com/box/androidsdk/content/models/BoxUploadEmail$Access, s);
        }

        public static Access[] values()
        {
            return (Access[])$VALUES.clone();
        }

        public final String toString()
        {
            return mValue;
        }

        static 
        {
            OPEN = new Access("OPEN", 0, "open");
            COLLABORATORS = new Access("COLLABORATORS", 1, "collaborators");
            $VALUES = (new Access[] {
                OPEN, COLLABORATORS
            });
        }

        private Access(String s, int i, String s1)
        {
            super(s, i);
            mValue = s1;
        }
    }


    public static final String FIELD_ACCESS = "access";
    public static final String FIELD_EMAIL = "email";
    private static final long serialVersionUID = 0xe84e689e0efa1249L;

    public BoxUploadEmail()
    {
    }

    public BoxUploadEmail(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxUploadEmail createFromAccess(Access access)
    {
        JsonObject jsonobject = new JsonObject();
        if (access == null)
        {
            jsonobject.add("access", JsonValue.NULL);
        } else
        {
            jsonobject.add("access", access.toString());
        }
        return new BoxUploadEmail(jsonobject);
    }

    public Access getAccess()
    {
        return Access.fromString(getPropertyAsString("access"));
    }
}
