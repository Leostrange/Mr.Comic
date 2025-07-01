// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
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
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxApiAuthentication, OAuthActivity

public class BoxAuthentication
{
    public static interface AuthListener
    {

        public abstract void onAuthCreated(BoxAuthenticationInfo boxauthenticationinfo);

        public abstract void onAuthFailure(BoxAuthenticationInfo boxauthenticationinfo, Exception exception);

        public abstract void onLoggedOut(BoxAuthenticationInfo boxauthenticationinfo, Exception exception);

        public abstract void onRefreshed(BoxAuthenticationInfo boxauthenticationinfo);
    }

    public static class AuthStorage
    {

        private static final String AUTH_MAP_STORAGE_KEY = (new StringBuilder()).append(com/box/androidsdk/content/auth/BoxAuthentication$AuthStorage.getCanonicalName()).append("_authInfoMap").toString();
        private static final String AUTH_STORAGE_LAST_AUTH_USER_ID_KEY = (new StringBuilder()).append(com/box/androidsdk/content/auth/BoxAuthentication$AuthStorage.getCanonicalName()).append("_lastAuthUserId").toString();
        private static final String AUTH_STORAGE_NAME = (new StringBuilder()).append(com/box/androidsdk/content/auth/BoxAuthentication$AuthStorage.getCanonicalName()).append("_SharedPref").toString();

        protected void clearAuthInfoMap(Context context)
        {
            context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().remove(AUTH_MAP_STORAGE_KEY).commit();
        }

        protected String getLastAuthentictedUserId(Context context)
        {
            return context.getSharedPreferences(AUTH_STORAGE_NAME, 0).getString(AUTH_STORAGE_LAST_AUTH_USER_ID_KEY, null);
        }

        protected ConcurrentHashMap loadAuthInfoMap(Context context)
        {
            ConcurrentHashMap concurrenthashmap = new ConcurrentHashMap();
            context = context.getSharedPreferences(AUTH_STORAGE_NAME, 0).getString(AUTH_MAP_STORAGE_KEY, "");
            if (context.length() > 0)
            {
                BoxEntity boxentity = new BoxEntity();
                boxentity.createFromJson(context);
                Iterator iterator = boxentity.getPropertiesKeySet().iterator();
                while (iterator.hasNext()) 
                {
                    String s = (String)iterator.next();
                    JsonValue jsonvalue = boxentity.getPropertyValue(s);
                    context = null;
                    if (jsonvalue.isString())
                    {
                        context = new BoxAuthenticationInfo();
                        context.createFromJson(jsonvalue.asString());
                    } else
                    if (jsonvalue.isObject())
                    {
                        context = new BoxAuthenticationInfo();
                        context.createFromJson(jsonvalue.asObject());
                    }
                    concurrenthashmap.put(s, context);
                }
            }
            return concurrenthashmap;
        }

        protected void storeAuthInfoMap(Map map, Context context)
        {
            JsonObject jsonobject = new JsonObject();
            java.util.Map.Entry entry;
            for (map = map.entrySet().iterator(); map.hasNext(); jsonobject.add((String)entry.getKey(), ((BoxAuthenticationInfo)entry.getValue()).toJsonObject()))
            {
                entry = (java.util.Map.Entry)map.next();
            }

            map = new BoxEntity(jsonobject);
            context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().putString(AUTH_MAP_STORAGE_KEY, map.toJson()).commit();
        }

        protected void storeLastAuthenticatedUserId(String s, Context context)
        {
            if (SdkUtils.isEmptyString(s))
            {
                context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().remove(AUTH_STORAGE_LAST_AUTH_USER_ID_KEY).commit();
                return;
            } else
            {
                context.getSharedPreferences(AUTH_STORAGE_NAME, 0).edit().putString(AUTH_STORAGE_LAST_AUTH_USER_ID_KEY, s).commit();
                return;
            }
        }


        public AuthStorage()
        {
        }
    }

    public static interface AuthenticationRefreshProvider
    {

        public abstract boolean launchAuthUi(String s, BoxSession boxsession);

        public abstract BoxAuthenticationInfo refreshAuthenticationInfo(BoxAuthenticationInfo boxauthenticationinfo);
    }

    public static class BoxAuthenticationInfo extends BoxJsonObject
    {

        public static final String FIELD_ACCESS_TOKEN = "access_token";
        public static final String FIELD_BASE_DOMAIN = "base_domain";
        public static final String FIELD_CLIENT_ID = "client_id";
        public static final String FIELD_EXPIRES_IN = "expires_in";
        private static final String FIELD_REFRESH_TIME = "refresh_time";
        public static final String FIELD_REFRESH_TOKEN = "refresh_token";
        public static final String FIELD_USER = "user";
        private static final long serialVersionUID = 0x27f13f1099d1797fL;

        public static void cloneInfo(BoxAuthenticationInfo boxauthenticationinfo, BoxAuthenticationInfo boxauthenticationinfo1)
        {
            boxauthenticationinfo.createFromJson(boxauthenticationinfo1.toJsonObject());
        }

        public String accessToken()
        {
            return getPropertyAsString("access_token");
        }

        public BoxAuthenticationInfo clone()
        {
            BoxAuthenticationInfo boxauthenticationinfo = new BoxAuthenticationInfo();
            cloneInfo(boxauthenticationinfo, this);
            return boxauthenticationinfo;
        }

        public volatile Object clone()
        {
            return clone();
        }

        public Long expiresIn()
        {
            return getPropertyAsLong("expires_in");
        }

        public String getBaseDomain()
        {
            return getPropertyAsString("base_domain");
        }

        public String getClientId()
        {
            return getPropertyAsString("client_id");
        }

        public Long getRefreshTime()
        {
            return getPropertyAsLong("refresh_time");
        }

        public BoxUser getUser()
        {
            return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "user");
        }

        public String refreshToken()
        {
            return getPropertyAsString("refresh_token");
        }

        public void setAccessToken(String s)
        {
            set("access_token", s);
        }

        public void setBaseDomain(String s)
        {
            set("base_domain", s);
        }

        public void setClientId(String s)
        {
            set("client_id", s);
        }

        public void setExpiresIn(Long long1)
        {
            set("expires_in", long1);
        }

        public void setRefreshTime(Long long1)
        {
            set("refresh_time", long1);
        }

        public void setRefreshToken(String s)
        {
            set("refresh_token", s);
        }

        public void setUser(BoxUser boxuser)
        {
            set("user", boxuser);
        }

        public void wipeOutAuth()
        {
            remove("user");
            remove("client_id");
            remove("access_token");
            remove("refresh_token");
        }

        public BoxAuthenticationInfo()
        {
        }

        public BoxAuthenticationInfo(JsonObject jsonobject)
        {
            super(jsonobject);
        }
    }


    public static final ThreadPoolExecutor AUTH_EXECUTOR;
    private static String TAG = com/box/androidsdk/content/auth/BoxAuthentication.getName();
    private static BoxAuthentication mAuthentication = new BoxAuthentication();
    private int EXPIRATION_GRACE;
    private AuthStorage authStorage;
    private ConcurrentHashMap mCurrentAccessInfo;
    private ConcurrentLinkedQueue mListeners;
    private AuthenticationRefreshProvider mRefreshProvider;
    private ConcurrentHashMap mRefreshingTasks;

    private BoxAuthentication()
    {
        mListeners = new ConcurrentLinkedQueue();
        mRefreshingTasks = new ConcurrentHashMap();
        EXPIRATION_GRACE = 1000;
        authStorage = new AuthStorage();
    }

    private BoxAuthentication(AuthenticationRefreshProvider authenticationrefreshprovider)
    {
        mListeners = new ConcurrentLinkedQueue();
        mRefreshingTasks = new ConcurrentHashMap();
        EXPIRATION_GRACE = 1000;
        authStorage = new AuthStorage();
        mRefreshProvider = authenticationrefreshprovider;
    }

    private FutureTask doCreate(final BoxSession session, final String code)
    {
        return new FutureTask(new Callable() {

            final BoxAuthentication this$0;
            final String val$code;
            final BoxSession val$session;

            public BoxAuthenticationInfo call()
            {
                Object obj = (new BoxApiAuthentication(session)).createOAuth(code, session.getClientId(), session.getClientSecret());
                BoxAuthenticationInfo boxauthenticationinfo = new BoxAuthenticationInfo();
                BoxAuthenticationInfo.cloneInfo(boxauthenticationinfo, session.getAuthInfo());
                obj = (BoxAuthenticationInfo)((BoxApiAuthentication.BoxCreateAuthRequest) (obj)).send();
                boxauthenticationinfo.setAccessToken(((BoxAuthenticationInfo) (obj)).accessToken());
                boxauthenticationinfo.setRefreshToken(((BoxAuthenticationInfo) (obj)).refreshToken());
                boxauthenticationinfo.setExpiresIn(((BoxAuthenticationInfo) (obj)).expiresIn());
                boxauthenticationinfo.setRefreshTime(Long.valueOf(System.currentTimeMillis()));
                boxauthenticationinfo.setUser((BoxUser)(new BoxApiUser(new BoxSession(session.getApplicationContext(), boxauthenticationinfo, null))).getCurrentUserInfoRequest().send());
                BoxAuthentication.getInstance().onAuthenticated(boxauthenticationinfo, session.getApplicationContext());
                return boxauthenticationinfo;
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                this$0 = BoxAuthentication.this;
                session = boxsession;
                code = s;
                super();
            }
        });
    }

    private FutureTask doRefresh(final BoxSession session, final BoxAuthenticationInfo info)
    {
        final String taskKey;
        final String userId;
        final boolean userUnknown;
        if (info.getUser() == null && session.getUser() == null)
        {
            userUnknown = true;
        } else
        {
            userUnknown = false;
        }
        if (SdkUtils.isBlank(session.getUserId()) && userUnknown)
        {
            taskKey = info.accessToken();
        } else
        {
            taskKey = session.getUserId();
        }
        if (info.getUser() != null)
        {
            userId = info.getUser().getId();
        } else
        {
            userId = session.getUserId();
        }
        session = new FutureTask(new Callable() {

            final BoxAuthentication this$0;
            final BoxAuthenticationInfo val$info;
            final BoxSession val$session;
            final String val$taskKey;
            final String val$userId;
            final boolean val$userUnknown;

            public BoxAuthenticationInfo call()
            {
                Object obj;
                Iterator iterator;
                if (session.getRefreshProvider() != null)
                {
                    try
                    {
                        obj = session.getRefreshProvider().refreshAuthenticationInfo(info);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        mRefreshingTasks.remove(taskKey);
                        throw handleRefreshException(session, ((BoxException) (obj)), info, userId);
                    }
                } else
                if (mRefreshProvider != null)
                {
                    try
                    {
                        obj = mRefreshProvider.refreshAuthenticationInfo(info);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        mRefreshingTasks.remove(taskKey);
                        throw handleRefreshException(session, ((BoxException) (obj)), info, userId);
                    }
                } else
                {
                    String s;
                    String s1;
                    if (info.refreshToken() != null)
                    {
                        obj = info.refreshToken();
                    } else
                    {
                        obj = "";
                    }
                    if (session.getClientId() != null)
                    {
                        s = session.getClientId();
                    } else
                    {
                        s = BoxConfig.CLIENT_ID;
                    }
                    if (session.getClientSecret() != null)
                    {
                        s1 = session.getClientSecret();
                    } else
                    {
                        s1 = BoxConfig.CLIENT_SECRET;
                    }
                    if (SdkUtils.isBlank(s) || SdkUtils.isBlank(s1))
                    {
                        obj = new BoxException("client id or secret not specified", 400, "{\"error\": \"bad_request\",\n  \"error_description\": \"client id or secret not specified\"}", null);
                        throw handleRefreshException(session, ((BoxException) (obj)), info, userId);
                    }
                    obj = (new BoxApiAuthentication(session)).refreshOAuth(((String) (obj)), s, s1);
                    try
                    {
                        obj = (BoxAuthenticationInfo)((BoxApiAuthentication.BoxRefreshAuthRequest) (obj)).send();
                    }
                    catch (BoxException boxexception)
                    {
                        mRefreshingTasks.remove(taskKey);
                        throw handleRefreshException(session, boxexception, info, userId);
                    }
                }
                if (obj != null)
                {
                    ((BoxAuthenticationInfo) (obj)).setRefreshTime(Long.valueOf(System.currentTimeMillis()));
                }
                BoxAuthenticationInfo.cloneInfo(session.getAuthInfo(), ((BoxAuthenticationInfo) (obj)));
                if (userUnknown || session.getRefreshProvider() != null || mRefreshProvider != null)
                {
                    BoxApiUser boxapiuser = new BoxApiUser(session);
                    info.setUser((BoxUser)boxapiuser.getCurrentUserInfoRequest().send());
                }
                getAuthInfoMap(session.getApplicationContext()).put(info.getUser().getId(), obj);
                getAuthStorage().storeAuthInfoMap(mCurrentAccessInfo, session.getApplicationContext());
                iterator = mListeners.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    AuthListener authlistener = (AuthListener)((WeakReference)iterator.next()).get();
                    if (authlistener != null)
                    {
                        authlistener.onRefreshed(((BoxAuthenticationInfo) (obj)));
                    }
                } while (true);
                if (!session.getUserId().equals(info.getUser().getId()))
                {
                    session.onAuthFailure(info, new BoxException("Session User Id has changed!"));
                }
                mRefreshingTasks.remove(taskKey);
                return info;
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                this$0 = BoxAuthentication.this;
                session = boxsession;
                info = boxauthenticationinfo;
                taskKey = s;
                userId = s1;
                userUnknown = flag;
                super();
            }
        });
        mRefreshingTasks.put(taskKey, session);
        AUTH_EXECUTOR.execute(session);
        return session;
    }

    private BoxFutureTask doUserRefresh(final Context context, final BoxAuthenticationInfo info)
    {
        BoxFutureTask boxfuturetask = (new BoxApiUser(new BoxSession(context, info.accessToken(), null))).getCurrentUserInfoRequest().toTask();
        boxfuturetask.addOnCompletedListener(new com.box.androidsdk.content.BoxFutureTask.OnCompletedListener() {

            final BoxAuthentication this$0;
            final Context val$context;
            final BoxAuthenticationInfo val$info;

            public void onCompleted(BoxResponse boxresponse)
            {
                if (boxresponse.isSuccess())
                {
                    info.setUser((BoxUser)boxresponse.getResult());
                    BoxAuthentication.getInstance().onAuthenticated(info, context);
                    return;
                } else
                {
                    BoxAuthentication.getInstance().onAuthenticationFailure(info, boxresponse.getException());
                    return;
                }
            }

            
            {
                this$0 = BoxAuthentication.this;
                info = boxauthenticationinfo;
                context = context1;
                super();
            }
        });
        AUTH_EXECUTOR.execute(boxfuturetask);
        return boxfuturetask;
    }

    private ConcurrentHashMap getAuthInfoMap(Context context)
    {
        if (mCurrentAccessInfo == null)
        {
            mCurrentAccessInfo = authStorage.loadAuthInfoMap(context);
            int i;
            if (mCurrentAccessInfo == null)
            {
                i = -1;
            } else
            {
                i = mCurrentAccessInfo.size();
            }
            BoxLogUtils.d("getAuthInfoMap loaded ", (new StringBuilder("from ")).append(authStorage).append(" size ").append(i).toString());
        }
        return mCurrentAccessInfo;
    }

    public static BoxAuthentication getInstance()
    {
        return mAuthentication;
    }

    private com.box.androidsdk.content.BoxException.RefreshFailure handleRefreshException(BoxSession boxsession, BoxException boxexception, BoxAuthenticationInfo boxauthenticationinfo, String s)
    {
        boxexception = new com.box.androidsdk.content.BoxException.RefreshFailure(boxexception);
        if (boxexception.isErrorFatal() || boxexception.getErrorType() == com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED)
        {
            if (s != null && s.equals(getAuthStorage().getLastAuthentictedUserId(boxsession.getApplicationContext())))
            {
                getAuthStorage().storeLastAuthenticatedUserId(null, boxsession.getApplicationContext());
            }
            getAuthInfoMap(boxsession.getApplicationContext()).remove(s);
            getAuthStorage().storeAuthInfoMap(mCurrentAccessInfo, boxsession.getApplicationContext());
        }
        getInstance().onAuthenticationFailure(boxauthenticationinfo, boxexception);
        return boxexception;
    }

    public static boolean isBoxAuthAppAvailable(Context context)
    {
        Intent intent = new Intent("com.box.android.action.AUTHENTICATE_VIA_BOX_APP");
        return context.getPackageManager().queryIntentActivities(intent, 0x10040).size() > 0;
    }

    public void addListener(AuthListener authlistener)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = getListeners().contains(authlistener);
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        mListeners.add(new WeakReference(authlistener));
        if (true) goto _L1; else goto _L3
_L3:
        authlistener;
        throw authlistener;
    }

    public FutureTask create(BoxSession boxsession, String s)
    {
        this;
        JVM INSTR monitorenter ;
        boxsession = doCreate(boxsession, s);
        AUTH_EXECUTOR.submit(boxsession);
        this;
        JVM INSTR monitorexit ;
        return boxsession;
        boxsession;
        throw boxsession;
    }

    public BoxAuthenticationInfo getAuthInfo(String s, Context context)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return (BoxAuthenticationInfo)getAuthInfoMap(context).get(s);
        }
    }

    public AuthStorage getAuthStorage()
    {
        return authStorage;
    }

    public String getLastAuthenticatedUserId(Context context)
    {
        return authStorage.getLastAuthentictedUserId(context);
    }

    public Set getListeners()
    {
        LinkedHashSet linkedhashset = new LinkedHashSet();
        Iterator iterator = mListeners.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AuthListener authlistener = (AuthListener)((WeakReference)iterator.next()).get();
            if (authlistener != null)
            {
                linkedhashset.add(authlistener);
            }
        } while (true);
        if (mListeners.size() > linkedhashset.size())
        {
            mListeners = new ConcurrentLinkedQueue();
            AuthListener authlistener1;
            for (Iterator iterator1 = linkedhashset.iterator(); iterator1.hasNext(); mListeners.add(new WeakReference(authlistener1)))
            {
                authlistener1 = (AuthListener)iterator1.next();
            }

        }
        return linkedhashset;
    }

    public AuthenticationRefreshProvider getRefreshProvider()
    {
        return mRefreshProvider;
    }

    public Map getStoredAuthInfo(Context context)
    {
        return getAuthInfoMap(context);
    }

    public void logout(BoxSession boxsession)
    {
        Object obj = null;
        this;
        JVM INSTR monitorenter ;
        Object obj1 = boxsession.getUser();
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Context context;
        BoxAuthenticationInfo boxauthenticationinfo;
        boxsession.clearCache();
        context = boxsession.getApplicationContext();
        obj1 = ((BoxUser) (obj1)).getId();
        getAuthInfoMap(boxsession.getApplicationContext());
        boxauthenticationinfo = (BoxAuthenticationInfo)mCurrentAccessInfo.get(obj1);
        (new BoxApiAuthentication(boxsession)).revokeOAuth(boxauthenticationinfo.refreshToken(), boxsession.getClientId(), boxsession.getClientSecret()).send();
        boxsession = obj;
_L4:
        mCurrentAccessInfo.remove(obj1);
        if (authStorage.getLastAuthentictedUserId(context) != null && ((String) (obj1)).equals(obj1))
        {
            authStorage.storeLastAuthenticatedUserId(null, context);
        }
        authStorage.storeAuthInfoMap(mCurrentAccessInfo, context);
        onLoggedOut(boxauthenticationinfo, boxsession);
        if (true) goto _L1; else goto _L3
_L3:
        boxsession;
        throw boxsession;
        boxsession;
        BoxLogUtils.e(TAG, "logout", boxsession);
          goto _L4
    }

    public void logoutAllUsers(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        getAuthInfoMap(context);
        for (Iterator iterator = mCurrentAccessInfo.keySet().iterator(); iterator.hasNext(); logout(new BoxSession(context, (String)iterator.next()))) { }
        break MISSING_BLOCK_LABEL_59;
        context;
        throw context;
        authStorage.clearAuthInfoMap(context);
        this;
        JVM INSTR monitorexit ;
    }

    public void onAuthenticated(BoxAuthenticationInfo boxauthenticationinfo, Context context)
    {
        if (!SdkUtils.isBlank(boxauthenticationinfo.accessToken()) && (boxauthenticationinfo.getUser() == null || SdkUtils.isBlank(boxauthenticationinfo.getUser().getId())))
        {
            doUserRefresh(context, boxauthenticationinfo);
        } else
        {
            getAuthInfoMap(context).put(boxauthenticationinfo.getUser().getId(), boxauthenticationinfo.clone());
            authStorage.storeLastAuthenticatedUserId(boxauthenticationinfo.getUser().getId(), context);
            authStorage.storeAuthInfoMap(mCurrentAccessInfo, context);
            context = getListeners().iterator();
            while (context.hasNext()) 
            {
                ((AuthListener)context.next()).onAuthCreated(boxauthenticationinfo);
            }
        }
    }

    public void onAuthenticationFailure(BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
    {
        Object obj = "failure:";
        if (getAuthStorage() != null)
        {
            obj = (new StringBuilder()).append("failure:").append("auth storage :").append(getAuthStorage().toString()).toString();
        }
        Object obj1 = obj;
        if (boxauthenticationinfo != null)
        {
            obj1 = (new StringBuilder()).append(((String) (obj)));
            if (boxauthenticationinfo.getUser() == null)
            {
                obj = "null user";
            } else
            if (boxauthenticationinfo.getUser().getId() == null)
            {
                obj = "null user id";
            } else
            {
                obj = Integer.valueOf(boxauthenticationinfo.getUser().getId().length());
            }
            obj1 = ((StringBuilder) (obj1)).append(obj).toString();
        }
        BoxLogUtils.nonFatalE("BoxAuthfail", ((String) (obj1)), exception);
        for (obj = getListeners().iterator(); ((Iterator) (obj)).hasNext(); ((AuthListener)((Iterator) (obj)).next()).onAuthFailure(boxauthenticationinfo, exception)) { }
    }

    public void onLoggedOut(BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
    {
        for (Iterator iterator = getListeners().iterator(); iterator.hasNext(); ((AuthListener)iterator.next()).onLoggedOut(boxauthenticationinfo, exception)) { }
    }

    public FutureTask refresh(BoxSession boxsession)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = boxsession.getUser();
        if (obj != null) goto _L2; else goto _L1
_L1:
        obj = doRefresh(boxsession, boxsession.getAuthInfo());
_L3:
        this;
        JVM INSTR monitorexit ;
        return ((FutureTask) (obj));
_L2:
        final BoxAuthenticationInfo latestInfo;
        getAuthInfoMap(boxsession.getApplicationContext());
        latestInfo = (BoxAuthenticationInfo)mCurrentAccessInfo.get(((BoxUser) (obj)).getId());
        if (latestInfo != null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        mCurrentAccessInfo.put(((BoxUser) (obj)).getId(), boxsession.getAuthInfo());
        latestInfo = (BoxAuthenticationInfo)mCurrentAccessInfo.get(((BoxUser) (obj)).getId());
        if (boxsession.getAuthInfo().accessToken() != null && (boxsession.getAuthInfo().accessToken().equals(latestInfo.accessToken()) || latestInfo.getRefreshTime() == null || System.currentTimeMillis() - latestInfo.getRefreshTime().longValue() >= 15000L))
        {
            break MISSING_BLOCK_LABEL_176;
        }
        BoxAuthenticationInfo.cloneInfo(boxsession.getAuthInfo(), latestInfo);
        obj = new FutureTask(new Callable() {

            final BoxAuthentication this$0;
            final BoxAuthenticationInfo val$latestInfo;

            public BoxAuthenticationInfo call()
            {
                return latestInfo;
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                this$0 = BoxAuthentication.this;
                latestInfo = boxauthenticationinfo;
                super();
            }
        });
        AUTH_EXECUTOR.execute(((Runnable) (obj)));
          goto _L3
        boxsession;
        throw boxsession;
        FutureTask futuretask = (FutureTask)mRefreshingTasks.get(((BoxUser) (obj)).getId());
        if (futuretask == null) goto _L5; else goto _L4
_L4:
        if (futuretask.isCancelled()) goto _L5; else goto _L6
_L6:
        obj = futuretask;
        if (!futuretask.isDone()) goto _L3; else goto _L5
_L5:
        obj = doRefresh(boxsession, latestInfo);
          goto _L3
    }

    public void setAuthStorage(AuthStorage authstorage)
    {
        authStorage = authstorage;
    }

    public void setRefreshProvider(AuthenticationRefreshProvider authenticationrefreshprovider)
    {
        mRefreshProvider = authenticationrefreshprovider;
    }

    protected void startAuthenticateUI(BoxSession boxsession)
    {
        this;
        JVM INSTR monitorenter ;
        Context context = boxsession.getApplicationContext();
        boolean flag;
        if (isBoxAuthAppAvailable(context) && boxsession.isEnabledBoxAppAuthentication())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boxsession = OAuthActivity.createOAuthActivityIntent(context, boxsession, flag);
        boxsession.addFlags(0x10000000);
        context.startActivity(boxsession);
        this;
        JVM INSTR monitorexit ;
        return;
        boxsession;
        throw boxsession;
    }

    public void startAuthenticationUI(BoxSession boxsession)
    {
        this;
        JVM INSTR monitorenter ;
        startAuthenticateUI(boxsession);
        this;
        JVM INSTR monitorexit ;
        return;
        boxsession;
        throw boxsession;
    }

    static 
    {
        AUTH_EXECUTOR = SdkUtils.createDefaultThreadPoolExecutor(1, 1, 3600L, TimeUnit.SECONDS);
    }






}
