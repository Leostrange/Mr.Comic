package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.util.Date;

public class BoxDownload extends BoxJsonObject {
    private static final String FIELD_CONTENT_LENGTH = "content_length";
    private static final String FIELD_CONTENT_TYPE = "content_type";
    private static final String FIELD_DATE = "date";
    private static final String FIELD_END_RANGE = "end_range";
    private static final String FIELD_EXPIRATION = "expiration";
    private static final String FIELD_FILE_NAME = "file_name";
    private static final String FIELD_START_RANGE = "start_range";
    private static final String FIELD_TOTAL_RANGE = "total_range";

    public BoxDownload(String str, long j, String str2, String str3, String str4, String str5) {
        if (!SdkUtils.isEmptyString(str)) {
            setFileName(str);
        }
        set(FIELD_CONTENT_LENGTH, Long.valueOf(j));
        if (!SdkUtils.isEmptyString(str2)) {
            set(FIELD_CONTENT_TYPE, str2);
        }
        if (!SdkUtils.isEmptyString(str3)) {
            setContentRange(str3);
        }
        if (!SdkUtils.isEmptyString(str4)) {
            set(FIELD_DATE, str4);
        }
        if (!SdkUtils.isEmptyString(str5)) {
            set(FIELD_EXPIRATION, str5);
        }
    }

    private static final Date parseDate(String str) {
        try {
            return BoxDateFormat.parseHeaderDate(str);
        } catch (Exception e) {
            return null;
        }
    }

    public Long getContentLength() {
        return getPropertyAsLong(FIELD_CONTENT_LENGTH);
    }

    public String getContentType() {
        return getPropertyAsString(FIELD_CONTENT_TYPE);
    }

    public Date getDate() {
        return parseDate(getPropertyAsString(FIELD_DATE));
    }

    public Long getEndRange() {
        return getPropertyAsLong(FIELD_END_RANGE);
    }

    public Date getExpiration() {
        return parseDate(getPropertyAsString(FIELD_EXPIRATION));
    }

    public String getFileName() {
        return getPropertyAsString(FIELD_FILE_NAME);
    }

    public File getOutputFile() {
        return null;
    }

    public Long getStartRange() {
        return getPropertyAsLong(FIELD_START_RANGE);
    }

    public Long getTotalRange() {
        return getPropertyAsLong(FIELD_TOTAL_RANGE);
    }

    /* access modifiers changed from: protected */
    public void setContentRange(String str) {
        int lastIndexOf = str.lastIndexOf("/");
        int indexOf = str.indexOf("-");
        set(FIELD_START_RANGE, Long.valueOf(Long.parseLong(str.substring(str.indexOf("bytes") + 6, indexOf))));
        set(FIELD_END_RANGE, Long.valueOf(Long.parseLong(str.substring(indexOf + 1, lastIndexOf))));
        set(FIELD_TOTAL_RANGE, Long.valueOf(Long.parseLong(str.substring(lastIndexOf + 1))));
    }

    /* access modifiers changed from: protected */
    public void setFileName(String str) {
        for (String trim : str.split(";")) {
            String trim2 = trim.trim();
            if (trim2.startsWith("filename=")) {
                set(FIELD_FILE_NAME, trim2.endsWith("\"") ? trim2.substring(trim2.indexOf("\"") + 1, trim2.length() - 1) : trim2.substring(9));
            }
        }
    }
}
