// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;


// Referenced classes of package com.box.androidsdk.content:
//            BoxException

public static final class mStatusCode extends Enum
{

    private static final OTHER $VALUES[];
    public static final OTHER ACCESS_DENIED;
    public static final OTHER GRACE_PERIOD_EXPIRED;
    public static final OTHER INTERNAL_ERROR;
    public static final OTHER INVALID_CLIENT;
    public static final OTHER INVALID_GRANT_INVALID_TOKEN;
    public static final OTHER INVALID_GRANT_TOKEN_EXPIRED;
    public static final OTHER INVALID_REQUEST;
    public static final OTHER IP_BLOCKED;
    public static final OTHER LOCATION_BLOCKED;
    public static final OTHER NETWORK_ERROR;
    public static final OTHER NEW_OWNER_NOT_COLLABORATOR;
    public static final OTHER NO_CREDIT_CARD_TRIAL_ENDED;
    public static final OTHER OTHER;
    public static final OTHER PASSWORD_RESET_REQUIRED;
    public static final OTHER SERVICE_BLOCKED;
    public static final OTHER TEMPORARILY_UNAVAILABLE;
    public static final OTHER TERMS_OF_SERVICE_REQUIRED;
    public static final OTHER UNAUTHORIZED;
    public static final OTHER UNAUTHORIZED_DEVICE;
    private final int mStatusCode;
    private final String mValue;

    public static mStatusCode fromErrorInfo(String s, int i)
    {
        if (i != 500) goto _L2; else goto _L1
_L1:
        mStatusCode mstatuscode = INTERNAL_ERROR;
_L6:
        return mstatuscode;
_L2:
        mStatusCode amstatuscode[];
        int j;
        int k;
        amstatuscode = values();
        k = amstatuscode.length;
        j = 0;
_L7:
        if (j >= k) goto _L4; else goto _L3
_L3:
        mStatusCode mstatuscode1;
        mstatuscode1 = amstatuscode[j];
        if (mstatuscode1.mStatusCode != i)
        {
            continue; /* Loop/switch isn't completed */
        }
        mstatuscode = mstatuscode1;
        if (mstatuscode1.mValue.equals(s)) goto _L6; else goto _L5
_L5:
        j++;
          goto _L7
_L4:
        return OTHER;
    }

    public static OTHER valueOf(String s)
    {
        return (OTHER)Enum.valueOf(com/box/androidsdk/content/BoxException$ErrorType, s);
    }

    public static OTHER[] values()
    {
        return (OTHER[])$VALUES.clone();
    }

    static 
    {
        INVALID_GRANT_TOKEN_EXPIRED = new <init>("INVALID_GRANT_TOKEN_EXPIRED", 0, "invalid_grant", 400);
        INVALID_GRANT_INVALID_TOKEN = new <init>("INVALID_GRANT_INVALID_TOKEN", 1, "invalid_grant", 400);
        ACCESS_DENIED = new <init>("ACCESS_DENIED", 2, "access_denied", 403);
        INVALID_REQUEST = new <init>("INVALID_REQUEST", 3, "invalid_request", 400);
        INVALID_CLIENT = new <init>("INVALID_CLIENT", 4, "invalid_client", 400);
        PASSWORD_RESET_REQUIRED = new <init>("PASSWORD_RESET_REQUIRED", 5, "password_reset_required", 400);
        TERMS_OF_SERVICE_REQUIRED = new <init>("TERMS_OF_SERVICE_REQUIRED", 6, "terms_of_service_required", 400);
        NO_CREDIT_CARD_TRIAL_ENDED = new <init>("NO_CREDIT_CARD_TRIAL_ENDED", 7, "no_credit_card_trial_ended", 400);
        TEMPORARILY_UNAVAILABLE = new <init>("TEMPORARILY_UNAVAILABLE", 8, "temporarily_unavailable", 429);
        SERVICE_BLOCKED = new <init>("SERVICE_BLOCKED", 9, "service_blocked", 400);
        UNAUTHORIZED_DEVICE = new <init>("UNAUTHORIZED_DEVICE", 10, "unauthorized_device", 400);
        GRACE_PERIOD_EXPIRED = new <init>("GRACE_PERIOD_EXPIRED", 11, "grace_period_expired", 403);
        NETWORK_ERROR = new <init>("NETWORK_ERROR", 12, "bad_connection_network_error", 0);
        LOCATION_BLOCKED = new <init>("LOCATION_BLOCKED", 13, "access_from_location_blocked", 403);
        IP_BLOCKED = new <init>("IP_BLOCKED", 14, "error_access_from_ip_not_allowed", 403);
        UNAUTHORIZED = new <init>("UNAUTHORIZED", 15, "unauthorized", 401);
        NEW_OWNER_NOT_COLLABORATOR = new <init>("NEW_OWNER_NOT_COLLABORATOR", 16, "new_owner_not_collaborator", 400);
        INTERNAL_ERROR = new <init>("INTERNAL_ERROR", 17, "internal_server_error", 500);
        OTHER = new <init>("OTHER", 18, "", 0);
        $VALUES = (new .VALUES[] {
            INVALID_GRANT_TOKEN_EXPIRED, INVALID_GRANT_INVALID_TOKEN, ACCESS_DENIED, INVALID_REQUEST, INVALID_CLIENT, PASSWORD_RESET_REQUIRED, TERMS_OF_SERVICE_REQUIRED, NO_CREDIT_CARD_TRIAL_ENDED, TEMPORARILY_UNAVAILABLE, SERVICE_BLOCKED, 
            UNAUTHORIZED_DEVICE, GRACE_PERIOD_EXPIRED, NETWORK_ERROR, LOCATION_BLOCKED, IP_BLOCKED, UNAUTHORIZED, NEW_OWNER_NOT_COLLABORATOR, INTERNAL_ERROR, OTHER
        });
    }

    private (String s, int i, String s1, int j)
    {
        super(s, i);
        mValue = s1;
        mStatusCode = j;
    }
}
