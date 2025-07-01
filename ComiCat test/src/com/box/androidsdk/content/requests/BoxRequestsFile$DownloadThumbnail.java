// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import android.text.TextUtils;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxSession;
import java.io.File;
import java.io.OutputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestDownload, BoxRequestsFile

public static class mFormat extends BoxRequestDownload
{
    public static final class Format extends Enum
    {

        private static final Format $VALUES[];
        public static final Format JPG;
        public static final Format PNG;
        private final String mExt;

        public static Format valueOf(String s)
        {
            return (Format)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsFile$DownloadThumbnail$Format, s);
        }

        public static Format[] values()
        {
            return (Format[])$VALUES.clone();
        }

        public final String toString()
        {
            return mExt;
        }

        static 
        {
            JPG = new Format("JPG", 0, ".jpg");
            PNG = new Format("PNG", 1, ".png");
            $VALUES = (new Format[] {
                JPG, PNG
            });
        }

        private Format(String s, int i, String s1)
        {
            super(s, i);
            mExt = s1;
        }
    }


    private static final String FIELD_MAX_HEIGHT = "max_height";
    private static final String FIELD_MAX_WIDTH = "max_width";
    private static final String FIELD_MIN_HEIGHT = "min_height";
    private static final String FIELD_MIN_WIDTH = "min_width";
    public static int SIZE_128 = 0;
    public static int SIZE_160 = 0;
    public static int SIZE_256 = 0;
    public static int SIZE_32 = 0;
    public static int SIZE_320 = 0;
    public static int SIZE_64 = 0;
    public static int SIZE_94 = 0;
    private static final long serialVersionUID = 0x70be1f2741234d03L;
    protected Format mFormat;

    protected URL buildUrl()
    {
        String s = createQuery(mQueryMap);
        String s1 = String.format(Locale.ENGLISH, "%s%s", new Object[] {
            mRequestUrlString, getThumbnailExtension()
        });
        if (TextUtils.isEmpty(s))
        {
            return new URL(s1);
        } else
        {
            return new URL(String.format(Locale.ENGLISH, "%s?%s", new Object[] {
                s1, s
            }));
        }
    }

    public Format getFormat()
    {
        return mFormat;
    }

    public Integer getMaxHeight()
    {
        if (mQueryMap.containsKey("max_height"))
        {
            return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("max_height")));
        } else
        {
            return null;
        }
    }

    public Integer getMaxWidth()
    {
        if (mQueryMap.containsKey("max_width"))
        {
            return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("max_width")));
        } else
        {
            return null;
        }
    }

    public Integer getMinHeight()
    {
        if (mQueryMap.containsKey("min_height"))
        {
            return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("min_height")));
        } else
        {
            return null;
        }
    }

    public Integer getMinWidth()
    {
        if (mQueryMap.containsKey("min_width"))
        {
            return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("min_width")));
        } else
        {
            return null;
        }
    }

    protected String getThumbnailExtension()
    {
        if (mFormat != null)
        {
            return mFormat.toString();
        }
        Integer integer;
        if (getMinWidth() != null)
        {
            integer = getMinWidth();
        } else
        if (getMinHeight() != null)
        {
            integer = getMinHeight();
        } else
        if (getMaxWidth() != null)
        {
            integer = getMaxWidth();
        } else
        if (getMaxHeight() != null)
        {
            integer = getMaxHeight();
        } else
        {
            integer = null;
        }
        if (integer == null)
        {
            return Format.JPG.toString();
        }
        int i = integer.intValue();
        if (i <= SIZE_32)
        {
            return Format.PNG.toString();
        }
        if (i <= SIZE_64)
        {
            return Format.PNG.toString();
        }
        if (i > SIZE_94)
        {
            if (i <= SIZE_128)
            {
                return Format.PNG.toString();
            }
            if (i > SIZE_160 && i <= SIZE_256)
            {
                return Format.PNG.toString();
            }
        }
        return Format.JPG.toString();
    }

    public Format setFormat(Format format)
    {
        mFormat = format;
        return this;
    }

    public mFormat setMaxHeight(int i)
    {
        mQueryMap.put("max_height", Integer.toString(i));
        return this;
    }

    public mQueryMap setMaxWidth(int i)
    {
        mQueryMap.put("max_width", Integer.toString(i));
        return this;
    }

    public mQueryMap setMinHeight(int i)
    {
        mQueryMap.put("min_height", Integer.toString(i));
        return this;
    }

    public mQueryMap setMinSize(int i)
    {
        setMinWidth(i);
        setMinHeight(i);
        return this;
    }

    public setMinHeight setMinWidth(int i)
    {
        mQueryMap.put("min_width", Integer.toString(i));
        return this;
    }

    static 
    {
        SIZE_32 = 32;
        SIZE_64 = 64;
        SIZE_94 = 94;
        SIZE_128 = 128;
        SIZE_160 = 160;
        SIZE_256 = 256;
        SIZE_320 = 320;
    }

    public Format.mExt(File file, String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxDownload, file, s, boxsession);
        mFormat = null;
    }

    public mFormat(OutputStream outputstream, String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxDownload, outputstream, s, boxsession);
        mFormat = null;
    }

    public mFormat(String s, File file, String s1, BoxSession boxsession)
    {
        super(s, com/box/androidsdk/content/models/BoxDownload, file, s1, boxsession);
        mFormat = null;
    }

    public mFormat(String s, OutputStream outputstream, String s1, BoxSession boxsession)
    {
        super(s, com/box/androidsdk/content/models/BoxDownload, outputstream, s1, boxsession);
        mFormat = null;
    }
}
