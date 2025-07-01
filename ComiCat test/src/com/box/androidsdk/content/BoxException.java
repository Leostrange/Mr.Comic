// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.requests.BoxHttpResponse;
import java.net.UnknownHostException;

public class BoxException extends Exception
{
    public static class CacheImplementationNotFound extends BoxException
    {

        public CacheImplementationNotFound()
        {
            super("");
        }
    }

    public static class CacheResultUnavilable extends BoxException
    {

        public CacheResultUnavilable()
        {
            super("");
        }
    }

    public static final class ErrorType extends Enum
    {

        private static final ErrorType $VALUES[];
        public static final ErrorType ACCESS_DENIED;
        public static final ErrorType GRACE_PERIOD_EXPIRED;
        public static final ErrorType INTERNAL_ERROR;
        public static final ErrorType INVALID_CLIENT;
        public static final ErrorType INVALID_GRANT_INVALID_TOKEN;
        public static final ErrorType INVALID_GRANT_TOKEN_EXPIRED;
        public static final ErrorType INVALID_REQUEST;
        public static final ErrorType IP_BLOCKED;
        public static final ErrorType LOCATION_BLOCKED;
        public static final ErrorType NETWORK_ERROR;
        public static final ErrorType NEW_OWNER_NOT_COLLABORATOR;
        public static final ErrorType NO_CREDIT_CARD_TRIAL_ENDED;
        public static final ErrorType OTHER;
        public static final ErrorType PASSWORD_RESET_REQUIRED;
        public static final ErrorType SERVICE_BLOCKED;
        public static final ErrorType TEMPORARILY_UNAVAILABLE;
        public static final ErrorType TERMS_OF_SERVICE_REQUIRED;
        public static final ErrorType UNAUTHORIZED;
        public static final ErrorType UNAUTHORIZED_DEVICE;
        private final int mStatusCode;
        private final String mValue;

        public static ErrorType fromErrorInfo(String s, int i)
        {
            if (i != 500) goto _L2; else goto _L1
_L1:
            ErrorType errortype = INTERNAL_ERROR;
_L6:
            return errortype;
_L2:
            ErrorType aerrortype[];
            int j;
            int k;
            aerrortype = values();
            k = aerrortype.length;
            j = 0;
_L7:
            if (j >= k) goto _L4; else goto _L3
_L3:
            ErrorType errortype1;
            errortype1 = aerrortype[j];
            if (errortype1.mStatusCode != i)
            {
                continue; /* Loop/switch isn't completed */
            }
            errortype = errortype1;
            if (errortype1.mValue.equals(s)) goto _L6; else goto _L5
_L5:
            j++;
              goto _L7
_L4:
            return OTHER;
        }

        public static ErrorType valueOf(String s)
        {
            return (ErrorType)Enum.valueOf(com/box/androidsdk/content/BoxException$ErrorType, s);
        }

        public static ErrorType[] values()
        {
            return (ErrorType[])$VALUES.clone();
        }

        static 
        {
            INVALID_GRANT_TOKEN_EXPIRED = new ErrorType("INVALID_GRANT_TOKEN_EXPIRED", 0, "invalid_grant", 400);
            INVALID_GRANT_INVALID_TOKEN = new ErrorType("INVALID_GRANT_INVALID_TOKEN", 1, "invalid_grant", 400);
            ACCESS_DENIED = new ErrorType("ACCESS_DENIED", 2, "access_denied", 403);
            INVALID_REQUEST = new ErrorType("INVALID_REQUEST", 3, "invalid_request", 400);
            INVALID_CLIENT = new ErrorType("INVALID_CLIENT", 4, "invalid_client", 400);
            PASSWORD_RESET_REQUIRED = new ErrorType("PASSWORD_RESET_REQUIRED", 5, "password_reset_required", 400);
            TERMS_OF_SERVICE_REQUIRED = new ErrorType("TERMS_OF_SERVICE_REQUIRED", 6, "terms_of_service_required", 400);
            NO_CREDIT_CARD_TRIAL_ENDED = new ErrorType("NO_CREDIT_CARD_TRIAL_ENDED", 7, "no_credit_card_trial_ended", 400);
            TEMPORARILY_UNAVAILABLE = new ErrorType("TEMPORARILY_UNAVAILABLE", 8, "temporarily_unavailable", 429);
            SERVICE_BLOCKED = new ErrorType("SERVICE_BLOCKED", 9, "service_blocked", 400);
            UNAUTHORIZED_DEVICE = new ErrorType("UNAUTHORIZED_DEVICE", 10, "unauthorized_device", 400);
            GRACE_PERIOD_EXPIRED = new ErrorType("GRACE_PERIOD_EXPIRED", 11, "grace_period_expired", 403);
            NETWORK_ERROR = new ErrorType("NETWORK_ERROR", 12, "bad_connection_network_error", 0);
            LOCATION_BLOCKED = new ErrorType("LOCATION_BLOCKED", 13, "access_from_location_blocked", 403);
            IP_BLOCKED = new ErrorType("IP_BLOCKED", 14, "error_access_from_ip_not_allowed", 403);
            UNAUTHORIZED = new ErrorType("UNAUTHORIZED", 15, "unauthorized", 401);
            NEW_OWNER_NOT_COLLABORATOR = new ErrorType("NEW_OWNER_NOT_COLLABORATOR", 16, "new_owner_not_collaborator", 400);
            INTERNAL_ERROR = new ErrorType("INTERNAL_ERROR", 17, "internal_server_error", 500);
            OTHER = new ErrorType("OTHER", 18, "", 0);
            $VALUES = (new ErrorType[] {
                INVALID_GRANT_TOKEN_EXPIRED, INVALID_GRANT_INVALID_TOKEN, ACCESS_DENIED, INVALID_REQUEST, INVALID_CLIENT, PASSWORD_RESET_REQUIRED, TERMS_OF_SERVICE_REQUIRED, NO_CREDIT_CARD_TRIAL_ENDED, TEMPORARILY_UNAVAILABLE, SERVICE_BLOCKED, 
                UNAUTHORIZED_DEVICE, GRACE_PERIOD_EXPIRED, NETWORK_ERROR, LOCATION_BLOCKED, IP_BLOCKED, UNAUTHORIZED, NEW_OWNER_NOT_COLLABORATOR, INTERNAL_ERROR, OTHER
            });
        }

        private ErrorType(String s, int i, String s1, int j)
        {
            super(s, i);
            mValue = s1;
            mStatusCode = j;
        }
    }

    public static class MaxAttemptsExceeded extends BoxException
    {

        private final int mTimesTried;

        public int getTimesTried()
        {
            return mTimesTried;
        }

        public MaxAttemptsExceeded(String s, int i)
        {
            this(s, i, null);
        }

        public MaxAttemptsExceeded(String s, int i, BoxHttpResponse boxhttpresponse)
        {
            super((new StringBuilder()).append(s).append(i).toString(), boxhttpresponse);
            mTimesTried = i;
        }
    }

    public static class RateLimitAttemptsExceeded extends MaxAttemptsExceeded
    {

        public RateLimitAttemptsExceeded(String s, int i, BoxHttpResponse boxhttpresponse)
        {
            super(s, i, boxhttpresponse);
        }
    }

    public static class RefreshFailure extends BoxException
    {

        private static final ErrorType fatalTypes[];

        public boolean isErrorFatal()
        {
            boolean flag1 = false;
            ErrorType errortype = getErrorType();
            ErrorType aerrortype[] = fatalTypes;
            int j = aerrortype.length;
            int i = 0;
            do
            {
label0:
                {
                    boolean flag = flag1;
                    if (i < j)
                    {
                        if (errortype != aerrortype[i])
                        {
                            break label0;
                        }
                        flag = true;
                    }
                    return flag;
                }
                i++;
            } while (true);
        }

        static 
        {
            fatalTypes = (new ErrorType[] {
                ErrorType.INVALID_GRANT_INVALID_TOKEN, ErrorType.INVALID_GRANT_TOKEN_EXPIRED, ErrorType.ACCESS_DENIED, ErrorType.NO_CREDIT_CARD_TRIAL_ENDED, ErrorType.SERVICE_BLOCKED, ErrorType.INVALID_CLIENT, ErrorType.UNAUTHORIZED_DEVICE, ErrorType.GRACE_PERIOD_EXPIRED, ErrorType.UNAUTHORIZED
            });
        }

        public RefreshFailure(BoxException boxexception)
        {
            super(boxexception.getMessage(), boxexception.responseCode, boxexception.getResponse(), boxexception);
        }
    }


    private static final long serialVersionUID = 1L;
    private BoxHttpResponse boxHttpResponse;
    private String response;
    private final int responseCode;

    public BoxException(String s)
    {
        super(s);
        responseCode = 0;
        boxHttpResponse = null;
        response = null;
    }

    public BoxException(String s, int i, String s1, Throwable throwable)
    {
        super(s, getRootCause(throwable));
        responseCode = i;
        response = s1;
    }

    public BoxException(String s, BoxHttpResponse boxhttpresponse)
    {
        super(s, null);
        boxHttpResponse = boxhttpresponse;
        if (boxhttpresponse != null)
        {
            responseCode = boxhttpresponse.getResponseCode();
        } else
        {
            responseCode = 0;
        }
        try
        {
            response = boxhttpresponse.getStringBody();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            response = null;
        }
    }

    public BoxException(String s, Throwable throwable)
    {
        super(s, getRootCause(throwable));
        responseCode = 0;
        response = null;
    }

    private static Throwable getRootCause(Throwable throwable)
    {
        Throwable throwable1 = throwable;
        if (throwable instanceof BoxException)
        {
            throwable1 = throwable.getCause();
        }
        return throwable1;
    }

    public BoxError getAsBoxError()
    {
        BoxError boxerror;
        try
        {
            boxerror = new BoxError();
            boxerror.createFromJson(getResponse());
        }
        catch (Exception exception)
        {
            return null;
        }
        return boxerror;
    }

    public ErrorType getErrorType()
    {
        if (getCause() instanceof UnknownHostException)
        {
            return ErrorType.NETWORK_ERROR;
        }
        Object obj = getAsBoxError();
        if (obj != null)
        {
            obj = ((BoxError) (obj)).getError();
        } else
        {
            obj = null;
        }
        return ErrorType.fromErrorInfo(((String) (obj)), getResponseCode());
    }

    public String getResponse()
    {
        return response;
    }

    public int getResponseCode()
    {
        return responseCode;
    }

}
