// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsFolder, BoxRequestBatch, 
//            BoxResponseBatch, BoxResponse, BoxRequest

public static class mItemsUrl extends BoxRequestItem
    implements BoxCacheableRequest
{

    public static int DEFAULT_MAX_LIMIT = 0;
    private static int LIMIT = 0;
    private static final long serialVersionUID = 0xfdf5c4c9da433af4L;
    private String mFolderId;
    private String mItemsUrl;
    private int mMaxLimit;

    public String getIfNoneMatchEtag()
    {
        return super.getIfNoneMatchEtag();
    }

    public BoxFolder onSend()
    {
        Object obj = (String)mQueryMap.get(QUERY_FIELDS);
        Object obj1 = ((QUERY_FIELDS)(new BoxRequestsFolder.GetFolderInfo(mFolderId, mRequestUrlString, mSession) {

            final BoxRequestsFolder.GetFolderWithAllItems this$0;

            protected void onSendCompleted(BoxResponse boxresponse)
            {
            }

            
            {
                this$0 = BoxRequestsFolder.GetFolderWithAllItems.this;
                super(s, s1, boxsession);
            }
        }).setFields(new String[] {
            obj
        })).(LIMIT);
        if (!SdkUtils.isBlank(getIfNoneMatchEtag()))
        {
            ((getIfNoneMatchEtag) (obj1)).eMatchEtag(getIfNoneMatchEtag());
        }
        obj1 = (BoxFolder)((getIfNoneMatchEtag) (obj1)).getIfNoneMatchEtag();
        Object obj2 = (new BoxRequestBatch()).setExecutor(SdkUtils.createDefaultThreadPoolExecutor(10, 10, 3600L, TimeUnit.SECONDS));
        BoxIteratorItems boxiteratoritems = ((BoxFolder) (obj1)).getItemCollection();
        int j = boxiteratoritems.offset().intValue();
        int i = boxiteratoritems.limit().intValue();
        long l;
        if (mMaxLimit > 0 && (long)mMaxLimit < boxiteratoritems.fullSize().longValue())
        {
            l = mMaxLimit;
        } else
        {
            l = boxiteratoritems.fullSize().longValue();
        }
        while ((long)(j + i) < l) 
        {
            j += i;
            i = LIMIT;
            ((BoxRequestBatch) (obj2)).addRequest(((LIMIT)(new BoxRequestsFolder.GetFolderItems(mFolderId, mItemsUrl, mSession) {

                final BoxRequestsFolder.GetFolderWithAllItems this$0;

                protected void onSendCompleted(BoxResponse boxresponse)
                {
                }

            
            {
                this$0 = BoxRequestsFolder.GetFolderWithAllItems.this;
                super(s, s1, boxsession);
            }
            }).setFields(new String[] {
                obj
            })).et(j).t(i));
        }
        obj2 = (BoxResponseBatch)((BoxRequestBatch) (obj2)).send();
        obj = ((BoxFolder) (obj1)).toJsonObject();
        obj1 = ((JsonObject) (obj)).get("item_collection").asObject().get("entries").asArray();
        for (obj2 = ((BoxResponseBatch) (obj2)).getResponses().iterator(); ((Iterator) (obj2)).hasNext();)
        {
            Object obj3 = (BoxResponse)((Iterator) (obj2)).next();
            if (((BoxResponse) (obj3)).isSuccess())
            {
                obj3 = ((BoxIteratorItems)((BoxResponse) (obj3)).getResult()).iterator();
                while (((Iterator) (obj3)).hasNext()) 
                {
                    ((JsonArray) (obj1)).add(((BoxItem)((Iterator) (obj3)).next()).toJsonObject());
                }
            } else
            {
                throw (BoxException)((BoxResponse) (obj3)).getException();
            }
        }

        return new BoxFolder(((JsonObject) (obj)));
    }

    public volatile BoxObject onSend()
    {
        return onSend();
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public BoxFolder sendForCachedResult()
    {
        return (BoxFolder)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public volatile BoxRequest setIfNoneMatchEtag(String s)
    {
        return setIfNoneMatchEtag(s);
    }

    public setIfNoneMatchEtag setIfNoneMatchEtag(String s)
    {
        return (setIfNoneMatchEtag)super.setIfNoneMatchEtag(s);
    }

    public setIfNoneMatchEtag setMaximumLimit(int i)
    {
        mMaxLimit = i;
        return this;
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    static 
    {
        LIMIT = 100;
        DEFAULT_MAX_LIMIT = 4000;
    }

    public _cls2.this._cls0(String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
        mMaxLimit = -1;
        mRequestMethod = mRequestMethod;
        mFolderId = s;
        mItemsUrl = s2;
    }
}
