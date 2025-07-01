// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.BoxApi;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.models.BoxMDMData;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxHttpResponse;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import com.box.androidsdk.content.utils.SdkUtils;
import java.util.LinkedHashMap;
import java.util.Locale;

class BoxApiAuthentication extends BoxApi
{
    static class BoxCreateAuthRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cfcL;

        public BoxCreateAuthRequest setDevice(String s, String s1)
        {
            if (!SdkUtils.isEmptyString(s))
            {
                mBodyMap.put("device_id", s);
            }
            if (!SdkUtils.isEmptyString(s1))
            {
                mBodyMap.put("device_name", s1);
            }
            return this;
        }

        public BoxCreateAuthRequest setMdmData(BoxMDMData boxmdmdata)
        {
            if (boxmdmdata != null)
            {
                mBodyMap.put("box_mdm_data", boxmdmdata.toJson());
            }
            return this;
        }

        public BoxCreateAuthRequest setRefreshExpiresAt(long l)
        {
            mBodyMap.put("box_refresh_token_expires_at", Long.toString(l));
            return this;
        }

        public BoxCreateAuthRequest(BoxSession boxsession, String s, String s1, String s2, String s3)
        {
            super(com/box/androidsdk/content/auth/BoxAuthentication$BoxAuthenticationInfo, s, boxsession);
            mRequestMethod = com.box.androidsdk.content.requests.BoxRequest.Methods.POST;
            setContentType(com.box.androidsdk.content.requests.BoxRequest.ContentTypes.URL_ENCODED);
            mBodyMap.put("grant_type", "authorization_code");
            mBodyMap.put("code", s1);
            mBodyMap.put("client_id", s2);
            mBodyMap.put("client_secret", s3);
            if (boxsession.getDeviceId() != null)
            {
                setDevice(boxsession.getDeviceId(), boxsession.getDeviceName());
            }
            if (boxsession.getManagementData() != null)
            {
                setMdmData(boxsession.getManagementData());
            }
            if (boxsession.getRefreshTokenExpiresAt() != null)
            {
                setRefreshExpiresAt(boxsession.getRefreshTokenExpiresAt().longValue());
            }
        }
    }

    static class BoxRefreshAuthRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cf2L;

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            if (boxresponse.isSuccess())
            {
                ((BoxAuthentication.BoxAuthenticationInfo)boxresponse.getResult()).setUser(mSession.getUser());
            }
        }

        public BoxRefreshAuthRequest setDevice(String s, String s1)
        {
            if (!SdkUtils.isEmptyString(s))
            {
                mBodyMap.put("device_id", s);
            }
            if (!SdkUtils.isEmptyString(s1))
            {
                mBodyMap.put("device_name", s1);
            }
            return this;
        }

        public BoxRefreshAuthRequest setRefreshExpiresAt(long l)
        {
            mBodyMap.put("box_refresh_token_expires_at", Long.toString(l));
            return this;
        }

        public BoxRefreshAuthRequest(BoxSession boxsession, String s, String s1, String s2, String s3)
        {
            super(com/box/androidsdk/content/auth/BoxAuthentication$BoxAuthenticationInfo, s, boxsession);
            mContentType = com.box.androidsdk.content.requests.BoxRequest.ContentTypes.URL_ENCODED;
            mRequestMethod = com.box.androidsdk.content.requests.BoxRequest.Methods.POST;
            mBodyMap.put("grant_type", "refresh_token");
            mBodyMap.put("refresh_token", s1);
            mBodyMap.put("client_id", s2);
            mBodyMap.put("client_secret", s3);
            if (boxsession.getDeviceId() != null)
            {
                setDevice(boxsession.getDeviceId(), boxsession.getDeviceName());
            }
            if (boxsession.getRefreshTokenExpiresAt() != null)
            {
                setRefreshExpiresAt(boxsession.getRefreshTokenExpiresAt().longValue());
            }
        }
    }

    static class BoxRevokeAuthRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cdcL;

        public BoxRevokeAuthRequest(BoxSession boxsession, String s, String s1, String s2, String s3)
        {
            super(com/box/androidsdk/content/auth/BoxAuthentication$BoxAuthenticationInfo, s, boxsession);
            mRequestMethod = com.box.androidsdk.content.requests.BoxRequest.Methods.POST;
            setContentType(com.box.androidsdk.content.requests.BoxRequest.ContentTypes.URL_ENCODED);
            mBodyMap.put("client_id", s2);
            mBodyMap.put("client_secret", s3);
            mBodyMap.put("token", s1);
        }
    }


    static final String GRANT_TYPE = "grant_type";
    static final String GRANT_TYPE_AUTH_CODE = "authorization_code";
    static final String GRANT_TYPE_REFRESH = "refresh_token";
    static final String OAUTH_TOKEN_REQUEST_URL = "%s/oauth2/token";
    static final String OAUTH_TOKEN_REVOKE_URL = "%s/oauth2/revoke";
    static final String REFRESH_TOKEN = "refresh_token";
    static final String RESPONSE_TYPE_BASE_DOMAIN = "base_domain";
    static final String RESPONSE_TYPE_CODE = "code";
    static final String RESPONSE_TYPE_ERROR = "error";

    BoxApiAuthentication(BoxSession boxsession)
    {
        super(boxsession);
        mBaseUri = "https://api.box.com";
    }

    BoxCreateAuthRequest createOAuth(String s, String s1, String s2)
    {
        return new BoxCreateAuthRequest(mSession, getTokenUrl(), s, s1, s2);
    }

    protected String getBaseUri()
    {
        if (mSession != null && mSession.getAuthInfo() != null && mSession.getAuthInfo().getBaseDomain() != null)
        {
            return String.format("https://api.%s", new Object[] {
                mSession.getAuthInfo().getBaseDomain()
            });
        } else
        {
            return super.getBaseUri();
        }
    }

    protected String getTokenRevokeUrl()
    {
        return String.format(Locale.ENGLISH, "%s/oauth2/revoke", new Object[] {
            getBaseUri()
        });
    }

    protected String getTokenUrl()
    {
        return String.format(Locale.ENGLISH, "%s/oauth2/token", new Object[] {
            getBaseUri()
        });
    }

    BoxRefreshAuthRequest refreshOAuth(String s, String s1, String s2)
    {
        return new BoxRefreshAuthRequest(mSession, getTokenUrl(), s, s1, s2);
    }

    BoxRevokeAuthRequest revokeOAuth(String s, String s1, String s2)
    {
        s = new BoxRevokeAuthRequest(mSession, getTokenRevokeUrl(), s, s1, s2);
        s.setRequestHandler(new com.box.androidsdk.content.requests.BoxRequest.BoxRequestHandler(s) {

            final BoxApiAuthentication this$0;

            public boolean onException(BoxRequest boxrequest, BoxHttpResponse boxhttpresponse, BoxException boxexception)
            {
                return false;
            }

            
            {
                this$0 = BoxApiAuthentication.this;
                super(boxrequest);
            }
        });
        return s;
    }
}
