// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxDownload extends BoxJsonObject
{

    private static final String FIELD_CONTENT_LENGTH = "content_length";
    private static final String FIELD_CONTENT_TYPE = "content_type";
    private static final String FIELD_DATE = "date";
    private static final String FIELD_END_RANGE = "end_range";
    private static final String FIELD_EXPIRATION = "expiration";
    private static final String FIELD_FILE_NAME = "file_name";
    private static final String FIELD_START_RANGE = "start_range";
    private static final String FIELD_TOTAL_RANGE = "total_range";

    public BoxDownload(String s, long l, String s1, String s2, String s3, String s4)
    {
        if (!SdkUtils.isEmptyString(s))
        {
            setFileName(s);
        }
        set("content_length", Long.valueOf(l));
        if (!SdkUtils.isEmptyString(s1))
        {
            set("content_type", s1);
        }
        if (!SdkUtils.isEmptyString(s2))
        {
            setContentRange(s2);
        }
        if (!SdkUtils.isEmptyString(s3))
        {
            set("date", s3);
        }
        if (!SdkUtils.isEmptyString(s4))
        {
            set("expiration", s4);
        }
    }

    private static final Date parseDate(String s)
    {
        try
        {
            s = BoxDateFormat.parseHeaderDate(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public Long getContentLength()
    {
        return getPropertyAsLong("content_length");
    }

    public String getContentType()
    {
        return getPropertyAsString("content_type");
    }

    public Date getDate()
    {
        return parseDate(getPropertyAsString("date"));
    }

    public Long getEndRange()
    {
        return getPropertyAsLong("end_range");
    }

    public Date getExpiration()
    {
        return parseDate(getPropertyAsString("expiration"));
    }

    public String getFileName()
    {
        return getPropertyAsString("file_name");
    }

    public File getOutputFile()
    {
        return null;
    }

    public Long getStartRange()
    {
        return getPropertyAsLong("start_range");
    }

    public Long getTotalRange()
    {
        return getPropertyAsLong("total_range");
    }

    protected void setContentRange(String s)
    {
        int i = s.lastIndexOf("/");
        int j = s.indexOf("-");
        set("start_range", Long.valueOf(Long.parseLong(s.substring(s.indexOf("bytes") + 6, j))));
        set("end_range", Long.valueOf(Long.parseLong(s.substring(j + 1, i))));
        set("total_range", Long.valueOf(Long.parseLong(s.substring(i + 1))));
    }

    protected void setFileName(String s)
    {
        String as[] = s.split(";");
        int j = as.length;
        int i = 0;
        while (i < j) 
        {
            s = as[i].trim();
            if (s.startsWith("filename="))
            {
                if (s.endsWith("\""))
                {
                    s = s.substring(s.indexOf("\"") + 1, s.length() - 1);
                } else
                {
                    s = s.substring(9);
                }
                set("file_name", s);
            }
            i++;
        }
    }
}
