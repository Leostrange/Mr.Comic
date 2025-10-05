package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.BoxApi;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxMDMData;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxHttpResponse;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import com.box.androidsdk.content.utils.SdkUtils;
import java.util.Locale;

class BoxApiAuthentication extends BoxApi {
    static final String GRANT_TYPE = "grant_type";
    static final String GRANT_TYPE_AUTH_CODE = "authorization_code";
    static final String GRANT_TYPE_REFRESH = "refresh_token";
    static final String OAUTH_TOKEN_REQUEST_URL = "%s/oauth2/token";
    static final String OAUTH_TOKEN_REVOKE_URL = "%s/oauth2/revoke";
    static final String REFRESH_TOKEN = "refresh_token";
    static final String RESPONSE_TYPE_BASE_DOMAIN = "base_domain";
    static final String RESPONSE_TYPE_CODE = "code";
    static final String RESPONSE_TYPE_ERROR = "error";

    static class BoxCreateAuthRequest extends BoxRequest<BoxAuthentication.BoxAuthenticationInfo, BoxCreateAuthRequest> {
        private static final long serialVersionUID = 8123965031279971580L;

        public BoxCreateAuthRequest(BoxSession boxSession, String str, String str2, String str3, String str4) {
            super(BoxAuthentication.BoxAuthenticationInfo.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setContentType(BoxRequest.ContentTypes.URL_ENCODED);
            this.mBodyMap.put(BoxApiAuthentication.GRANT_TYPE, BoxApiAuthentication.GRANT_TYPE_AUTH_CODE);
            this.mBodyMap.put("code", str2);
            this.mBodyMap.put("client_id", str3);
            this.mBodyMap.put(BoxConstants.KEY_CLIENT_SECRET, str4);
            if (boxSession.getDeviceId() != null) {
                setDevice(boxSession.getDeviceId(), boxSession.getDeviceName());
            }
            if (boxSession.getManagementData() != null) {
                setMdmData(boxSession.getManagementData());
            }
            if (boxSession.getRefreshTokenExpiresAt() != null) {
                setRefreshExpiresAt(boxSession.getRefreshTokenExpiresAt().longValue());
            }
        }

        public BoxCreateAuthRequest setDevice(String str, String str2) {
            if (!SdkUtils.isEmptyString(str)) {
                this.mBodyMap.put(BoxConstants.KEY_BOX_DEVICE_ID, str);
            }
            if (!SdkUtils.isEmptyString(str2)) {
                this.mBodyMap.put(BoxConstants.KEY_BOX_DEVICE_NAME, str2);
            }
            return this;
        }

        public BoxCreateAuthRequest setMdmData(BoxMDMData boxMDMData) {
            if (boxMDMData != null) {
                this.mBodyMap.put(BoxMDMData.BOX_MDM_DATA, boxMDMData.toJson());
            }
            return this;
        }

        public BoxCreateAuthRequest setRefreshExpiresAt(long j) {
            this.mBodyMap.put(BoxConstants.KEY_BOX_REFRESH_TOKEN_EXPIRES_AT, Long.toString(j));
            return this;
        }
    }

    static class BoxRefreshAuthRequest extends BoxRequest<BoxAuthentication.BoxAuthenticationInfo, BoxRefreshAuthRequest> {
        private static final long serialVersionUID = 8123965031279971570L;

        public BoxRefreshAuthRequest(BoxSession boxSession, String str, String str2, String str3, String str4) {
            super(BoxAuthentication.BoxAuthenticationInfo.class, str, boxSession);
            this.mContentType = BoxRequest.ContentTypes.URL_ENCODED;
            this.mRequestMethod = BoxRequest.Methods.POST;
            this.mBodyMap.put(BoxApiAuthentication.GRANT_TYPE, BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN);
            this.mBodyMap.put(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN, str2);
            this.mBodyMap.put("client_id", str3);
            this.mBodyMap.put(BoxConstants.KEY_CLIENT_SECRET, str4);
            if (boxSession.getDeviceId() != null) {
                setDevice(boxSession.getDeviceId(), boxSession.getDeviceName());
            }
            if (boxSession.getRefreshTokenExpiresAt() != null) {
                setRefreshExpiresAt(boxSession.getRefreshTokenExpiresAt().longValue());
            }
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxAuthentication.BoxAuthenticationInfo> boxResponse) {
            super.onSendCompleted(boxResponse);
            if (boxResponse.isSuccess()) {
                boxResponse.getResult().setUser(this.mSession.getUser());
            }
        }

        public BoxRefreshAuthRequest setDevice(String str, String str2) {
            if (!SdkUtils.isEmptyString(str)) {
                this.mBodyMap.put(BoxConstants.KEY_BOX_DEVICE_ID, str);
            }
            if (!SdkUtils.isEmptyString(str2)) {
                this.mBodyMap.put(BoxConstants.KEY_BOX_DEVICE_NAME, str2);
            }
            return this;
        }

        public BoxRefreshAuthRequest setRefreshExpiresAt(long j) {
            this.mBodyMap.put(BoxConstants.KEY_BOX_REFRESH_TOKEN_EXPIRES_AT, Long.toString(j));
            return this;
        }
    }

    static class BoxRevokeAuthRequest extends BoxRequest<BoxAuthentication.BoxAuthenticationInfo, BoxRevokeAuthRequest> {
        private static final long serialVersionUID = 8123965031279971548L;

        public BoxRevokeAuthRequest(BoxSession boxSession, String str, String str2, String str3, String str4) {
            super(BoxAuthentication.BoxAuthenticationInfo.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setContentType(BoxRequest.ContentTypes.URL_ENCODED);
            this.mBodyMap.put("client_id", str3);
            this.mBodyMap.put(BoxConstants.KEY_CLIENT_SECRET, str4);
            this.mBodyMap.put(BoxConstants.KEY_TOKEN, str2);
        }
    }

    BoxApiAuthentication(BoxSession boxSession) {
        super(boxSession);
        this.mBaseUri = BoxConstants.OAUTH_BASE_URI;
    }

    /* access modifiers changed from: package-private */
    public BoxCreateAuthRequest createOAuth(String str, String str2, String str3) {
        return new BoxCreateAuthRequest(this.mSession, getTokenUrl(), str, str2, str3);
    }

    /* access modifiers changed from: protected */
    public String getBaseUri() {
        if (this.mSession == null || this.mSession.getAuthInfo() == null || this.mSession.getAuthInfo().getBaseDomain() == null) {
            return super.getBaseUri();
        }
        return String.format(BoxConstants.OAUTH_BASE_URI_TEMPLATE, new Object[]{this.mSession.getAuthInfo().getBaseDomain()});
    }

    /* access modifiers changed from: protected */
    public String getTokenRevokeUrl() {
        return String.format(Locale.ENGLISH, OAUTH_TOKEN_REVOKE_URL, new Object[]{getBaseUri()});
    }

    /* access modifiers changed from: protected */
    public String getTokenUrl() {
        return String.format(Locale.ENGLISH, OAUTH_TOKEN_REQUEST_URL, new Object[]{getBaseUri()});
    }

    /* access modifiers changed from: package-private */
    public BoxRefreshAuthRequest refreshOAuth(String str, String str2, String str3) {
        return new BoxRefreshAuthRequest(this.mSession, getTokenUrl(), str, str2, str3);
    }

    /* access modifiers changed from: package-private */
    public BoxRevokeAuthRequest revokeOAuth(String str, String str2, String str3) {
        BoxRevokeAuthRequest boxRevokeAuthRequest = new BoxRevokeAuthRequest(this.mSession, getTokenRevokeUrl(), str, str2, str3);
        boxRevokeAuthRequest.setRequestHandler(new BoxRequest.BoxRequestHandler(boxRevokeAuthRequest) {
            public boolean onException(BoxRequest boxRequest, BoxHttpResponse boxHttpResponse, BoxException boxException) {
                return false;
            }
        });
        return boxRevokeAuthRequest;
    }
}
