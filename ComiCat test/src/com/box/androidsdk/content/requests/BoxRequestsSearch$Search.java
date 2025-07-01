// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.SdkUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsSearch

public static class mRequestMethod extends BoxRequestItem
    implements BoxCacheableRequest
{
    public static final class Scope extends Enum
    {

        private static final Scope $VALUES[];
        public static final Scope ENTERPRISE_CONTENT;
        public static final Scope USER_CONTENT;

        public static Scope valueOf(String s)
        {
            return (Scope)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsSearch$Search$Scope, s);
        }

        public static Scope[] values()
        {
            return (Scope[])$VALUES.clone();
        }

        static 
        {
            USER_CONTENT = new Scope("USER_CONTENT", 0);
            ENTERPRISE_CONTENT = new Scope("ENTERPRISE_CONTENT", 1);
            $VALUES = (new Scope[] {
                USER_CONTENT, ENTERPRISE_CONTENT
            });
        }

        private Scope(String s, int i)
        {
            super(s, i);
        }
    }


    public static String CONTENT_TYPE_COMMENTS = "comments";
    public static String CONTENT_TYPE_DESCRIPTION = "description";
    public static String CONTENT_TYPE_FILE_CONTENTS = "file_content";
    public static String CONTENT_TYPE_NAME = "name";
    public static String CONTENT_TYPE_TAGS = "tags";
    protected static final String FIELD_ANCESTOR_FOLDER_IDS = "ancestor_folder_ids";
    protected static final String FIELD_CONTENT_TYPES = "content_types";
    protected static final String FIELD_CREATED_AT_RANGE = "created_at_range";
    protected static final String FIELD_FILE_EXTENSIONS = "file_extensions";
    protected static final String FIELD_LIMIT = "limit";
    protected static final String FIELD_OFFSET = "offset";
    protected static final String FIELD_OWNER_USER_IDS = "owner_user_ids";
    protected static final String FIELD_QUERY = "query";
    protected static final String FIELD_SCOPE = "scope";
    protected static final String FIELD_SIZE_RANGE = "size_range";
    protected static final String FIELD_TYPE = "type";
    protected static final String FIELD_UPDATED_AT_RANGE = "updated_at_range";
    private static final long serialVersionUID = 0x70be1f2741234d00L;

    private void addTimeRange(String s, Date date, Date date1)
    {
        date = BoxDateFormat.getTimeRangeString(date, date1);
        if (!SdkUtils.isEmptyString(date))
        {
            limitValueForKey(s, date);
        }
    }

    private String[] getStringArray(String s)
    {
        s = (String)mQueryMap.get(s);
        if (SdkUtils.isEmptyString(s))
        {
            return null;
        } else
        {
            return s.split(",");
        }
    }

    private Date returnFromDate(String s)
    {
        s = (String)mQueryMap.get(s);
        if (!SdkUtils.isEmptyString(s))
        {
            return BoxDateFormat.getTimeRangeDates(s)[0];
        } else
        {
            return null;
        }
    }

    private Date returnToDate(String s)
    {
        s = (String)mQueryMap.get(s);
        if (!SdkUtils.isEmptyString(s))
        {
            return BoxDateFormat.getTimeRangeDates(s)[1];
        } else
        {
            return null;
        }
    }

    public String[] getAncestorFolderIds()
    {
        return getStringArray("ancestor_folder_ids");
    }

    public String[] getContentTypes()
    {
        return getStringArray("content_types");
    }

    public Date getCreatedAtDateRangeFrom()
    {
        return returnFromDate("created_at_range");
    }

    public Date getCreatedAtDateRangeTo()
    {
        return returnToDate("created_at_range");
    }

    public String[] getFileExtensions()
    {
        return getStringArray("file_extensions");
    }

    public Date getLastUpdatedAtDateRangeFrom()
    {
        return returnFromDate("updated_at_range");
    }

    public Date getLastUpdatedAtDateRangeTo()
    {
        return returnToDate("updated_at_range");
    }

    public Integer getLimit()
    {
        String s = (String)mQueryMap.get("limit");
        if (s != null)
        {
            int i;
            try
            {
                i = Integer.parseInt(s);
            }
            catch (NumberFormatException numberformatexception)
            {
                return null;
            }
            return Integer.valueOf(i);
        } else
        {
            return null;
        }
    }

    public Integer getOffset()
    {
        String s = (String)mQueryMap.get("offset");
        if (s != null)
        {
            int i;
            try
            {
                i = Integer.parseInt(s);
            }
            catch (NumberFormatException numberformatexception)
            {
                return null;
            }
            return Integer.valueOf(i);
        } else
        {
            return null;
        }
    }

    public String[] getOwnerUserIds()
    {
        return getStringArray("owner_user_ids");
    }

    public String getQuery()
    {
        return (String)mQueryMap.get("query");
    }

    public String getScope()
    {
        return (String)mQueryMap.get("scope");
    }

    public Long getSizeRangeFrom()
    {
        String s = (String)mQueryMap.get("size_range");
        if (SdkUtils.isEmptyString(s))
        {
            return null;
        } else
        {
            return Long.valueOf(Long.parseLong(s.split(",")[0]));
        }
    }

    public Long getSizeRangeTo()
    {
        String s = (String)mQueryMap.get("size_range");
        if (SdkUtils.isEmptyString(s))
        {
            return null;
        } else
        {
            return Long.valueOf(Long.parseLong(s.split(",")[1]));
        }
    }

    public String getType()
    {
        return (String)mQueryMap.get("type");
    }

    public mQueryMap limitAncestorFolderIds(String as[])
    {
        limitValueForKey("ancestor_folder_ids", SdkUtils.concatStringWithDelimiter(as, ","));
        return this;
    }

    public imiter limitContentTypes(String as[])
    {
        limitValueForKey("content_types", SdkUtils.concatStringWithDelimiter(as, ","));
        return this;
    }

    public imiter limitCreationTime(Date date, Date date1)
    {
        addTimeRange("created_at_range", date, date1);
        return this;
    }

    public addTimeRange limitFileExtensions(String as[])
    {
        limitValueForKey("file_extensions", SdkUtils.concatStringWithDelimiter(as, ","));
        return this;
    }

    public imiter limitLastUpdateTime(Date date, Date date1)
    {
        addTimeRange("updated_at_range", date, date1);
        return this;
    }

    public addTimeRange limitOwnerUserIds(String as[])
    {
        limitValueForKey("owner_user_ids", SdkUtils.concatStringWithDelimiter(as, ","));
        return this;
    }

    public Scope limitSearchScope(Scope scope)
    {
        limitValueForKey("scope", scope.name().toLowerCase(Locale.US));
        return this;
    }

    public Scope.name limitSizeRange(long l, long l1)
    {
        limitValueForKey("size_range", String.format("%d,%d", new Object[] {
            Long.valueOf(l), Long.valueOf(l1)
        }));
        return this;
    }

    public limitValueForKey limitType(String s)
    {
        limitValueForKey("type", s);
        return this;
    }

    public limitValueForKey limitValueForKey(String s, String s1)
    {
        mQueryMap.put(s, s1);
        return this;
    }

    public BoxIteratorItems sendForCachedResult()
    {
        return (BoxIteratorItems)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public sendForCachedResult setLimit(int i)
    {
        limitValueForKey("limit", String.valueOf(i));
        return this;
    }

    public limitValueForKey setOffset(int i)
    {
        limitValueForKey("offset", String.valueOf(i));
        return this;
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }


    public Scope(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorItems, null, s1, boxsession);
        limitValueForKey("query", s);
        mRequestMethod = mRequestMethod;
    }
}
