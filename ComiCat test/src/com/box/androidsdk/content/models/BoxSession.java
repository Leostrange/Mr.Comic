// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.box.androidsdk.content.utils.StringMappedThreadPoolExecutor;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxObject, BoxUser, BoxMDMData

public class BoxSession extends BoxObject
    implements com.box.androidsdk.content.auth.BoxAuthentication.AuthListener
{
    static class BoxSessionAuthCreationRequest extends BoxRequest
        implements com.box.androidsdk.content.auth.BoxAuthentication.AuthListener
    {

        private static final long serialVersionUID = 0x70be1f2741234cd9L;
        private CountDownLatch authLatch;
        private boolean mIsWaitingForLoginUi;
        private final BoxSession mSession;

        private void launchAuthUI()
        {
            authLatch = new CountDownLatch(1);
            mIsWaitingForLoginUi = true;
            (new Handler(Looper.getMainLooper())).post(new Runnable() {

                final BoxSessionAuthCreationRequest this$0;

                public void run()
                {
                    if (mSession.getRefreshProvider() == null || !mSession.getRefreshProvider().launchAuthUi(mSession.getUserId(), mSession))
                    {
                        mSession.startAuthenticationUI();
                    }
                }

            
            {
                this$0 = BoxSessionAuthCreationRequest.this;
                super();
            }
            });
            try
            {
                authLatch.await();
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                authLatch.countDown();
            }
        }

        public boolean equals(Object obj)
        {
            if (!(obj instanceof BoxSessionAuthCreationRequest) || !((BoxSessionAuthCreationRequest)obj).mSession.equals(mSession))
            {
                return false;
            } else
            {
                return super.equals(obj);
            }
        }

        public int hashCode()
        {
            return mSession.hashCode() + super.hashCode();
        }

        public void onAuthCreated(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
        {
            authLatch.countDown();
        }

        public void onAuthFailure(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
        {
            authLatch.countDown();
        }

        public void onLoggedOut(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
        {
        }

        public void onRefreshed(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
        {
        }

        public volatile BoxObject onSend()
        {
            return onSend();
        }

        public BoxSession onSend()
        {
            BoxSession boxsession = mSession;
            boxsession;
            JVM INSTR monitorenter ;
            Object obj;
            if (mSession.getUser() != null)
            {
                break MISSING_BLOCK_LABEL_228;
            }
            if (mSession.getAuthInfo() == null || SdkUtils.isBlank(mSession.getAuthInfo().accessToken()))
            {
                break MISSING_BLOCK_LABEL_166;
            }
            obj = mSession.getUser();
            if (obj != null)
            {
                break MISSING_BLOCK_LABEL_166;
            }
            obj = (BoxUser)(new BoxApiUser(mSession)).getCurrentUserInfoRequest().send();
            mSession.setUserId(((BoxUser) (obj)).getId());
            mSession.getAuthInfo().setUser(((BoxUser) (obj)));
            BoxAuthentication.getInstance().onAuthenticated(mSession.getAuthInfo(), mSession.getApplicationContext());
            obj = mSession;
            boxsession;
            JVM INSTR monitorexit ;
            return ((BoxSession) (obj));
            obj;
            BoxLogUtils.e("BoxSession", "Unable to repair user", ((Throwable) (obj)));
            if (!(obj instanceof com.box.androidsdk.content.BoxException.RefreshFailure) || !((com.box.androidsdk.content.BoxException.RefreshFailure)obj).isErrorFatal())
            {
                break MISSING_BLOCK_LABEL_191;
            }
            BoxSession.toastString(mSession.getApplicationContext(), hc.e.boxsdk_error_fatal_refresh);
_L1:
            BoxAuthentication.getInstance().addListener(this);
            launchAuthUI();
            obj = mSession;
            boxsession;
            JVM INSTR monitorexit ;
            return ((BoxSession) (obj));
            Object obj1;
            obj1;
            boxsession;
            JVM INSTR monitorexit ;
            throw obj1;
label0:
            {
                if (((BoxException) (obj1)).getErrorType() != com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED)
                {
                    break label0;
                }
                BoxSession.toastString(mSession.getApplicationContext(), hc.e.boxsdk_error_terms_of_service);
            }
              goto _L1
            mSession.onAuthFailure(null, ((Exception) (obj1)));
            throw obj1;
            obj1 = BoxAuthentication.getInstance().getAuthInfo(mSession.getUserId(), mSession.getApplicationContext());
            if (obj1 == null)
            {
                break MISSING_BLOCK_LABEL_497;
            }
            com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo.cloneInfo(mSession.mAuthInfo, ((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) (obj1)));
            if (!SdkUtils.isBlank(mSession.getAuthInfo().accessToken()) || !SdkUtils.isBlank(mSession.getAuthInfo().refreshToken())) goto _L3; else goto _L2
_L2:
            BoxAuthentication.getInstance().addListener(this);
            launchAuthUI();
_L4:
            obj1 = mSession;
            boxsession;
            JVM INSTR monitorexit ;
            return ((BoxSession) (obj1));
_L3:
            boolean flag;
            if (((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) (obj1)).getUser() == null)
            {
                break MISSING_BLOCK_LABEL_338;
            }
            flag = SdkUtils.isBlank(((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) (obj1)).getUser().getId());
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_443;
            }
            obj1 = (BoxUser)(new BoxApiUser(mSession)).getCurrentUserInfoRequest().send();
            mSession.setUserId(((BoxUser) (obj1)).getId());
            mSession.getAuthInfo().setUser(((BoxUser) (obj1)));
            mSession.onAuthCreated(mSession.getAuthInfo());
            obj1 = mSession;
            boxsession;
            JVM INSTR monitorexit ;
            return ((BoxSession) (obj1));
            obj1;
            BoxLogUtils.e("BoxSession", "Unable to repair user", ((Throwable) (obj1)));
            if (!(obj1 instanceof com.box.androidsdk.content.BoxException.RefreshFailure) || !((com.box.androidsdk.content.BoxException.RefreshFailure)obj1).isErrorFatal())
            {
                break MISSING_BLOCK_LABEL_460;
            }
            BoxSession.toastString(mSession.getApplicationContext(), hc.e.boxsdk_error_fatal_refresh);
_L5:
            mSession.onAuthCreated(mSession.getAuthInfo());
              goto _L4
label1:
            {
                if (((BoxException) (obj1)).getErrorType() != com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED)
                {
                    break label1;
                }
                BoxSession.toastString(mSession.getApplicationContext(), hc.e.boxsdk_error_terms_of_service);
            }
              goto _L5
            mSession.onAuthFailure(null, ((Exception) (obj1)));
            throw obj1;
              goto _L4
            mSession.mAuthInfo.setUser(null);
            launchAuthUI();
              goto _L4
        }

        public BoxFutureTask toTask()
        {
            return new BoxAuthCreationTask(com/box/androidsdk/content/models/BoxSession, this);
        }



        public BoxSessionAuthCreationRequest(BoxSession boxsession, boolean flag)
        {
            super(null, " ", null);
            mSession = boxsession;
        }
    }

    static class BoxSessionAuthCreationRequest.BoxAuthCreationTask extends BoxFutureTask
    {

        public void bringUiToFrontIfNecessary()
        {
            if ((mRequest instanceof BoxSessionAuthCreationRequest) && ((BoxSessionAuthCreationRequest)mRequest).mIsWaitingForLoginUi)
            {
                ((BoxSessionAuthCreationRequest)mRequest).mSession.startAuthenticationUI();
            }
        }

        public BoxSessionAuthCreationRequest.BoxAuthCreationTask(Class class1, BoxRequest boxrequest)
        {
            super(class1, boxrequest);
        }
    }

    static class BoxSessionLogoutRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cfeL;
        private BoxSession mSession;

        protected volatile BoxObject onSend()
        {
            return onSend();
        }

        protected BoxSession onSend()
        {
            synchronized (mSession)
            {
                if (mSession.getUser() != null)
                {
                    BoxAuthentication.getInstance().logout(mSession);
                    mSession.getAuthInfo().wipeOutAuth();
                    mSession.setUserId(null);
                }
            }
            return mSession;
            exception;
            boxsession;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public BoxSessionLogoutRequest(BoxSession boxsession)
        {
            super(null, " ", null);
            mSession = boxsession;
        }
    }

    static class BoxSessionRefreshRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234d03L;
        private BoxSession mSession;

        public volatile BoxObject onSend()
        {
            return onSend();
        }

        public BoxSession onSend()
        {
            try
            {
                BoxAuthentication.getInstance().refresh(mSession).get();
            }
            catch (Exception exception1)
            {
                BoxLogUtils.e("BoxSession", "Unable to repair user", exception1);
                Exception exception;
                if (exception1.getCause() instanceof BoxException)
                {
                    exception = (Exception)exception1.getCause();
                } else
                {
                    exception = exception1;
                }
                if (exception instanceof BoxException)
                {
                    if (mSession.mSuppressAuthErrorUIAfterLogin)
                    {
                        mSession.onAuthFailure(null, exception);
                    } else
                    {
                        if ((exception instanceof com.box.androidsdk.content.BoxException.RefreshFailure) && ((com.box.androidsdk.content.BoxException.RefreshFailure)exception).isErrorFatal())
                        {
                            BoxSession.toastString(mSession.getApplicationContext(), hc.e.boxsdk_error_fatal_refresh);
                            mSession.startAuthenticationUI();
                            mSession.onAuthFailure(mSession.getAuthInfo(), exception);
                            throw (BoxException)exception;
                        }
                        if (((BoxException)exception1).getErrorType() == com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED)
                        {
                            BoxSession.toastString(mSession.getApplicationContext(), hc.e.boxsdk_error_terms_of_service);
                            mSession.startAuthenticationUI();
                            mSession.onAuthFailure(mSession.getAuthInfo(), exception);
                            BoxLogUtils.e("BoxSession", "TOS refresh exception ", exception);
                            throw (BoxException)exception;
                        } else
                        {
                            mSession.onAuthFailure(null, exception);
                            throw (BoxException)exception;
                        }
                    }
                } else
                {
                    throw new BoxException("BoxSessionRefreshRequest failed", exception);
                }
            }
            com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo.cloneInfo(mSession.mAuthInfo, BoxAuthentication.getInstance().getAuthInfo(mSession.getUserId(), mSession.getApplicationContext()));
            return mSession;
        }

        public BoxSessionRefreshRequest(BoxSession boxsession)
        {
            super(null, " ", null);
            mSession = boxsession;
        }
    }


    private static final transient ThreadPoolExecutor AUTH_CREATION_EXECUTOR;
    private static final long serialVersionUID = 0x70ba56f6f63fd99dL;
    protected String mAccountEmail;
    private transient Context mApplicationContext;
    protected com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo mAuthInfo;
    protected String mClientId;
    protected String mClientRedirectUrl;
    protected String mClientSecret;
    protected String mDeviceId;
    protected String mDeviceName;
    protected boolean mEnableBoxAppAuthentication;
    protected Long mExpiresAt;
    private String mLastAuthCreationTaskId;
    protected BoxMDMData mMDMData;
    protected com.box.androidsdk.content.auth.BoxAuthentication.AuthenticationRefreshProvider mRefreshProvider;
    private transient WeakReference mRefreshTask;
    private boolean mSuppressAuthErrorUIAfterLogin;
    private String mUserAgent;
    private String mUserId;
    private transient com.box.androidsdk.content.auth.BoxAuthentication.AuthListener sessionAuthListener;

    public BoxSession(Context context)
    {
        this(context, getBestStoredUserId(context));
    }

    public BoxSession(Context context, com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, com.box.androidsdk.content.auth.BoxAuthentication.AuthenticationRefreshProvider authenticationrefreshprovider)
    {
        mUserAgent = "com.box.sdk.android";
        mApplicationContext = BoxConfig.APPLICATION_CONTEXT;
        mSuppressAuthErrorUIAfterLogin = false;
        mEnableBoxAppAuthentication = BoxConfig.ENABLE_BOX_APP_AUTHENTICATION;
        mApplicationContext = context.getApplicationContext();
        setAuthInfo(boxauthenticationinfo);
        mRefreshProvider = authenticationrefreshprovider;
        setupSession();
    }

    public BoxSession(Context context, String s)
    {
        this(context, s, BoxConfig.CLIENT_ID, BoxConfig.CLIENT_SECRET, BoxConfig.REDIRECT_URL);
        if (!SdkUtils.isEmptyString(BoxConfig.DEVICE_NAME))
        {
            setDeviceName(BoxConfig.DEVICE_NAME);
        }
        if (!SdkUtils.isEmptyString(BoxConfig.DEVICE_ID))
        {
            setDeviceName(BoxConfig.DEVICE_ID);
        }
    }

    public BoxSession(Context context, String s, com.box.androidsdk.content.auth.BoxAuthentication.AuthenticationRefreshProvider authenticationrefreshprovider)
    {
        this(context, createSimpleBoxAuthenticationInfo(s), authenticationrefreshprovider);
    }

    public BoxSession(Context context, String s, String s1, String s2, String s3)
    {
        mUserAgent = "com.box.sdk.android";
        mApplicationContext = BoxConfig.APPLICATION_CONTEXT;
        mSuppressAuthErrorUIAfterLogin = false;
        mEnableBoxAppAuthentication = BoxConfig.ENABLE_BOX_APP_AUTHENTICATION;
        mClientId = s1;
        mClientSecret = s2;
        mClientRedirectUrl = s3;
        if (getRefreshProvider() == null && (SdkUtils.isEmptyString(mClientId) || SdkUtils.isEmptyString(mClientSecret)))
        {
            throw new RuntimeException("Session must have a valid client id and client secret specified.");
        }
        mApplicationContext = context.getApplicationContext();
        if (!SdkUtils.isEmptyString(s))
        {
            mAuthInfo = BoxAuthentication.getInstance().getAuthInfo(s, context);
            mUserId = s;
        }
        if (mAuthInfo == null)
        {
            mUserId = s;
            mAuthInfo = new com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo();
        }
        mAuthInfo.setClientId(mClientId);
        setupSession();
    }

    protected BoxSession(BoxSession boxsession)
    {
        mUserAgent = "com.box.sdk.android";
        mApplicationContext = BoxConfig.APPLICATION_CONTEXT;
        mSuppressAuthErrorUIAfterLogin = false;
        mEnableBoxAppAuthentication = BoxConfig.ENABLE_BOX_APP_AUTHENTICATION;
        mApplicationContext = boxsession.mApplicationContext;
        if (!SdkUtils.isBlank(boxsession.getUserId()))
        {
            setUserId(boxsession.getUserId());
        }
        if (!SdkUtils.isBlank(boxsession.getDeviceId()))
        {
            setDeviceId(boxsession.getDeviceId());
        }
        if (!SdkUtils.isBlank(boxsession.getDeviceName()))
        {
            setDeviceName(boxsession.getDeviceName());
        }
        if (!SdkUtils.isBlank(boxsession.getBoxAccountEmail()))
        {
            setBoxAccountEmail(boxsession.getBoxAccountEmail());
        }
        if (boxsession.getManagementData() != null)
        {
            setManagementData(boxsession.getManagementData());
        }
        if (!SdkUtils.isBlank(boxsession.getClientId()))
        {
            mClientId = boxsession.mClientId;
        }
        if (!SdkUtils.isBlank(boxsession.getClientSecret()))
        {
            mClientSecret = boxsession.getClientSecret();
        }
        if (!SdkUtils.isBlank(boxsession.getRedirectUrl()))
        {
            mClientRedirectUrl = boxsession.getRedirectUrl();
        }
        setAuthInfo(boxsession.getAuthInfo());
        setupSession();
    }

    private static com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo createSimpleBoxAuthenticationInfo(String s)
    {
        com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo = new com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo();
        boxauthenticationinfo.setAccessToken(s);
        return boxauthenticationinfo;
    }

    private void deleteFilesRecursively(File file)
    {
        if (file != null)
        {
            if (file.isDirectory())
            {
                File afile[] = file.listFiles();
                if (afile != null)
                {
                    int j = afile.length;
                    for (int i = 0; i < j; i++)
                    {
                        deleteFilesRecursively(afile[i]);
                    }

                }
            }
            file.delete();
        }
    }

    private static String getBestStoredUserId(Context context)
    {
        String s = BoxAuthentication.getInstance().getLastAuthenticatedUserId(context);
        context = BoxAuthentication.getInstance().getStoredAuthInfo(context);
        if (context != null)
        {
            if (!SdkUtils.isEmptyString(s) && context.get(s) != null)
            {
                return s;
            }
            if (context.size() == 1)
            {
                context = context.keySet().iterator();
                if (context.hasNext())
                {
                    return (String)context.next();
                }
            }
        }
        return null;
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        if (BoxConfig.APPLICATION_CONTEXT != null)
        {
            setApplicationContext(BoxConfig.APPLICATION_CONTEXT);
        }
    }

    private boolean sameUser(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        return boxauthenticationinfo != null && boxauthenticationinfo.getUser() != null && getUserId() != null && getUserId().equals(boxauthenticationinfo.getUser().getId());
    }

    private static void toastString(Context context, int i)
    {
        SdkUtils.toastSafely(context, i, 1);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        objectoutputstream.defaultWriteObject();
    }

    public BoxFutureTask authenticate()
    {
        return authenticate(getApplicationContext());
    }

    public BoxFutureTask authenticate(Context context)
    {
        return authenticate(context, null);
    }

    public BoxFutureTask authenticate(Context context, com.box.androidsdk.content.BoxFutureTask.OnCompletedListener oncompletedlistener)
    {
        if (context != null)
        {
            mApplicationContext = context.getApplicationContext();
            BoxConfig.APPLICATION_CONTEXT = mApplicationContext;
        }
        if (!SdkUtils.isBlank(mLastAuthCreationTaskId) && (AUTH_CREATION_EXECUTOR instanceof StringMappedThreadPoolExecutor))
        {
            context = ((StringMappedThreadPoolExecutor)AUTH_CREATION_EXECUTOR).getTaskFor(mLastAuthCreationTaskId);
            if (context instanceof BoxSessionAuthCreationRequest.BoxAuthCreationTask)
            {
                context = (BoxSessionAuthCreationRequest.BoxAuthCreationTask)context;
                if (oncompletedlistener != null)
                {
                    context.addOnCompletedListener(oncompletedlistener);
                }
                context.bringUiToFrontIfNecessary();
                return context;
            }
        }
        context = (new BoxSessionAuthCreationRequest(this, mEnableBoxAppAuthentication)).toTask();
        if (oncompletedlistener != null)
        {
            context.addOnCompletedListener(oncompletedlistener);
        }
        mLastAuthCreationTaskId = context.toString();
        AUTH_CREATION_EXECUTOR.execute(context);
        return context;
    }

    public void clearCache()
    {
        File file = getCacheDir();
        if (file.exists())
        {
            File afile[] = file.listFiles();
            if (afile != null)
            {
                int j = afile.length;
                for (int i = 0; i < j; i++)
                {
                    deleteFilesRecursively(afile[i]);
                }

            }
        }
    }

    public Context getApplicationContext()
    {
        return mApplicationContext;
    }

    public com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo getAuthInfo()
    {
        return mAuthInfo;
    }

    public String getBoxAccountEmail()
    {
        return mAccountEmail;
    }

    public File getCacheDir()
    {
        return new File(getApplicationContext().getFilesDir(), getUserId());
    }

    public String getClientId()
    {
        return mClientId;
    }

    public String getClientSecret()
    {
        return mClientSecret;
    }

    public String getDeviceId()
    {
        return mDeviceId;
    }

    public String getDeviceName()
    {
        return mDeviceName;
    }

    public BoxMDMData getManagementData()
    {
        return mMDMData;
    }

    public String getRedirectUrl()
    {
        return mClientRedirectUrl;
    }

    public com.box.androidsdk.content.auth.BoxAuthentication.AuthenticationRefreshProvider getRefreshProvider()
    {
        if (mRefreshProvider != null)
        {
            return mRefreshProvider;
        } else
        {
            return BoxAuthentication.getInstance().getRefreshProvider();
        }
    }

    public Long getRefreshTokenExpiresAt()
    {
        return mExpiresAt;
    }

    public BoxUser getUser()
    {
        return mAuthInfo.getUser();
    }

    public String getUserAgent()
    {
        return mUserAgent;
    }

    public String getUserId()
    {
        return mUserId;
    }

    public boolean isEnabledBoxAppAuthentication()
    {
        return mEnableBoxAppAuthentication;
    }

    public BoxFutureTask logout()
    {
        final BoxFutureTask task = (new BoxSessionLogoutRequest(this)).toTask();
        (new Thread() {

            final BoxSession this$0;
            final BoxFutureTask val$task;

            public void run()
            {
                task.run();
            }

            
            {
                this$0 = BoxSession.this;
                task = boxfuturetask;
                super();
            }
        }).start();
        return task;
    }

    public void onAuthCreated(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        if (sameUser(boxauthenticationinfo) || getUserId() == null)
        {
            com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo.cloneInfo(mAuthInfo, boxauthenticationinfo);
            if (boxauthenticationinfo.getUser() != null)
            {
                setUserId(boxauthenticationinfo.getUser().getId());
            }
            if (sessionAuthListener != null)
            {
                sessionAuthListener.onAuthCreated(boxauthenticationinfo);
            }
        }
    }

    public void onAuthFailure(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
    {
        if (!sameUser(boxauthenticationinfo) && (boxauthenticationinfo != null || getUserId() != null)) goto _L2; else goto _L1
_L1:
        if (sessionAuthListener != null)
        {
            sessionAuthListener.onAuthFailure(boxauthenticationinfo, exception);
        }
        if (!(exception instanceof BoxException)) goto _L2; else goto _L3
_L3:
        boxauthenticationinfo = ((BoxException)exception).getErrorType();
        static class _cls3
        {

            static final int $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType[];

            static 
            {
                $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType = new int[com.box.androidsdk.content.BoxException.ErrorType.values().length];
                try
                {
                    $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType[com.box.androidsdk.content.BoxException.ErrorType.NETWORK_ERROR.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType[com.box.androidsdk.content.BoxException.ErrorType.IP_BLOCKED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls3..SwitchMap.com.box.androidsdk.content.BoxException.ErrorType[boxauthenticationinfo.ordinal()];
        JVM INSTR tableswitch 1 1: default 80
    //                   1 81;
           goto _L2 _L4
_L2:
        return;
_L4:
        toastString(mApplicationContext, hc.e.boxsdk_error_network_connection);
        return;
    }

    public void onLoggedOut(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
    {
        if (sameUser(boxauthenticationinfo))
        {
            boxauthenticationinfo.wipeOutAuth();
            getAuthInfo().wipeOutAuth();
            setUserId(null);
            if (sessionAuthListener != null)
            {
                sessionAuthListener.onLoggedOut(boxauthenticationinfo, exception);
            }
        }
    }

    public void onRefreshed(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        if (sameUser(boxauthenticationinfo))
        {
            com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo.cloneInfo(mAuthInfo, boxauthenticationinfo);
            if (sessionAuthListener != null)
            {
                sessionAuthListener.onRefreshed(boxauthenticationinfo);
            }
        }
    }

    public BoxFutureTask refresh()
    {
        if (mRefreshTask != null && mRefreshTask.get() != null)
        {
            BoxFutureTask boxfuturetask = (BoxFutureTask)mRefreshTask.get();
            if (!boxfuturetask.isCancelled() && !boxfuturetask.isDone())
            {
                return boxfuturetask;
            }
        }
        final BoxFutureTask task = (new BoxSessionRefreshRequest(this)).toTask();
        (new Thread() {

            final BoxSession this$0;
            final BoxFutureTask val$task;

            public void run()
            {
                task.run();
            }

            
            {
                this$0 = BoxSession.this;
                task = boxfuturetask;
                super();
            }
        }).start();
        mRefreshTask = new WeakReference(task);
        return task;
    }

    public void setApplicationContext(Context context)
    {
        mApplicationContext = context.getApplicationContext();
    }

    protected void setAuthInfo(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        if (boxauthenticationinfo == null)
        {
            mAuthInfo = new com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo();
            mAuthInfo.setClientId(mClientId);
        } else
        {
            mAuthInfo = boxauthenticationinfo;
        }
        if (mAuthInfo.getUser() != null && !SdkUtils.isBlank(mAuthInfo.getUser().getId()))
        {
            setUserId(mAuthInfo.getUser().getId());
            return;
        } else
        {
            setUserId(null);
            return;
        }
    }

    public void setBoxAccountEmail(String s)
    {
        mAccountEmail = s;
    }

    public void setDeviceId(String s)
    {
        mDeviceId = s;
    }

    public void setDeviceName(String s)
    {
        mDeviceName = s;
    }

    public void setEnableBoxAppAuthentication(boolean flag)
    {
        mEnableBoxAppAuthentication = flag;
    }

    public void setManagementData(BoxMDMData boxmdmdata)
    {
        mMDMData = boxmdmdata;
    }

    public void setRefreshTokenExpiresAt(long l)
    {
        mExpiresAt = Long.valueOf(l);
    }

    public void setSessionAuthListener(com.box.androidsdk.content.auth.BoxAuthentication.AuthListener authlistener)
    {
        sessionAuthListener = authlistener;
    }

    protected void setUserId(String s)
    {
        mUserId = s;
    }

    protected void setupSession()
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (mApplicationContext == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        flag = flag1;
        int i;
        if (mApplicationContext.getPackageManager() == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (BoxConfig.APPLICATION_CONTEXT == null)
        {
            BoxConfig.APPLICATION_CONTEXT = mApplicationContext;
        }
        i = mApplicationContext.getPackageManager().getPackageInfo(mApplicationContext.getPackageName(), 0).applicationInfo.flags;
        flag = flag1;
        if ((i & 2) != 0)
        {
            flag = true;
        }
_L2:
        BoxConfig.IS_DEBUG = flag;
        BoxAuthentication.getInstance().addListener(this);
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void startAuthenticationUI()
    {
        BoxAuthentication.getInstance().startAuthenticationUI(this);
    }

    public void suppressAuthErrorUIAfterLogin(boolean flag)
    {
        mSuppressAuthErrorUIAfterLogin = flag;
    }

    public boolean suppressesAuthErrorUIAfterLogin()
    {
        return mSuppressAuthErrorUIAfterLogin;
    }

    static 
    {
        AUTH_CREATION_EXECUTOR = SdkUtils.createDefaultThreadPoolExecutor(1, 20, 3600L, TimeUnit.SECONDS);
    }


}
