package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.requests.BoxHttpResponse;
import java.net.UnknownHostException;
import org.apache.http.HttpStatus;

public class BoxException extends Exception {
    private static final long serialVersionUID = 1;
    private BoxHttpResponse boxHttpResponse;
    private String response;
    /* access modifiers changed from: private */
    public final int responseCode;

    public static class CacheImplementationNotFound extends BoxException {
        public CacheImplementationNotFound() {
            super("");
        }
    }

    public static class CacheResultUnavilable extends BoxException {
        public CacheResultUnavilable() {
            super("");
        }
    }

    public enum ErrorType {
        INVALID_GRANT_TOKEN_EXPIRED("invalid_grant", HttpStatus.SC_BAD_REQUEST),
        INVALID_GRANT_INVALID_TOKEN("invalid_grant", HttpStatus.SC_BAD_REQUEST),
        ACCESS_DENIED("access_denied", HttpStatus.SC_FORBIDDEN),
        INVALID_REQUEST("invalid_request", HttpStatus.SC_BAD_REQUEST),
        INVALID_CLIENT("invalid_client", HttpStatus.SC_BAD_REQUEST),
        PASSWORD_RESET_REQUIRED("password_reset_required", HttpStatus.SC_BAD_REQUEST),
        TERMS_OF_SERVICE_REQUIRED("terms_of_service_required", HttpStatus.SC_BAD_REQUEST),
        NO_CREDIT_CARD_TRIAL_ENDED("no_credit_card_trial_ended", HttpStatus.SC_BAD_REQUEST),
        TEMPORARILY_UNAVAILABLE("temporarily_unavailable", BoxConstants.HTTP_STATUS_TOO_MANY_REQUESTS),
        SERVICE_BLOCKED("service_blocked", HttpStatus.SC_BAD_REQUEST),
        UNAUTHORIZED_DEVICE("unauthorized_device", HttpStatus.SC_BAD_REQUEST),
        GRACE_PERIOD_EXPIRED("grace_period_expired", HttpStatus.SC_FORBIDDEN),
        NETWORK_ERROR("bad_connection_network_error", 0),
        LOCATION_BLOCKED("access_from_location_blocked", HttpStatus.SC_FORBIDDEN),
        IP_BLOCKED("error_access_from_ip_not_allowed", HttpStatus.SC_FORBIDDEN),
        UNAUTHORIZED("unauthorized", HttpStatus.SC_UNAUTHORIZED),
        NEW_OWNER_NOT_COLLABORATOR("new_owner_not_collaborator", HttpStatus.SC_BAD_REQUEST),
        INTERNAL_ERROR("internal_server_error", HttpStatus.SC_INTERNAL_SERVER_ERROR),
        OTHER("", 0);
        
        private final int mStatusCode;
        private final String mValue;

        private ErrorType(String str, int i) {
            this.mValue = str;
            this.mStatusCode = i;
        }

        public static ErrorType fromErrorInfo(String str, int i) {
            if (i == 500) {
                return INTERNAL_ERROR;
            }
            for (ErrorType errorType : values()) {
                if (errorType.mStatusCode == i && errorType.mValue.equals(str)) {
                    return errorType;
                }
            }
            return OTHER;
        }
    }

    public static class MaxAttemptsExceeded extends BoxException {
        private final int mTimesTried;

        public MaxAttemptsExceeded(String str, int i) {
            this(str, i, (BoxHttpResponse) null);
        }

        public MaxAttemptsExceeded(String str, int i, BoxHttpResponse boxHttpResponse) {
            super(str + i, boxHttpResponse);
            this.mTimesTried = i;
        }

        public int getTimesTried() {
            return this.mTimesTried;
        }
    }

    public static class RateLimitAttemptsExceeded extends MaxAttemptsExceeded {
        public RateLimitAttemptsExceeded(String str, int i, BoxHttpResponse boxHttpResponse) {
            super(str, i, boxHttpResponse);
        }
    }

    public static class RefreshFailure extends BoxException {
        private static final ErrorType[] fatalTypes = {ErrorType.INVALID_GRANT_INVALID_TOKEN, ErrorType.INVALID_GRANT_TOKEN_EXPIRED, ErrorType.ACCESS_DENIED, ErrorType.NO_CREDIT_CARD_TRIAL_ENDED, ErrorType.SERVICE_BLOCKED, ErrorType.INVALID_CLIENT, ErrorType.UNAUTHORIZED_DEVICE, ErrorType.GRACE_PERIOD_EXPIRED, ErrorType.UNAUTHORIZED};

        public RefreshFailure(BoxException boxException) {
            super(boxException.getMessage(), boxException.responseCode, boxException.getResponse(), boxException);
        }

        public boolean isErrorFatal() {
            ErrorType errorType = getErrorType();
            for (ErrorType errorType2 : fatalTypes) {
                if (errorType == errorType2) {
                    return true;
                }
            }
            return false;
        }
    }

    public BoxException(String str) {
        super(str);
        this.responseCode = 0;
        this.boxHttpResponse = null;
        this.response = null;
    }

    public BoxException(String str, int i, String str2, Throwable th) {
        super(str, getRootCause(th));
        this.responseCode = i;
        this.response = str2;
    }

    public BoxException(String str, BoxHttpResponse boxHttpResponse2) {
        super(str, (Throwable) null);
        this.boxHttpResponse = boxHttpResponse2;
        if (boxHttpResponse2 != null) {
            this.responseCode = boxHttpResponse2.getResponseCode();
        } else {
            this.responseCode = 0;
        }
        try {
            this.response = boxHttpResponse2.getStringBody();
        } catch (Exception e) {
            this.response = null;
        }
    }

    public BoxException(String str, Throwable th) {
        super(str, getRootCause(th));
        this.responseCode = 0;
        this.response = null;
    }

    private static Throwable getRootCause(Throwable th) {
        return th instanceof BoxException ? th.getCause() : th;
    }

    public BoxError getAsBoxError() {
        try {
            BoxError boxError = new BoxError();
            boxError.createFromJson(getResponse());
            return boxError;
        } catch (Exception e) {
            return null;
        }
    }

    public ErrorType getErrorType() {
        if (getCause() instanceof UnknownHostException) {
            return ErrorType.NETWORK_ERROR;
        }
        BoxError asBoxError = getAsBoxError();
        return ErrorType.fromErrorInfo(asBoxError != null ? asBoxError.getError() : null, getResponseCode());
    }

    public String getResponse() {
        return this.response;
    }

    public int getResponseCode() {
        return this.responseCode;
    }
}
