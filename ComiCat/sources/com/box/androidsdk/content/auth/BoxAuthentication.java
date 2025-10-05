package com.box.androidsdk.content.auth;

import android.content.Context;
import android.content.Intent;
import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BoxApiAuthentication;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxResponse;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpStatus;

public class BoxAuthentication {
    public static final ThreadPoolExecutor AUTH_EXECUTOR = SdkUtils.createDefaultThreadPoolExecutor(1, 1, 3600, TimeUnit.SECONDS);
    private static String TAG = BoxAuthentication.class.getName();
    private static BoxAuthentication mAuthentication = new BoxAuthentication();
    private int EXPIRATION_GRACE = 1000;
    private AuthStorage authStorage = new AuthStorage();
    /* access modifiers changed from: private */
    public ConcurrentHashMap<String, BoxAuthenticationInfo> mCurrentAccessInfo;
    /* access modifiers changed from: private */
    public ConcurrentLinkedQueue<WeakReference<AuthListener>> mListeners = new ConcurrentLinkedQueue<>();
    /* access modifiers changed from: private */
    public AuthenticationRefreshProvider mRefreshProvider;
    /* access modifiers changed from: private */
    public ConcurrentHashMap<String, FutureTask> mRefreshingTasks = new ConcurrentHashMap<>();

    public interface AuthListener {
        void onAuthCreated(BoxAuthenticationInfo boxAuthenticationInfo);

        void onAuthFailure(BoxAuthenticationInfo boxAuthenticationInfo, Exception exc);

        void onLoggedOut(BoxAuthenticationInfo boxAuthenticationInfo, Exception exc);

        void onRefreshed(BoxAuthenticationInfo boxAuthenticationInfo);
    }

    public static class AuthStorage {
        private static final String AUTH_MAP_STORAGE_KEY = (AuthStorage.class.getCanonicalName() + "_authInfoMap");
        private static final String AUTH_STORAGE_LAST_AUTH_USER_ID_KEY = (AuthStorage.class.getCanonicalName() + "_lastAuthUserId");
        private static final String AUTH_STORAGE_NAME = (AuthStorage.class.getCanonicalName() + "_SharedPref");

        /* access modifiers changed from: protected */
        public void clearAuthInfoMap(Context context) {
            context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().remove(AUTH_MAP_STORAGE_KEY).commit();
        }

        /* access modifiers changed from: protected */
        public String getLastAuthentictedUserId(Context context) {
            return context.getSharedPreferences(AUTH_STORAGE_NAME, 0).getString(AUTH_STORAGE_LAST_AUTH_USER_ID_KEY, (String) null);
        }

        /* access modifiers changed from: protected */
        public ConcurrentHashMap<String, BoxAuthenticationInfo> loadAuthInfoMap(Context context) {
            ConcurrentHashMap<String, BoxAuthenticationInfo> concurrentHashMap = new ConcurrentHashMap<>();
            String string = context.getSharedPreferences(AUTH_STORAGE_NAME, 0).getString(AUTH_MAP_STORAGE_KEY, "");
            if (string.length() > 0) {
                BoxEntity boxEntity = new BoxEntity();
                boxEntity.createFromJson(string);
                for (String next : boxEntity.getPropertiesKeySet()) {
                    JsonValue propertyValue = boxEntity.getPropertyValue(next);
                    BoxAuthenticationInfo boxAuthenticationInfo = null;
                    if (propertyValue.isString()) {
                        boxAuthenticationInfo = new BoxAuthenticationInfo();
                        boxAuthenticationInfo.createFromJson(propertyValue.asString());
                    } else if (propertyValue.isObject()) {
                        boxAuthenticationInfo = new BoxAuthenticationInfo();
                        boxAuthenticationInfo.createFromJson(propertyValue.asObject());
                    }
                    concurrentHashMap.put(next, boxAuthenticationInfo);
                }
            }
            return concurrentHashMap;
        }

        /* access modifiers changed from: protected */
        public void storeAuthInfoMap(Map<String, BoxAuthenticationInfo> map, Context context) {
            JsonObject jsonObject = new JsonObject();
            for (Map.Entry next : map.entrySet()) {
                jsonObject.add((String) next.getKey(), (JsonValue) ((BoxAuthenticationInfo) next.getValue()).toJsonObject());
            }
            context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().putString(AUTH_MAP_STORAGE_KEY, new BoxEntity(jsonObject).toJson()).commit();
        }

        /* access modifiers changed from: protected */
        public void storeLastAuthenticatedUserId(String str, Context context) {
            if (SdkUtils.isEmptyString(str)) {
                context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().remove(AUTH_STORAGE_LAST_AUTH_USER_ID_KEY).commit();
            } else {
                context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().putString(AUTH_STORAGE_LAST_AUTH_USER_ID_KEY, str).commit();
            }
        }
    }

    public interface AuthenticationRefreshProvider {
        boolean launchAuthUi(String str, BoxSession boxSession);

        BoxAuthenticationInfo refreshAuthenticationInfo(BoxAuthenticationInfo boxAuthenticationInfo);
    }

    public static class BoxAuthenticationInfo extends BoxJsonObject {
        public static final String FIELD_ACCESS_TOKEN = "access_token";
        public static final String FIELD_BASE_DOMAIN = "base_domain";
        public static final String FIELD_CLIENT_ID = "client_id";
        public static final String FIELD_EXPIRES_IN = "expires_in";
        private static final String FIELD_REFRESH_TIME = "refresh_time";
        public static final String FIELD_REFRESH_TOKEN = "refresh_token";
        public static final String FIELD_USER = "user";
        private static final long serialVersionUID = 2878150977399126399L;

        public BoxAuthenticationInfo() {
        }

        public BoxAuthenticationInfo(JsonObject jsonObject) {
            super(jsonObject);
        }

        public static void cloneInfo(BoxAuthenticationInfo boxAuthenticationInfo, BoxAuthenticationInfo boxAuthenticationInfo2) {
            boxAuthenticationInfo.createFromJson(boxAuthenticationInfo2.toJsonObject());
        }

        public String accessToken() {
            return getPropertyAsString(FIELD_ACCESS_TOKEN);
        }

        public BoxAuthenticationInfo clone() {
            BoxAuthenticationInfo boxAuthenticationInfo = new BoxAuthenticationInfo();
            cloneInfo(boxAuthenticationInfo, this);
            return boxAuthenticationInfo;
        }

        public Long expiresIn() {
            return getPropertyAsLong(FIELD_EXPIRES_IN);
        }

        @Deprecated
        public String getBaseDomain() {
            return getPropertyAsString(FIELD_BASE_DOMAIN);
        }

        public String getClientId() {
            return getPropertyAsString("client_id");
        }

        public Long getRefreshTime() {
            return getPropertyAsLong(FIELD_REFRESH_TIME);
        }

        public BoxUser getUser() {
            return (BoxUser) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "user");
        }

        public String refreshToken() {
            return getPropertyAsString(FIELD_REFRESH_TOKEN);
        }

        public void setAccessToken(String str) {
            set(FIELD_ACCESS_TOKEN, str);
        }

        @Deprecated
        public void setBaseDomain(String str) {
            set(FIELD_BASE_DOMAIN, str);
        }

        public void setClientId(String str) {
            set("client_id", str);
        }

        public void setExpiresIn(Long l) {
            set(FIELD_EXPIRES_IN, l);
        }

        public void setRefreshTime(Long l) {
            set(FIELD_REFRESH_TIME, l);
        }

        public void setRefreshToken(String str) {
            set(FIELD_REFRESH_TOKEN, str);
        }

        public void setUser(BoxUser boxUser) {
            set("user", (BoxJsonObject) boxUser);
        }

        public void wipeOutAuth() {
            remove("user");
            remove("client_id");
            remove(FIELD_ACCESS_TOKEN);
            remove(FIELD_REFRESH_TOKEN);
        }
    }

    private BoxAuthentication() {
    }

    private BoxAuthentication(AuthenticationRefreshProvider authenticationRefreshProvider) {
        this.mRefreshProvider = authenticationRefreshProvider;
    }

    private FutureTask<BoxAuthenticationInfo> doCreate(final BoxSession boxSession, final String str) {
        return new FutureTask<>(new Callable<BoxAuthenticationInfo>() {
            public BoxAuthenticationInfo call() {
                BoxApiAuthentication.BoxCreateAuthRequest createOAuth = new BoxApiAuthentication(boxSession).createOAuth(str, boxSession.getClientId(), boxSession.getClientSecret());
                BoxAuthenticationInfo boxAuthenticationInfo = new BoxAuthenticationInfo();
                BoxAuthenticationInfo.cloneInfo(boxAuthenticationInfo, boxSession.getAuthInfo());
                BoxAuthenticationInfo boxAuthenticationInfo2 = (BoxAuthenticationInfo) createOAuth.send();
                boxAuthenticationInfo.setAccessToken(boxAuthenticationInfo2.accessToken());
                boxAuthenticationInfo.setRefreshToken(boxAuthenticationInfo2.refreshToken());
                boxAuthenticationInfo.setExpiresIn(boxAuthenticationInfo2.expiresIn());
                boxAuthenticationInfo.setRefreshTime(Long.valueOf(System.currentTimeMillis()));
                boxAuthenticationInfo.setUser((BoxUser) new BoxApiUser(new BoxSession(boxSession.getApplicationContext(), boxAuthenticationInfo, null)).getCurrentUserInfoRequest().send());
                BoxAuthentication.getInstance().onAuthenticated(boxAuthenticationInfo, boxSession.getApplicationContext());
                return boxAuthenticationInfo;
            }
        });
    }

    private FutureTask<BoxAuthenticationInfo> doRefresh(BoxSession boxSession, BoxAuthenticationInfo boxAuthenticationInfo) {
        final boolean z = boxAuthenticationInfo.getUser() == null && boxSession.getUser() == null;
        final String userId = (!SdkUtils.isBlank(boxSession.getUserId()) || !z) ? boxSession.getUserId() : boxAuthenticationInfo.accessToken();
        final String id = boxAuthenticationInfo.getUser() != null ? boxAuthenticationInfo.getUser().getId() : boxSession.getUserId();
        final BoxSession boxSession2 = boxSession;
        final BoxAuthenticationInfo boxAuthenticationInfo2 = boxAuthenticationInfo;
        FutureTask<BoxAuthenticationInfo> futureTask = new FutureTask<>(new Callable<BoxAuthenticationInfo>() {
            public BoxAuthenticationInfo call() {
                BoxAuthenticationInfo boxAuthenticationInfo;
                if (boxSession2.getRefreshProvider() != null) {
                    try {
                        boxAuthenticationInfo = boxSession2.getRefreshProvider().refreshAuthenticationInfo(boxAuthenticationInfo2);
                    } catch (BoxException e) {
                        BoxAuthentication.this.mRefreshingTasks.remove(userId);
                        throw BoxAuthentication.this.handleRefreshException(boxSession2, e, boxAuthenticationInfo2, id);
                    }
                } else if (BoxAuthentication.this.mRefreshProvider != null) {
                    try {
                        boxAuthenticationInfo = BoxAuthentication.this.mRefreshProvider.refreshAuthenticationInfo(boxAuthenticationInfo2);
                    } catch (BoxException e2) {
                        BoxAuthentication.this.mRefreshingTasks.remove(userId);
                        throw BoxAuthentication.this.handleRefreshException(boxSession2, e2, boxAuthenticationInfo2, id);
                    }
                } else {
                    String refreshToken = boxAuthenticationInfo2.refreshToken() != null ? boxAuthenticationInfo2.refreshToken() : "";
                    String clientId = boxSession2.getClientId() != null ? boxSession2.getClientId() : BoxConfig.CLIENT_ID;
                    String clientSecret = boxSession2.getClientSecret() != null ? boxSession2.getClientSecret() : BoxConfig.CLIENT_SECRET;
                    if (SdkUtils.isBlank(clientId) || SdkUtils.isBlank(clientSecret)) {
                        throw BoxAuthentication.this.handleRefreshException(boxSession2, new BoxException("client id or secret not specified", HttpStatus.SC_BAD_REQUEST, "{\"error\": \"bad_request\",\n  \"error_description\": \"client id or secret not specified\"}", (Throwable) null), boxAuthenticationInfo2, id);
                    }
                    try {
                        boxAuthenticationInfo = (BoxAuthenticationInfo) new BoxApiAuthentication(boxSession2).refreshOAuth(refreshToken, clientId, clientSecret).send();
                    } catch (BoxException e3) {
                        BoxAuthentication.this.mRefreshingTasks.remove(userId);
                        throw BoxAuthentication.this.handleRefreshException(boxSession2, e3, boxAuthenticationInfo2, id);
                    }
                }
                if (boxAuthenticationInfo != null) {
                    boxAuthenticationInfo.setRefreshTime(Long.valueOf(System.currentTimeMillis()));
                }
                BoxAuthenticationInfo.cloneInfo(boxSession2.getAuthInfo(), boxAuthenticationInfo);
                if (!(!z && boxSession2.getRefreshProvider() == null && BoxAuthentication.this.mRefreshProvider == null)) {
                    boxAuthenticationInfo2.setUser((BoxUser) new BoxApiUser(boxSession2).getCurrentUserInfoRequest().send());
                }
                BoxAuthentication.this.getAuthInfoMap(boxSession2.getApplicationContext()).put(boxAuthenticationInfo2.getUser().getId(), boxAuthenticationInfo);
                BoxAuthentication.this.getAuthStorage().storeAuthInfoMap(BoxAuthentication.this.mCurrentAccessInfo, boxSession2.getApplicationContext());
                Iterator it = BoxAuthentication.this.mListeners.iterator();
                while (it.hasNext()) {
                    AuthListener authListener = (AuthListener) ((WeakReference) it.next()).get();
                    if (authListener != null) {
                        authListener.onRefreshed(boxAuthenticationInfo);
                    }
                }
                if (!boxSession2.getUserId().equals(boxAuthenticationInfo2.getUser().getId())) {
                    boxSession2.onAuthFailure(boxAuthenticationInfo2, new BoxException("Session User Id has changed!"));
                }
                BoxAuthentication.this.mRefreshingTasks.remove(userId);
                return boxAuthenticationInfo2;
            }
        });
        this.mRefreshingTasks.put(userId, futureTask);
        AUTH_EXECUTOR.execute(futureTask);
        return futureTask;
    }

    private BoxFutureTask<BoxUser> doUserRefresh(final Context context, final BoxAuthenticationInfo boxAuthenticationInfo) {
        BoxFutureTask<BoxUser> task = new BoxApiUser(new BoxSession(context, boxAuthenticationInfo.accessToken(), null)).getCurrentUserInfoRequest().toTask();
        task.addOnCompletedListener(new BoxFutureTask.OnCompletedListener<BoxUser>() {
            public void onCompleted(BoxResponse<BoxUser> boxResponse) {
                if (boxResponse.isSuccess()) {
                    boxAuthenticationInfo.setUser(boxResponse.getResult());
                    BoxAuthentication.getInstance().onAuthenticated(boxAuthenticationInfo, context);
                    return;
                }
                BoxAuthentication.getInstance().onAuthenticationFailure(boxAuthenticationInfo, boxResponse.getException());
            }
        });
        AUTH_EXECUTOR.execute(task);
        return task;
    }

    /* access modifiers changed from: private */
    public ConcurrentHashMap<String, BoxAuthenticationInfo> getAuthInfoMap(Context context) {
        if (this.mCurrentAccessInfo == null) {
            this.mCurrentAccessInfo = this.authStorage.loadAuthInfoMap(context);
            BoxLogUtils.d("getAuthInfoMap loaded ", "from " + this.authStorage + " size " + (this.mCurrentAccessInfo == null ? -1 : this.mCurrentAccessInfo.size()));
        }
        return this.mCurrentAccessInfo;
    }

    public static BoxAuthentication getInstance() {
        return mAuthentication;
    }

    /* access modifiers changed from: private */
    public BoxException.RefreshFailure handleRefreshException(BoxSession boxSession, BoxException boxException, BoxAuthenticationInfo boxAuthenticationInfo, String str) {
        BoxException.RefreshFailure refreshFailure = new BoxException.RefreshFailure(boxException);
        if (refreshFailure.isErrorFatal() || refreshFailure.getErrorType() == BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED) {
            if (str != null && str.equals(getAuthStorage().getLastAuthentictedUserId(boxSession.getApplicationContext()))) {
                getAuthStorage().storeLastAuthenticatedUserId((String) null, boxSession.getApplicationContext());
            }
            getAuthInfoMap(boxSession.getApplicationContext()).remove(str);
            getAuthStorage().storeAuthInfoMap(this.mCurrentAccessInfo, boxSession.getApplicationContext());
        }
        getInstance().onAuthenticationFailure(boxAuthenticationInfo, refreshFailure);
        return refreshFailure;
    }

    public static boolean isBoxAuthAppAvailable(Context context) {
        return context.getPackageManager().queryIntentActivities(new Intent(BoxConstants.REQUEST_BOX_APP_FOR_AUTH_INTENT_ACTION), 65600).size() > 0;
    }

    public synchronized void addListener(AuthListener authListener) {
        if (!getListeners().contains(authListener)) {
            this.mListeners.add(new WeakReference(authListener));
        }
    }

    public synchronized FutureTask<BoxAuthenticationInfo> create(BoxSession boxSession, String str) {
        FutureTask<BoxAuthenticationInfo> doCreate;
        doCreate = doCreate(boxSession, str);
        AUTH_EXECUTOR.submit(doCreate);
        return doCreate;
    }

    public BoxAuthenticationInfo getAuthInfo(String str, Context context) {
        if (str == null) {
            return null;
        }
        return getAuthInfoMap(context).get(str);
    }

    public AuthStorage getAuthStorage() {
        return this.authStorage;
    }

    public String getLastAuthenticatedUserId(Context context) {
        return this.authStorage.getLastAuthentictedUserId(context);
    }

    public Set<AuthListener> getListeners() {
        LinkedHashSet<AuthListener> linkedHashSet = new LinkedHashSet<>();
        Iterator<WeakReference<AuthListener>> it = this.mListeners.iterator();
        while (it.hasNext()) {
            AuthListener authListener = (AuthListener) it.next().get();
            if (authListener != null) {
                linkedHashSet.add(authListener);
            }
        }
        if (this.mListeners.size() > linkedHashSet.size()) {
            this.mListeners = new ConcurrentLinkedQueue<>();
            for (AuthListener weakReference : linkedHashSet) {
                this.mListeners.add(new WeakReference(weakReference));
            }
        }
        return linkedHashSet;
    }

    public AuthenticationRefreshProvider getRefreshProvider() {
        return this.mRefreshProvider;
    }

    public Map<String, BoxAuthenticationInfo> getStoredAuthInfo(Context context) {
        return getAuthInfoMap(context);
    }

    public synchronized void logout(BoxSession boxSession) {
        Exception e = null;
        synchronized (this) {
            BoxUser user = boxSession.getUser();
            if (user != null) {
                boxSession.clearCache();
                Context applicationContext = boxSession.getApplicationContext();
                String id = user.getId();
                getAuthInfoMap(boxSession.getApplicationContext());
                BoxAuthenticationInfo boxAuthenticationInfo = this.mCurrentAccessInfo.get(id);
                try {
                    new BoxApiAuthentication(boxSession).revokeOAuth(boxAuthenticationInfo.refreshToken(), boxSession.getClientId(), boxSession.getClientSecret()).send();
                } catch (Exception e2) {
                    e = e2;
                    BoxLogUtils.e(TAG, "logout", e);
                }
                this.mCurrentAccessInfo.remove(id);
                if (this.authStorage.getLastAuthentictedUserId(applicationContext) != null && id.equals(id)) {
                    this.authStorage.storeLastAuthenticatedUserId((String) null, applicationContext);
                }
                this.authStorage.storeAuthInfoMap(this.mCurrentAccessInfo, applicationContext);
                onLoggedOut(boxAuthenticationInfo, e);
            }
        }
        return;
    }

    public synchronized void logoutAllUsers(Context context) {
        getAuthInfoMap(context);
        for (String boxSession : this.mCurrentAccessInfo.keySet()) {
            logout(new BoxSession(context, boxSession));
        }
        this.authStorage.clearAuthInfoMap(context);
    }

    public void onAuthenticated(BoxAuthenticationInfo boxAuthenticationInfo, Context context) {
        if (SdkUtils.isBlank(boxAuthenticationInfo.accessToken()) || (boxAuthenticationInfo.getUser() != null && !SdkUtils.isBlank(boxAuthenticationInfo.getUser().getId()))) {
            getAuthInfoMap(context).put(boxAuthenticationInfo.getUser().getId(), boxAuthenticationInfo.clone());
            this.authStorage.storeLastAuthenticatedUserId(boxAuthenticationInfo.getUser().getId(), context);
            this.authStorage.storeAuthInfoMap(this.mCurrentAccessInfo, context);
            for (AuthListener onAuthCreated : getListeners()) {
                onAuthCreated.onAuthCreated(boxAuthenticationInfo);
            }
            return;
        }
        doUserRefresh(context, boxAuthenticationInfo);
    }

    public void onAuthenticationFailure(BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        String str = "failure:";
        if (getAuthStorage() != null) {
            str = str + "auth storage :" + getAuthStorage().toString();
        }
        if (boxAuthenticationInfo != null) {
            str = str + (boxAuthenticationInfo.getUser() == null ? "null user" : boxAuthenticationInfo.getUser().getId() == null ? "null user id" : Integer.valueOf(boxAuthenticationInfo.getUser().getId().length()));
        }
        BoxLogUtils.nonFatalE("BoxAuthfail", str, exc);
        for (AuthListener onAuthFailure : getListeners()) {
            onAuthFailure.onAuthFailure(boxAuthenticationInfo, exc);
        }
    }

    public void onLoggedOut(BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        for (AuthListener onLoggedOut : getListeners()) {
            onLoggedOut.onLoggedOut(boxAuthenticationInfo, exc);
        }
    }

    public synchronized FutureTask<BoxAuthenticationInfo> refresh(BoxSession boxSession) {
        final BoxAuthenticationInfo boxAuthenticationInfo;
        FutureTask<BoxAuthenticationInfo> futureTask;
        BoxUser user = boxSession.getUser();
        if (user == null) {
            futureTask = doRefresh(boxSession, boxSession.getAuthInfo());
        } else {
            getAuthInfoMap(boxSession.getApplicationContext());
            BoxAuthenticationInfo boxAuthenticationInfo2 = this.mCurrentAccessInfo.get(user.getId());
            if (boxAuthenticationInfo2 == null) {
                this.mCurrentAccessInfo.put(user.getId(), boxSession.getAuthInfo());
                boxAuthenticationInfo = this.mCurrentAccessInfo.get(user.getId());
            } else {
                boxAuthenticationInfo = boxAuthenticationInfo2;
            }
            if (boxSession.getAuthInfo().accessToken() == null || (!boxSession.getAuthInfo().accessToken().equals(boxAuthenticationInfo.accessToken()) && boxAuthenticationInfo.getRefreshTime() != null && System.currentTimeMillis() - boxAuthenticationInfo.getRefreshTime().longValue() < 15000)) {
                BoxAuthenticationInfo.cloneInfo(boxSession.getAuthInfo(), boxAuthenticationInfo);
                futureTask = new FutureTask<>(new Callable<BoxAuthenticationInfo>() {
                    public BoxAuthenticationInfo call() {
                        return boxAuthenticationInfo;
                    }
                });
                AUTH_EXECUTOR.execute(futureTask);
            } else {
                futureTask = this.mRefreshingTasks.get(user.getId());
                if (futureTask == null || futureTask.isCancelled() || futureTask.isDone()) {
                    futureTask = doRefresh(boxSession, boxAuthenticationInfo);
                }
            }
        }
        return futureTask;
    }

    public void setAuthStorage(AuthStorage authStorage2) {
        this.authStorage = authStorage2;
    }

    public void setRefreshProvider(AuthenticationRefreshProvider authenticationRefreshProvider) {
        this.mRefreshProvider = authenticationRefreshProvider;
    }

    /* access modifiers changed from: protected */
    public synchronized void startAuthenticateUI(BoxSession boxSession) {
        Context applicationContext = boxSession.getApplicationContext();
        Intent createOAuthActivityIntent = OAuthActivity.createOAuthActivityIntent(applicationContext, boxSession, isBoxAuthAppAvailable(applicationContext) && boxSession.isEnabledBoxAppAuthentication());
        createOAuthActivityIntent.addFlags(268435456);
        applicationContext.startActivity(createOAuthActivityIntent);
    }

    public synchronized void startAuthenticationUI(BoxSession boxSession) {
        startAuthenticateUI(boxSession);
    }
}
