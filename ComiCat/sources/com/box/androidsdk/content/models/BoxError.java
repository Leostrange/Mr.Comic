package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.ArrayList;

public class BoxError extends BoxJsonObject {
    public static final String FIELD_CODE = "code";
    public static final String FIELD_CONTEXT_INFO = "context_info";
    public static final String FIELD_ERROR = "error";
    public static final String FIELD_ERROR_DESCRIPTION = "error_description";
    public static final String FIELD_HELP_URL = "help_url";
    public static final String FIELD_MESSAGE = "message";
    public static final String FIELD_REQUEST_ID = "request_id";
    public static final String FIELD_STATUS = "status";
    public static final String FIELD_TYPE = "type";

    public static class ErrorContext extends BoxJsonObject {
        public static final String FIELD_CONFLICTS = "conflicts";

        public ArrayList<BoxEntity> getConflicts() {
            return getPropertyAsJsonObjectArray(BoxEntity.getBoxJsonObjectCreator(), FIELD_CONFLICTS);
        }
    }

    public BoxError() {
    }

    public BoxError(JsonObject jsonObject) {
        super(jsonObject);
    }

    public String getCode() {
        return getPropertyAsString(FIELD_CODE);
    }

    public ErrorContext getContextInfo() {
        return (ErrorContext) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(ErrorContext.class), FIELD_CONTEXT_INFO);
    }

    public String getError() {
        String propertyAsString = getPropertyAsString("error");
        return propertyAsString == null ? getCode() : propertyAsString;
    }

    public String getErrorDescription() {
        return getPropertyAsString(FIELD_ERROR_DESCRIPTION);
    }

    public String getFieldHelpUrl() {
        return getPropertyAsString(FIELD_HELP_URL);
    }

    public String getMessage() {
        return getPropertyAsString("message");
    }

    public String getRequestId() {
        return getPropertyAsString(FIELD_REQUEST_ID);
    }

    public Integer getStatus() {
        return getPropertyAsInt("status");
    }

    public String getType() {
        return getPropertyAsString("type");
    }
}
