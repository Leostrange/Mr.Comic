// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiMetadata extends BoxApi
{

    public static final String BOX_API_METADATA = "metadata";
    public static final String BOX_API_METADATA_SCHEMA = "schema";
    public static final String BOX_API_METADATA_TEMPLATES = "metadata_templates";
    public static final String BOX_API_SCOPE_ENTERPRISE = "enterprise";
    public static final String BOX_API_SCOPE_GLOBAL = "global";

    public BoxApiMetadata(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.AddFileMetadata getAddMetadataRequest(String s, LinkedHashMap linkedhashmap, String s1, String s2)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.AddFileMetadata(linkedhashmap, getFileMetadataUrl(s, s1, s2), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.DeleteFileMetadata getDeleteMetadataTemplateRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.DeleteFileMetadata(getFileMetadataUrl(s, s1), mSession);
    }

    protected String getFileInfoUrl(String s)
    {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[] {
            getFilesUrl(), s
        });
    }

    protected String getFileMetadataUrl(String s)
    {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[] {
            getFileInfoUrl(s), "metadata"
        });
    }

    protected String getFileMetadataUrl(String s, String s1)
    {
        return getFileMetadataUrl(s, "enterprise", s1);
    }

    protected String getFileMetadataUrl(String s, String s1, String s2)
    {
        return String.format(Locale.ENGLISH, "%s/%s/%s", new Object[] {
            getFileMetadataUrl(s), s1, s2
        });
    }

    protected String getFilesUrl()
    {
        return String.format(Locale.ENGLISH, "%s/files", new Object[] {
            getBaseUri()
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.GetFileMetadata getMetadataRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.GetFileMetadata(getFileMetadataUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.GetFileMetadata getMetadataRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.GetFileMetadata(getFileMetadataUrl(s, s1), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.GetMetadataTemplateSchema getMetadataTemplateSchemaRequest(String s)
    {
        return getMetadataTemplateSchemaRequest("enterprise", s);
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.GetMetadataTemplateSchema getMetadataTemplateSchemaRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.GetMetadataTemplateSchema(getMetadataTemplatesUrl(s, s1), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.GetMetadataTemplates getMetadataTemplatesRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.GetMetadataTemplates(getMetadataTemplatesUrl(), mSession);
    }

    protected String getMetadataTemplatesUrl()
    {
        return getMetadataTemplatesUrl("enterprise");
    }

    protected String getMetadataTemplatesUrl(String s)
    {
        return String.format(Locale.ENGLISH, "%s/%s/%s", new Object[] {
            getBaseUri(), "metadata_templates", s
        });
    }

    protected String getMetadataTemplatesUrl(String s, String s1)
    {
        return String.format(Locale.ENGLISH, "%s/%s/%s", new Object[] {
            getMetadataTemplatesUrl(s), s1, "schema"
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsMetadata.UpdateFileMetadata getUpdateMetadataRequest(String s, String s1, String s2)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsMetadata.UpdateFileMetadata(getFileMetadataUrl(s, s1, s2), mSession);
    }
}
