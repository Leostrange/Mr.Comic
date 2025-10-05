package com.box.androidsdk.content.models;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.box.androidsdk.content.utils.StringMappedThreadPoolExecutor;
import defpackage.hc;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class BoxSession extends BoxObject implements BoxAuthentication.AuthListener {
    private static final transient ThreadPoolExecutor AUTH_CREATION_EXECUTOR = SdkUtils.createDefaultThreadPoolExecutor(1, 20, 3600, TimeUnit.SECONDS);
    private static final long serialVersionUID = 8122900496609434013L;
    protected String mAccountEmail;
    private transient Context mApplicationContext;
    protected BoxAuthentication.BoxAuthenticationInfo mAuthInfo;
    protected String mClientId;
    protected String mClientRedirectUrl;
    protected String mClientSecret;
    protected String mDeviceId;
    protected String mDeviceName;
    protected boolean mEnableBoxAppAuthentication;
    protected Long mExpiresAt;
    private String mLastAuthCreationTaskId;
    protected BoxMDMData mMDMData;
    protected BoxAuthentication.AuthenticationRefreshProvider mRefreshProvider;
    private transient WeakReference<BoxFutureTask<BoxSession>> mRefreshTask;
    /* access modifiers changed from: private */
    public boolean mSuppressAuthErrorUIAfterLogin;
    private String mUserAgent;
    private String mUserId;
    private transient BoxAuthentication.AuthListener sessionAuthListener;

    static class BoxSessionAuthCreationRequest extends BoxRequest<BoxSession, BoxSessionAuthCreationRequest> implements BoxAuthentication.AuthListener {
        private static final long serialVersionUID = 8123965031279971545L;
        private CountDownLatch authLatch;
        /* access modifiers changed from: private */
        public boolean mIsWaitingForLoginUi;
        /* access modifiers changed from: private */
        public final BoxSession mSession;

        static class BoxAuthCreationTask extends BoxFutureTask<BoxSession> {
            public BoxAuthCreationTask(Class<BoxSession> cls, BoxRequest boxRequest) {
                super(cls, boxRequest);
            }

            public void bringUiToFrontIfNecessary() {
                if ((this.mRequest instanceof BoxSessionAuthCreationRequest) && ((BoxSessionAuthCreationRequest) this.mRequest).mIsWaitingForLoginUi) {
                    ((BoxSessionAuthCreationRequest) this.mRequest).mSession.startAuthenticationUI();
                }
            }
        }

        public BoxSessionAuthCreationRequest(BoxSession boxSession, boolean z) {
            super((Class) null, " ", (BoxSession) null);
            this.mSession = boxSession;
        }

        private void launchAuthUI() {
            this.authLatch = new CountDownLatch(1);
            this.mIsWaitingForLoginUi = true;
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    if (BoxSessionAuthCreationRequest.this.mSession.getRefreshProvider() == null || !BoxSessionAuthCreationRequest.this.mSession.getRefreshProvider().launchAuthUi(BoxSessionAuthCreationRequest.this.mSession.getUserId(), BoxSessionAuthCreationRequest.this.mSession)) {
                        BoxSessionAuthCreationRequest.this.mSession.startAuthenticationUI();
                    }
                }
            });
            try {
                this.authLatch.await();
            } catch (InterruptedException e) {
                this.authLatch.countDown();
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof BoxSessionAuthCreationRequest) || !((BoxSessionAuthCreationRequest) obj).mSession.equals(this.mSession)) {
                return false;
            }
            return super.equals(obj);
        }

        public int hashCode() {
            return this.mSession.hashCode() + super.hashCode();
        }

        public void onAuthCreated(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
            this.authLatch.countDown();
        }

        public void onAuthFailure(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
            this.authLatch.countDown();
        }

        public void onLoggedOut(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        }

        public void onRefreshed(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0065, code lost:
            r2 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0066, code lost:
            com.box.androidsdk.content.utils.BoxLogUtils.e("BoxSession", "Unable to repair user", r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x006f, code lost:
            if ((r2 instanceof com.box.androidsdk.content.BoxException.RefreshFailure) == false) goto L_0x0097;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x007b, code lost:
            com.box.androidsdk.content.models.BoxSession.access$100(r5.mSession.getApplicationContext(), defpackage.hc.e.boxsdk_error_fatal_refresh);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x009d, code lost:
            if (r2.getErrorType() == com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED) goto L_0x009f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x009f, code lost:
            com.box.androidsdk.content.models.BoxSession.access$100(r5.mSession.getApplicationContext(), defpackage.hc.e.boxsdk_error_terms_of_service);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x00ab, code lost:
            r5.mSession.onAuthFailure((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) null, r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:33:0x00b1, code lost:
            throw r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:53:0x0145, code lost:
            r2 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:54:0x0146, code lost:
            com.box.androidsdk.content.utils.BoxLogUtils.e("BoxSession", "Unable to repair user", r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:55:0x014f, code lost:
            if ((r2 instanceof com.box.androidsdk.content.BoxException.RefreshFailure) == false) goto L_0x0172;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:58:0x015b, code lost:
            com.box.androidsdk.content.models.BoxSession.access$100(r5.mSession.getApplicationContext(), defpackage.hc.e.boxsdk_error_fatal_refresh);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:61:0x0178, code lost:
            if (r2.getErrorType() == com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED) goto L_0x017a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:62:0x017a, code lost:
            com.box.androidsdk.content.models.BoxSession.access$100(r5.mSession.getApplicationContext(), defpackage.hc.e.boxsdk_error_terms_of_service);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:63:0x0186, code lost:
            r5.mSession.onAuthFailure((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) null, r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:64:0x018c, code lost:
            throw r2;
         */
        /* JADX WARNING: Exception block dominator not found, dom blocks: [B:11:0x002b, B:48:0x0112] */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:48:0x0112=Splitter:B:48:0x0112, B:28:0x0097=Splitter:B:28:0x0097} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.box.androidsdk.content.models.BoxSession onSend() {
            /*
                r5 = this;
                com.box.androidsdk.content.models.BoxSession r3 = r5.mSession
                monitor-enter(r3)
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxUser r1 = r1.getUser()     // Catch:{ all -> 0x0094 }
                if (r1 != 0) goto L_0x00b2
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r1 = r1.getAuthInfo()     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x0086
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r1 = r1.getAuthInfo()     // Catch:{ all -> 0x0094 }
                java.lang.String r1 = r1.accessToken()     // Catch:{ all -> 0x0094 }
                boolean r1 = com.box.androidsdk.content.utils.SdkUtils.isBlank(r1)     // Catch:{ all -> 0x0094 }
                if (r1 != 0) goto L_0x0086
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxUser r1 = r1.getUser()     // Catch:{ all -> 0x0094 }
                if (r1 != 0) goto L_0x0086
                com.box.androidsdk.content.BoxApiUser r1 = new com.box.androidsdk.content.BoxApiUser     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0065 }
                r1.<init>(r2)     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.requests.BoxRequestsUser$GetUserInfo r1 = r1.getCurrentUserInfoRequest()     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxObject r1 = r1.send()     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxUser r1 = (com.box.androidsdk.content.models.BoxUser) r1     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0065 }
                java.lang.String r4 = r1.getId()     // Catch:{ BoxException -> 0x0065 }
                r2.setUserId(r4)     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ BoxException -> 0x0065 }
                r2.setUser(r1)     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.auth.BoxAuthentication r1 = com.box.androidsdk.content.auth.BoxAuthentication.getInstance()     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxSession r4 = r5.mSession     // Catch:{ BoxException -> 0x0065 }
                android.content.Context r4 = r4.getApplicationContext()     // Catch:{ BoxException -> 0x0065 }
                r1.onAuthenticated(r2, r4)     // Catch:{ BoxException -> 0x0065 }
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ BoxException -> 0x0065 }
                monitor-exit(r3)     // Catch:{ all -> 0x0094 }
            L_0x0064:
                return r1
            L_0x0065:
                r2 = move-exception
                java.lang.String r1 = "BoxSession"
                java.lang.String r4 = "Unable to repair user"
                com.box.androidsdk.content.utils.BoxLogUtils.e(r1, r4, r2)     // Catch:{ all -> 0x0094 }
                boolean r1 = r2 instanceof com.box.androidsdk.content.BoxException.RefreshFailure     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x0097
                r0 = r2
                com.box.androidsdk.content.BoxException$RefreshFailure r0 = (com.box.androidsdk.content.BoxException.RefreshFailure) r0     // Catch:{ all -> 0x0094 }
                r1 = r0
                boolean r1 = r1.isErrorFatal()     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x0097
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                android.content.Context r1 = r1.getApplicationContext()     // Catch:{ all -> 0x0094 }
                int r2 = defpackage.hc.e.boxsdk_error_fatal_refresh     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession.toastString(r1, r2)     // Catch:{ all -> 0x0094 }
            L_0x0086:
                com.box.androidsdk.content.auth.BoxAuthentication r1 = com.box.androidsdk.content.auth.BoxAuthentication.getInstance()     // Catch:{ all -> 0x0094 }
                r1.addListener(r5)     // Catch:{ all -> 0x0094 }
                r5.launchAuthUI()     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                monitor-exit(r3)     // Catch:{ all -> 0x0094 }
                goto L_0x0064
            L_0x0094:
                r1 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0094 }
                throw r1
            L_0x0097:
                com.box.androidsdk.content.BoxException$ErrorType r1 = r2.getErrorType()     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.BoxException$ErrorType r4 = com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED     // Catch:{ all -> 0x0094 }
                if (r1 != r4) goto L_0x00ab
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                android.content.Context r1 = r1.getApplicationContext()     // Catch:{ all -> 0x0094 }
                int r2 = defpackage.hc.e.boxsdk_error_terms_of_service     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession.toastString(r1, r2)     // Catch:{ all -> 0x0094 }
                goto L_0x0086
            L_0x00ab:
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                r4 = 0
                r1.onAuthFailure(r4, r2)     // Catch:{ all -> 0x0094 }
                throw r2     // Catch:{ all -> 0x0094 }
            L_0x00b2:
                com.box.androidsdk.content.auth.BoxAuthentication r1 = com.box.androidsdk.content.auth.BoxAuthentication.getInstance()     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ all -> 0x0094 }
                java.lang.String r2 = r2.getUserId()     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession r4 = r5.mSession     // Catch:{ all -> 0x0094 }
                android.content.Context r4 = r4.getApplicationContext()     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r1 = r1.getAuthInfo(r2, r4)     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x018d
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.mAuthInfo     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo.cloneInfo(r2, r1)     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ all -> 0x0094 }
                java.lang.String r2 = r2.accessToken()     // Catch:{ all -> 0x0094 }
                boolean r2 = com.box.androidsdk.content.utils.SdkUtils.isBlank(r2)     // Catch:{ all -> 0x0094 }
                if (r2 == 0) goto L_0x00fe
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ all -> 0x0094 }
                java.lang.String r2 = r2.refreshToken()     // Catch:{ all -> 0x0094 }
                boolean r2 = com.box.androidsdk.content.utils.SdkUtils.isBlank(r2)     // Catch:{ all -> 0x0094 }
                if (r2 == 0) goto L_0x00fe
                com.box.androidsdk.content.auth.BoxAuthentication r1 = com.box.androidsdk.content.auth.BoxAuthentication.getInstance()     // Catch:{ all -> 0x0094 }
                r1.addListener(r5)     // Catch:{ all -> 0x0094 }
                r5.launchAuthUI()     // Catch:{ all -> 0x0094 }
            L_0x00f9:
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                monitor-exit(r3)     // Catch:{ all -> 0x0094 }
                goto L_0x0064
            L_0x00fe:
                com.box.androidsdk.content.models.BoxUser r2 = r1.getUser()     // Catch:{ all -> 0x0094 }
                if (r2 == 0) goto L_0x0112
                com.box.androidsdk.content.models.BoxUser r1 = r1.getUser()     // Catch:{ all -> 0x0094 }
                java.lang.String r1 = r1.getId()     // Catch:{ all -> 0x0094 }
                boolean r1 = com.box.androidsdk.content.utils.SdkUtils.isBlank(r1)     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x0166
            L_0x0112:
                com.box.androidsdk.content.BoxApiUser r1 = new com.box.androidsdk.content.BoxApiUser     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0145 }
                r1.<init>(r2)     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.requests.BoxRequestsUser$GetUserInfo r1 = r1.getCurrentUserInfoRequest()     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxObject r1 = r1.send()     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxUser r1 = (com.box.androidsdk.content.models.BoxUser) r1     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0145 }
                java.lang.String r4 = r1.getId()     // Catch:{ BoxException -> 0x0145 }
                r2.setUserId(r4)     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ BoxException -> 0x0145 }
                r2.setUser(r1)     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ BoxException -> 0x0145 }
                r1.onAuthCreated(r2)     // Catch:{ BoxException -> 0x0145 }
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ BoxException -> 0x0145 }
                monitor-exit(r3)     // Catch:{ all -> 0x0094 }
                goto L_0x0064
            L_0x0145:
                r2 = move-exception
                java.lang.String r1 = "BoxSession"
                java.lang.String r4 = "Unable to repair user"
                com.box.androidsdk.content.utils.BoxLogUtils.e(r1, r4, r2)     // Catch:{ all -> 0x0094 }
                boolean r1 = r2 instanceof com.box.androidsdk.content.BoxException.RefreshFailure     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x0172
                r0 = r2
                com.box.androidsdk.content.BoxException$RefreshFailure r0 = (com.box.androidsdk.content.BoxException.RefreshFailure) r0     // Catch:{ all -> 0x0094 }
                r1 = r0
                boolean r1 = r1.isErrorFatal()     // Catch:{ all -> 0x0094 }
                if (r1 == 0) goto L_0x0172
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                android.content.Context r1 = r1.getApplicationContext()     // Catch:{ all -> 0x0094 }
                int r2 = defpackage.hc.e.boxsdk_error_fatal_refresh     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession.toastString(r1, r2)     // Catch:{ all -> 0x0094 }
            L_0x0166:
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession r2 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r2 = r2.getAuthInfo()     // Catch:{ all -> 0x0094 }
                r1.onAuthCreated(r2)     // Catch:{ all -> 0x0094 }
                goto L_0x00f9
            L_0x0172:
                com.box.androidsdk.content.BoxException$ErrorType r1 = r2.getErrorType()     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.BoxException$ErrorType r4 = com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED     // Catch:{ all -> 0x0094 }
                if (r1 != r4) goto L_0x0186
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                android.content.Context r1 = r1.getApplicationContext()     // Catch:{ all -> 0x0094 }
                int r2 = defpackage.hc.e.boxsdk_error_terms_of_service     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.models.BoxSession.toastString(r1, r2)     // Catch:{ all -> 0x0094 }
                goto L_0x0166
            L_0x0186:
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                r4 = 0
                r1.onAuthFailure(r4, r2)     // Catch:{ all -> 0x0094 }
                throw r2     // Catch:{ all -> 0x0094 }
            L_0x018d:
                com.box.androidsdk.content.models.BoxSession r1 = r5.mSession     // Catch:{ all -> 0x0094 }
                com.box.androidsdk.content.auth.BoxAuthentication$BoxAuthenticationInfo r1 = r1.mAuthInfo     // Catch:{ all -> 0x0094 }
                r2 = 0
                r1.setUser(r2)     // Catch:{ all -> 0x0094 }
                r5.launchAuthUI()     // Catch:{ all -> 0x0094 }
                goto L_0x00f9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.box.androidsdk.content.models.BoxSession.BoxSessionAuthCreationRequest.onSend():com.box.androidsdk.content.models.BoxSession");
        }

        public BoxFutureTask<BoxSession> toTask() {
            return new BoxAuthCreationTask(BoxSession.class, this);
        }
    }

    static class BoxSessionLogoutRequest extends BoxRequest<BoxSession, BoxSessionLogoutRequest> {
        private static final long serialVersionUID = 8123965031279971582L;
        private BoxSession mSession;

        public BoxSessionLogoutRequest(BoxSession boxSession) {
            super((Class) null, " ", (BoxSession) null);
            this.mSession = boxSession;
        }

        /* access modifiers changed from: protected */
        public BoxSession onSend() {
            synchronized (this.mSession) {
                if (this.mSession.getUser() != null) {
                    BoxAuthentication.getInstance().logout(this.mSession);
                    this.mSession.getAuthInfo().wipeOutAuth();
                    this.mSession.setUserId((String) null);
                }
            }
            return this.mSession;
        }
    }

    static class BoxSessionRefreshRequest extends BoxRequest<BoxSession, BoxSessionRefreshRequest> {
        private static final long serialVersionUID = 8123965031279971587L;
        private BoxSession mSession;

        public BoxSessionRefreshRequest(BoxSession boxSession) {
            super((Class) null, " ", (BoxSession) null);
            this.mSession = boxSession;
        }

        public BoxSession onSend() {
            try {
                BoxAuthentication.getInstance().refresh(this.mSession).get();
            } catch (Exception e) {
                BoxLogUtils.e("BoxSession", "Unable to repair user", e);
                Exception exc = e.getCause() instanceof BoxException ? (Exception) e.getCause() : e;
                if (!(exc instanceof BoxException)) {
                    throw new BoxException("BoxSessionRefreshRequest failed", (Throwable) exc);
                } else if (this.mSession.mSuppressAuthErrorUIAfterLogin) {
                    this.mSession.onAuthFailure((BoxAuthentication.BoxAuthenticationInfo) null, exc);
                } else if ((exc instanceof BoxException.RefreshFailure) && ((BoxException.RefreshFailure) exc).isErrorFatal()) {
                    BoxSession.toastString(this.mSession.getApplicationContext(), hc.e.boxsdk_error_fatal_refresh);
                    this.mSession.startAuthenticationUI();
                    this.mSession.onAuthFailure(this.mSession.getAuthInfo(), exc);
                    throw ((BoxException) exc);
                } else if (((BoxException) e).getErrorType() == BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED) {
                    BoxSession.toastString(this.mSession.getApplicationContext(), hc.e.boxsdk_error_terms_of_service);
                    this.mSession.startAuthenticationUI();
                    this.mSession.onAuthFailure(this.mSession.getAuthInfo(), exc);
                    BoxLogUtils.e("BoxSession", "TOS refresh exception ", exc);
                    throw ((BoxException) exc);
                } else {
                    this.mSession.onAuthFailure((BoxAuthentication.BoxAuthenticationInfo) null, exc);
                    throw ((BoxException) exc);
                }
            }
            BoxAuthentication.BoxAuthenticationInfo.cloneInfo(this.mSession.mAuthInfo, BoxAuthentication.getInstance().getAuthInfo(this.mSession.getUserId(), this.mSession.getApplicationContext()));
            return this.mSession;
        }
    }

    public BoxSession(Context context) {
        this(context, getBestStoredUserId(context));
    }

    public <E extends BoxAuthentication.AuthenticationRefreshProvider & Serializable> BoxSession(Context context, BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, E e) {
        this.mUserAgent = "com.box.sdk.android";
        this.mApplicationContext = BoxConfig.APPLICATION_CONTEXT;
        this.mSuppressAuthErrorUIAfterLogin = false;
        this.mEnableBoxAppAuthentication = BoxConfig.ENABLE_BOX_APP_AUTHENTICATION;
        this.mApplicationContext = context.getApplicationContext();
        setAuthInfo(boxAuthenticationInfo);
        this.mRefreshProvider = e;
        setupSession();
    }

    public BoxSession(Context context, String str) {
        this(context, str, BoxConfig.CLIENT_ID, BoxConfig.CLIENT_SECRET, BoxConfig.REDIRECT_URL);
        if (!SdkUtils.isEmptyString(BoxConfig.DEVICE_NAME)) {
            setDeviceName(BoxConfig.DEVICE_NAME);
        }
        if (!SdkUtils.isEmptyString(BoxConfig.DEVICE_ID)) {
            setDeviceName(BoxConfig.DEVICE_ID);
        }
    }

    public <E extends BoxAuthentication.AuthenticationRefreshProvider & Serializable> BoxSession(Context context, String str, E e) {
        this(context, createSimpleBoxAuthenticationInfo(str), e);
    }

    public BoxSession(Context context, String str, String str2, String str3, String str4) {
        this.mUserAgent = "com.box.sdk.android";
        this.mApplicationContext = BoxConfig.APPLICATION_CONTEXT;
        this.mSuppressAuthErrorUIAfterLogin = false;
        this.mEnableBoxAppAuthentication = BoxConfig.ENABLE_BOX_APP_AUTHENTICATION;
        this.mClientId = str2;
        this.mClientSecret = str3;
        this.mClientRedirectUrl = str4;
        if (getRefreshProvider() != null || (!SdkUtils.isEmptyString(this.mClientId) && !SdkUtils.isEmptyString(this.mClientSecret))) {
            this.mApplicationContext = context.getApplicationContext();
            if (!SdkUtils.isEmptyString(str)) {
                this.mAuthInfo = BoxAuthentication.getInstance().getAuthInfo(str, context);
                this.mUserId = str;
            }
            if (this.mAuthInfo == null) {
                this.mUserId = str;
                this.mAuthInfo = new BoxAuthentication.BoxAuthenticationInfo();
            }
            this.mAuthInfo.setClientId(this.mClientId);
            setupSession();
            return;
        }
        throw new RuntimeException("Session must have a valid client id and client secret specified.");
    }

    protected BoxSession(BoxSession boxSession) {
        this.mUserAgent = "com.box.sdk.android";
        this.mApplicationContext = BoxConfig.APPLICATION_CONTEXT;
        this.mSuppressAuthErrorUIAfterLogin = false;
        this.mEnableBoxAppAuthentication = BoxConfig.ENABLE_BOX_APP_AUTHENTICATION;
        this.mApplicationContext = boxSession.mApplicationContext;
        if (!SdkUtils.isBlank(boxSession.getUserId())) {
            setUserId(boxSession.getUserId());
        }
        if (!SdkUtils.isBlank(boxSession.getDeviceId())) {
            setDeviceId(boxSession.getDeviceId());
        }
        if (!SdkUtils.isBlank(boxSession.getDeviceName())) {
            setDeviceName(boxSession.getDeviceName());
        }
        if (!SdkUtils.isBlank(boxSession.getBoxAccountEmail())) {
            setBoxAccountEmail(boxSession.getBoxAccountEmail());
        }
        if (boxSession.getManagementData() != null) {
            setManagementData(boxSession.getManagementData());
        }
        if (!SdkUtils.isBlank(boxSession.getClientId())) {
            this.mClientId = boxSession.mClientId;
        }
        if (!SdkUtils.isBlank(boxSession.getClientSecret())) {
            this.mClientSecret = boxSession.getClientSecret();
        }
        if (!SdkUtils.isBlank(boxSession.getRedirectUrl())) {
            this.mClientRedirectUrl = boxSession.getRedirectUrl();
        }
        setAuthInfo(boxSession.getAuthInfo());
        setupSession();
    }

    private static BoxAuthentication.BoxAuthenticationInfo createSimpleBoxAuthenticationInfo(String str) {
        BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo = new BoxAuthentication.BoxAuthenticationInfo();
        boxAuthenticationInfo.setAccessToken(str);
        return boxAuthenticationInfo;
    }

    private void deleteFilesRecursively(File file) {
        File[] listFiles;
        if (file != null) {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File deleteFilesRecursively : listFiles) {
                    deleteFilesRecursively(deleteFilesRecursively);
                }
            }
            file.delete();
        }
    }

    private static String getBestStoredUserId(Context context) {
        String lastAuthenticatedUserId = BoxAuthentication.getInstance().getLastAuthenticatedUserId(context);
        Map<String, BoxAuthentication.BoxAuthenticationInfo> storedAuthInfo = BoxAuthentication.getInstance().getStoredAuthInfo(context);
        if (storedAuthInfo != null) {
            if (!SdkUtils.isEmptyString(lastAuthenticatedUserId) && storedAuthInfo.get(lastAuthenticatedUserId) != null) {
                return lastAuthenticatedUserId;
            }
            if (storedAuthInfo.size() == 1) {
                Iterator<String> it = storedAuthInfo.keySet().iterator();
                if (it.hasNext()) {
                    return it.next();
                }
            }
        }
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        if (BoxConfig.APPLICATION_CONTEXT != null) {
            setApplicationContext(BoxConfig.APPLICATION_CONTEXT);
        }
    }

    private boolean sameUser(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        return (boxAuthenticationInfo == null || boxAuthenticationInfo.getUser() == null || getUserId() == null || !getUserId().equals(boxAuthenticationInfo.getUser().getId())) ? false : true;
    }

    /* access modifiers changed from: private */
    public static void toastString(Context context, int i) {
        SdkUtils.toastSafely(context, i, 1);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
    }

    @Deprecated
    public BoxFutureTask<BoxSession> authenticate() {
        return authenticate(getApplicationContext());
    }

    public BoxFutureTask<BoxSession> authenticate(Context context) {
        return authenticate(context, (BoxFutureTask.OnCompletedListener<BoxSession>) null);
    }

    public BoxFutureTask<BoxSession> authenticate(Context context, BoxFutureTask.OnCompletedListener<BoxSession> onCompletedListener) {
        BoxSessionAuthCreationRequest.BoxAuthCreationTask boxAuthCreationTask;
        if (context != null) {
            this.mApplicationContext = context.getApplicationContext();
            BoxConfig.APPLICATION_CONTEXT = this.mApplicationContext;
        }
        if (!SdkUtils.isBlank(this.mLastAuthCreationTaskId) && (AUTH_CREATION_EXECUTOR instanceof StringMappedThreadPoolExecutor)) {
            Runnable taskFor = ((StringMappedThreadPoolExecutor) AUTH_CREATION_EXECUTOR).getTaskFor(this.mLastAuthCreationTaskId);
            if (taskFor instanceof BoxSessionAuthCreationRequest.BoxAuthCreationTask) {
                BoxSessionAuthCreationRequest.BoxAuthCreationTask boxAuthCreationTask2 = (BoxSessionAuthCreationRequest.BoxAuthCreationTask) taskFor;
                if (onCompletedListener != null) {
                    boxAuthCreationTask2.addOnCompletedListener(onCompletedListener);
                }
                boxAuthCreationTask2.bringUiToFrontIfNecessary();
                boxAuthCreationTask = boxAuthCreationTask2;
                return boxAuthCreationTask;
            }
        }
        BoxFutureTask<BoxSession> task = new BoxSessionAuthCreationRequest(this, this.mEnableBoxAppAuthentication).toTask();
        if (onCompletedListener != null) {
            task.addOnCompletedListener(onCompletedListener);
        }
        this.mLastAuthCreationTaskId = task.toString();
        AUTH_CREATION_EXECUTOR.execute(task);
        boxAuthCreationTask = task;
        return boxAuthCreationTask;
    }

    public void clearCache() {
        File[] listFiles;
        File cacheDir = getCacheDir();
        if (cacheDir.exists() && (listFiles = cacheDir.listFiles()) != null) {
            for (File deleteFilesRecursively : listFiles) {
                deleteFilesRecursively(deleteFilesRecursively);
            }
        }
    }

    public Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public BoxAuthentication.BoxAuthenticationInfo getAuthInfo() {
        return this.mAuthInfo;
    }

    public String getBoxAccountEmail() {
        return this.mAccountEmail;
    }

    public File getCacheDir() {
        return new File(getApplicationContext().getFilesDir(), getUserId());
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getClientSecret() {
        return this.mClientSecret;
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public String getDeviceName() {
        return this.mDeviceName;
    }

    public BoxMDMData getManagementData() {
        return this.mMDMData;
    }

    public String getRedirectUrl() {
        return this.mClientRedirectUrl;
    }

    public BoxAuthentication.AuthenticationRefreshProvider getRefreshProvider() {
        return this.mRefreshProvider != null ? this.mRefreshProvider : BoxAuthentication.getInstance().getRefreshProvider();
    }

    public Long getRefreshTokenExpiresAt() {
        return this.mExpiresAt;
    }

    public BoxUser getUser() {
        return this.mAuthInfo.getUser();
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    public String getUserId() {
        return this.mUserId;
    }

    public boolean isEnabledBoxAppAuthentication() {
        return this.mEnableBoxAppAuthentication;
    }

    public BoxFutureTask<BoxSession> logout() {
        final BoxFutureTask<BoxSession> task = new BoxSessionLogoutRequest(this).toTask();
        new Thread() {
            public void run() {
                task.run();
            }
        }.start();
        return task;
    }

    public void onAuthCreated(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        if (sameUser(boxAuthenticationInfo) || getUserId() == null) {
            BoxAuthentication.BoxAuthenticationInfo.cloneInfo(this.mAuthInfo, boxAuthenticationInfo);
            if (boxAuthenticationInfo.getUser() != null) {
                setUserId(boxAuthenticationInfo.getUser().getId());
            }
            if (this.sessionAuthListener != null) {
                this.sessionAuthListener.onAuthCreated(boxAuthenticationInfo);
            }
        }
    }

    public void onAuthFailure(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        if (sameUser(boxAuthenticationInfo) || (boxAuthenticationInfo == null && getUserId() == null)) {
            if (this.sessionAuthListener != null) {
                this.sessionAuthListener.onAuthFailure(boxAuthenticationInfo, exc);
            }
            if (exc instanceof BoxException) {
                switch (((BoxException) exc).getErrorType()) {
                    case NETWORK_ERROR:
                        toastString(this.mApplicationContext, hc.e.boxsdk_error_network_connection);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public void onLoggedOut(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        if (sameUser(boxAuthenticationInfo)) {
            boxAuthenticationInfo.wipeOutAuth();
            getAuthInfo().wipeOutAuth();
            setUserId((String) null);
            if (this.sessionAuthListener != null) {
                this.sessionAuthListener.onLoggedOut(boxAuthenticationInfo, exc);
            }
        }
    }

    public void onRefreshed(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        if (sameUser(boxAuthenticationInfo)) {
            BoxAuthentication.BoxAuthenticationInfo.cloneInfo(this.mAuthInfo, boxAuthenticationInfo);
            if (this.sessionAuthListener != null) {
                this.sessionAuthListener.onRefreshed(boxAuthenticationInfo);
            }
        }
    }

    public BoxFutureTask<BoxSession> refresh() {
        if (!(this.mRefreshTask == null || this.mRefreshTask.get() == null)) {
            BoxFutureTask<BoxSession> boxFutureTask = (BoxFutureTask) this.mRefreshTask.get();
            if (!boxFutureTask.isCancelled() && !boxFutureTask.isDone()) {
                return boxFutureTask;
            }
        }
        final BoxFutureTask<BoxSession> task = new BoxSessionRefreshRequest(this).toTask();
        new Thread() {
            public void run() {
                task.run();
            }
        }.start();
        this.mRefreshTask = new WeakReference<>(task);
        return task;
    }

    public void setApplicationContext(Context context) {
        this.mApplicationContext = context.getApplicationContext();
    }

    /* access modifiers changed from: protected */
    public void setAuthInfo(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        if (boxAuthenticationInfo == null) {
            this.mAuthInfo = new BoxAuthentication.BoxAuthenticationInfo();
            this.mAuthInfo.setClientId(this.mClientId);
        } else {
            this.mAuthInfo = boxAuthenticationInfo;
        }
        if (this.mAuthInfo.getUser() == null || SdkUtils.isBlank(this.mAuthInfo.getUser().getId())) {
            setUserId((String) null);
        } else {
            setUserId(this.mAuthInfo.getUser().getId());
        }
    }

    public void setBoxAccountEmail(String str) {
        this.mAccountEmail = str;
    }

    public void setDeviceId(String str) {
        this.mDeviceId = str;
    }

    public void setDeviceName(String str) {
        this.mDeviceName = str;
    }

    public void setEnableBoxAppAuthentication(boolean z) {
        this.mEnableBoxAppAuthentication = z;
    }

    public void setManagementData(BoxMDMData boxMDMData) {
        this.mMDMData = boxMDMData;
    }

    public void setRefreshTokenExpiresAt(long j) {
        this.mExpiresAt = Long.valueOf(j);
    }

    public void setSessionAuthListener(BoxAuthentication.AuthListener authListener) {
        this.sessionAuthListener = authListener;
    }

    /* access modifiers changed from: protected */
    public void setUserId(String str) {
        this.mUserId = str;
    }

    /* access modifiers changed from: protected */
    public void setupSession() {
        boolean z = false;
        try {
            if (!(this.mApplicationContext == null || this.mApplicationContext.getPackageManager() == null)) {
                if (BoxConfig.APPLICATION_CONTEXT == null) {
                    BoxConfig.APPLICATION_CONTEXT = this.mApplicationContext;
                }
                if ((this.mApplicationContext.getPackageManager().getPackageInfo(this.mApplicationContext.getPackageName(), 0).applicationInfo.flags & 2) != 0) {
                    z = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        BoxConfig.IS_DEBUG = z;
        BoxAuthentication.getInstance().addListener(this);
    }

    /* access modifiers changed from: protected */
    public void startAuthenticationUI() {
        BoxAuthentication.getInstance().startAuthenticationUI(this);
    }

    public void suppressAuthErrorUIAfterLogin(boolean z) {
        this.mSuppressAuthErrorUIAfterLogin = z;
    }

    public boolean suppressesAuthErrorUIAfterLogin() {
        return this.mSuppressAuthErrorUIAfterLogin;
    }
}
