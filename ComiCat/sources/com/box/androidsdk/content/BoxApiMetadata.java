package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import java.util.LinkedHashMap;
import java.util.Locale;

public class BoxApiMetadata extends BoxApi {
    public static final String BOX_API_METADATA = "metadata";
    public static final String BOX_API_METADATA_SCHEMA = "schema";
    public static final String BOX_API_METADATA_TEMPLATES = "metadata_templates";
    public static final String BOX_API_SCOPE_ENTERPRISE = "enterprise";
    public static final String BOX_API_SCOPE_GLOBAL = "global";

    public BoxApiMetadata(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsMetadata.AddFileMetadata getAddMetadataRequest(String str, LinkedHashMap<String, Object> linkedHashMap, String str2, String str3) {
        return new BoxRequestsMetadata.AddFileMetadata(linkedHashMap, getFileMetadataUrl(str, str2, str3), this.mSession);
    }

    public BoxRequestsMetadata.DeleteFileMetadata getDeleteMetadataTemplateRequest(String str, String str2) {
        return new BoxRequestsMetadata.DeleteFileMetadata(getFileMetadataUrl(str, str2), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getFileInfoUrl(String str) {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[]{getFilesUrl(), str});
    }

    /* access modifiers changed from: protected */
    public String getFileMetadataUrl(String str) {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[]{getFileInfoUrl(str), BOX_API_METADATA});
    }

    /* access modifiers changed from: protected */
    public String getFileMetadataUrl(String str, String str2) {
        return getFileMetadataUrl(str, "enterprise", str2);
    }

    /* access modifiers changed from: protected */
    public String getFileMetadataUrl(String str, String str2, String str3) {
        return String.format(Locale.ENGLISH, "%s/%s/%s", new Object[]{getFileMetadataUrl(str), str2, str3});
    }

    /* access modifiers changed from: protected */
    public String getFilesUrl() {
        return String.format(Locale.ENGLISH, "%s/files", new Object[]{getBaseUri()});
    }

    public BoxRequestsMetadata.GetFileMetadata getMetadataRequest(String str) {
        return new BoxRequestsMetadata.GetFileMetadata(getFileMetadataUrl(str), this.mSession);
    }

    public BoxRequestsMetadata.GetFileMetadata getMetadataRequest(String str, String str2) {
        return new BoxRequestsMetadata.GetFileMetadata(getFileMetadataUrl(str, str2), this.mSession);
    }

    public BoxRequestsMetadata.GetMetadataTemplateSchema getMetadataTemplateSchemaRequest(String str) {
        return getMetadataTemplateSchemaRequest("enterprise", str);
    }

    public BoxRequestsMetadata.GetMetadataTemplateSchema getMetadataTemplateSchemaRequest(String str, String str2) {
        return new BoxRequestsMetadata.GetMetadataTemplateSchema(getMetadataTemplatesUrl(str, str2), this.mSession);
    }

    public BoxRequestsMetadata.GetMetadataTemplates getMetadataTemplatesRequest() {
        return new BoxRequestsMetadata.GetMetadataTemplates(getMetadataTemplatesUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getMetadataTemplatesUrl() {
        return getMetadataTemplatesUrl("enterprise");
    }

    /* access modifiers changed from: protected */
    public String getMetadataTemplatesUrl(String str) {
        return String.format(Locale.ENGLISH, "%s/%s/%s", new Object[]{getBaseUri(), BOX_API_METADATA_TEMPLATES, str});
    }

    /* access modifiers changed from: protected */
    public String getMetadataTemplatesUrl(String str, String str2) {
        return String.format(Locale.ENGLISH, "%s/%s/%s", new Object[]{getMetadataTemplatesUrl(str), str2, BOX_API_METADATA_SCHEMA});
    }

    public BoxRequestsMetadata.UpdateFileMetadata getUpdateMetadataRequest(String str, String str2, String str3) {
        return new BoxRequestsMetadata.UpdateFileMetadata(getFileMetadataUrl(str, str2, str3), this.mSession);
    }
}
