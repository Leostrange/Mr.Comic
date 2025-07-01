// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.box.androidsdk.content.BoxCache;
import com.box.androidsdk.content.BoxCacheFutureTask;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BlockedIPErrorActivity;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxArray;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLinkSession;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxHttpRequest, BoxHttpResponse, BoxResponse

public abstract class BoxRequest
    implements Serializable
{
    public static class BoxRequestHandler
    {

        private static final int DEFAULT_AUTH_REFRESH_RETRY = 4;
        protected static final int DEFAULT_NUM_RETRIES = 1;
        protected static final int DEFAULT_RATE_LIMIT_WAIT = 20;
        public static final String OAUTH_ERROR_HEADER = "error";
        public static final String OAUTH_INVALID_TOKEN = "invalid_token";
        public static final String WWW_AUTHENTICATE = "WWW-Authenticate";
        protected int mNumRateLimitRetries;
        private int mRefreshRetries;
        protected BoxRequest mRequest;

        private boolean authFailed(BoxHttpResponse boxhttpresponse)
        {
            while (boxhttpresponse == null || boxhttpresponse.getResponseCode() != 401) 
            {
                return false;
            }
            return true;
        }

        protected static int getRetryAfterFromResponse(BoxHttpResponse boxhttpresponse, int i)
        {
            boxhttpresponse = boxhttpresponse.getHttpURLConnection().getHeaderField("Retry-After");
            if (SdkUtils.isBlank(boxhttpresponse)) goto _L2; else goto _L1
_L1:
            int j = Integer.parseInt(boxhttpresponse);
            i = j;
_L3:
            if (i <= 0)
            {
                i = 1;
            }
_L2:
            return i * 1000;
            boxhttpresponse;
              goto _L3
        }

        private boolean isInvalidTokenError(String s)
        {
            s = s.split("=");
            return s.length == 2 && s[0] != null && s[1] != null && "error".equalsIgnoreCase(s[0].trim()) && "invalid_token".equalsIgnoreCase(s[1].replace("\"", "").trim());
        }

        private boolean oauthExpired(BoxHttpResponse boxhttpresponse)
        {
_L2:
            return false;
            if (boxhttpresponse == null || 401 != boxhttpresponse.getResponseCode()) goto _L2; else goto _L1
_L1:
            boxhttpresponse = boxhttpresponse.mConnection.getHeaderField("WWW-Authenticate");
            if (!SdkUtils.isEmptyString(boxhttpresponse))
            {
                boxhttpresponse = boxhttpresponse.split(",");
                int j = boxhttpresponse.length;
                int i = 0;
                while (i < j) 
                {
                    if (isInvalidTokenError(boxhttpresponse[i]))
                    {
                        return true;
                    }
                    i++;
                }
            }
            if (true) goto _L2; else goto _L3
_L3:
        }

        protected void disconnectForInterrupt(BoxHttpResponse boxhttpresponse)
        {
            try
            {
                boxhttpresponse.getHttpURLConnection().disconnect();
            }
            // Misplaced declaration of an exception variable
            catch (BoxHttpResponse boxhttpresponse)
            {
                BoxLogUtils.e("Interrupt disconnect", boxhttpresponse);
            }
            throw new BoxException("Thread interrupted request cancelled ", new InterruptedException());
        }

        public boolean isResponseSuccess(BoxHttpResponse boxhttpresponse)
        {
            int i = boxhttpresponse.getResponseCode();
            return i >= 200 && i < 300 || i == 429;
        }

        public boolean onException(BoxRequest boxrequest, BoxHttpResponse boxhttpresponse, BoxException boxexception)
        {
            BoxSession boxsession = boxrequest.getSession();
            if (!oauthExpired(boxhttpresponse)) goto _L2; else goto _L1
_L1:
            boxrequest = (BoxResponse)boxsession.refresh().get();
            if (boxrequest.isSuccess())
            {
                return true;
            }
            if (boxrequest.getException() == null) goto _L4; else goto _L3
_L3:
            if (boxrequest.getException() instanceof com.box.androidsdk.content.BoxException.RefreshFailure)
            {
                throw (com.box.androidsdk.content.BoxException.RefreshFailure)boxrequest.getException();
            }
              goto _L5
            boxrequest;
            BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
_L4:
            return false;
_L5:
            return false;
            boxrequest;
            BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
            continue; /* Loop/switch isn't completed */
_L2:
            if (!authFailed(boxhttpresponse))
            {
                break; /* Loop/switch isn't completed */
            }
            com.box.androidsdk.content.BoxException.ErrorType errortype = boxexception.getErrorType();
            if (boxsession.suppressesAuthErrorUIAfterLogin())
            {
                continue; /* Loop/switch isn't completed */
            }
            Context context = boxsession.getApplicationContext();
            if (errortype == com.box.androidsdk.content.BoxException.ErrorType.IP_BLOCKED || errortype == com.box.androidsdk.content.BoxException.ErrorType.LOCATION_BLOCKED)
            {
                boxrequest = new Intent(boxsession.getApplicationContext(), com/box/androidsdk/content/auth/BlockedIPErrorActivity);
                boxrequest.addFlags(0x10000000);
                context.startActivity(boxrequest);
                return false;
            }
            if (errortype == com.box.androidsdk.content.BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED)
            {
                SdkUtils.toastSafely(context, hc.e.boxsdk_error_terms_of_service, 1);
            }
            if (mRefreshRetries <= 4)
            {
                break MISSING_BLOCK_LABEL_275;
            }
            boxhttpresponse = (new StringBuilder(" Exceeded max refresh retries for ")).append(boxrequest.getClass().getName()).append(" response code").append(boxexception.getResponseCode()).append(" response ").append(boxhttpresponse).toString();
            boxrequest = boxhttpresponse;
            if (boxexception.getAsBoxError() != null)
            {
                boxrequest = (new StringBuilder()).append(boxhttpresponse).append(boxexception.getAsBoxError().toJson()).toString();
            }
            BoxLogUtils.nonFatalE("authFailed", boxrequest, boxexception);
            return false;
            boxrequest = (BoxResponse)boxsession.refresh().get();
            if (!boxrequest.isSuccess())
            {
                break MISSING_BLOCK_LABEL_306;
            }
            mRefreshRetries = mRefreshRetries + 1;
            return true;
            try
            {
                if (boxrequest.getException() == null)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (boxrequest.getException() instanceof com.box.androidsdk.content.BoxException.RefreshFailure)
                {
                    throw (com.box.androidsdk.content.BoxException.RefreshFailure)boxrequest.getException();
                }
                break MISSING_BLOCK_LABEL_343;
            }
            // Misplaced declaration of an exception variable
            catch (BoxRequest boxrequest)
            {
                BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
                continue; /* Loop/switch isn't completed */
            }
            // Misplaced declaration of an exception variable
            catch (BoxRequest boxrequest)
            {
                BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
            }
            continue; /* Loop/switch isn't completed */
            return false;
            if (true) goto _L4; else goto _L6
_L6:
            if (boxhttpresponse != null && boxhttpresponse.getResponseCode() == 403)
            {
                boxrequest = boxexception.getErrorType();
                if (boxrequest == com.box.androidsdk.content.BoxException.ErrorType.IP_BLOCKED || boxrequest == com.box.androidsdk.content.BoxException.ErrorType.LOCATION_BLOCKED)
                {
                    boxrequest = boxsession.getApplicationContext();
                    boxhttpresponse = new Intent(boxsession.getApplicationContext(), com/box/androidsdk/content/auth/BlockedIPErrorActivity);
                    boxhttpresponse.addFlags(0x10000000);
                    boxrequest.startActivity(boxhttpresponse);
                    return false;
                }
            }
            if (true) goto _L4; else goto _L7
_L7:
        }

        public BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
        {
            if (boxhttpresponse.getResponseCode() == 429)
            {
                class1 = retryRateLimited(boxhttpresponse);
            } else
            {
                if (Thread.currentThread().isInterrupted())
                {
                    disconnectForInterrupt(boxhttpresponse);
                }
                String s = boxhttpresponse.getContentType();
                BoxObject boxobject = (BoxObject)class1.newInstance();
                class1 = boxobject;
                if (boxobject instanceof BoxJsonObject)
                {
                    class1 = boxobject;
                    if (s.contains(ContentTypes.JSON.toString()))
                    {
                        class1 = boxhttpresponse.getStringBody();
                        ((BoxJsonObject)boxobject).createFromJson(class1);
                        return boxobject;
                    }
                }
            }
            return class1;
        }

        protected BoxObject retryRateLimited(BoxHttpResponse boxhttpresponse)
        {
            if (mNumRateLimitRetries <= 0)
            {
                mNumRateLimitRetries = mNumRateLimitRetries + 1;
                long l = getRetryAfterFromResponse(boxhttpresponse, (int)(10D * Math.random()) + 20);
                try
                {
                    Thread.sleep(l);
                }
                // Misplaced declaration of an exception variable
                catch (BoxHttpResponse boxhttpresponse)
                {
                    throw new BoxException(boxhttpresponse.getMessage(), boxhttpresponse);
                }
                return mRequest.send();
            } else
            {
                throw new com.box.androidsdk.content.BoxException.RateLimitAttemptsExceeded("Max attempts exceeded", mNumRateLimitRetries, boxhttpresponse);
            }
        }

        public BoxRequestHandler(BoxRequest boxrequest)
        {
            mNumRateLimitRetries = 0;
            mRefreshRetries = 0;
            mRequest = boxrequest;
        }
    }

    public static final class ContentTypes extends Enum
    {

        private static final ContentTypes $VALUES[];
        public static final ContentTypes JSON;
        public static final ContentTypes JSON_PATCH;
        public static final ContentTypes URL_ENCODED;
        private String mName;

        public static ContentTypes valueOf(String s)
        {
            return (ContentTypes)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequest$ContentTypes, s);
        }

        public static ContentTypes[] values()
        {
            return (ContentTypes[])$VALUES.clone();
        }

        public final String toString()
        {
            return mName;
        }

        static 
        {
            JSON = new ContentTypes("JSON", 0, "application/json");
            URL_ENCODED = new ContentTypes("URL_ENCODED", 1, "application/x-www-form-urlencoded");
            JSON_PATCH = new ContentTypes("JSON_PATCH", 2, "application/json-patch+json");
            $VALUES = (new ContentTypes[] {
                JSON, URL_ENCODED, JSON_PATCH
            });
        }

        private ContentTypes(String s, int i, String s1)
        {
            super(s, i);
            mName = s1;
        }
    }

    public static final class Methods extends Enum
    {

        private static final Methods $VALUES[];
        public static final Methods DELETE;
        public static final Methods GET;
        public static final Methods OPTIONS;
        public static final Methods POST;
        public static final Methods PUT;

        public static Methods valueOf(String s)
        {
            return (Methods)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequest$Methods, s);
        }

        public static Methods[] values()
        {
            return (Methods[])$VALUES.clone();
        }

        static 
        {
            GET = new Methods("GET", 0);
            POST = new Methods("POST", 1);
            PUT = new Methods("PUT", 2);
            DELETE = new Methods("DELETE", 3);
            OPTIONS = new Methods("OPTIONS", 4);
            $VALUES = (new Methods[] {
                GET, POST, PUT, DELETE, OPTIONS
            });
        }

        private Methods(String s, int i)
        {
            super(s, i);
        }
    }

    class SSLSocketFactoryWrapper extends SSLSocketFactory
    {

        public SSLSocketFactory mFactory;
        private WeakReference mSocket;
        final BoxRequest this$0;

        private Socket wrapSocket(Socket socket)
        {
            mSocket = new WeakReference(socket);
            return socket;
        }

        public Socket createSocket(String s, int i)
        {
            return wrapSocket(mFactory.createSocket(s, i));
        }

        public Socket createSocket(String s, int i, InetAddress inetaddress, int j)
        {
            return wrapSocket(mFactory.createSocket(s, i, inetaddress, j));
        }

        public Socket createSocket(InetAddress inetaddress, int i)
        {
            return wrapSocket(mFactory.createSocket(inetaddress, i));
        }

        public Socket createSocket(InetAddress inetaddress, int i, InetAddress inetaddress1, int j)
        {
            return wrapSocket(mFactory.createSocket(inetaddress, i, inetaddress1, j));
        }

        public Socket createSocket(Socket socket, String s, int i, boolean flag)
        {
            return wrapSocket(mFactory.createSocket(socket, s, i, flag));
        }

        public String[] getDefaultCipherSuites()
        {
            return mFactory.getDefaultCipherSuites();
        }

        public Socket getSocket()
        {
            if (mSocket != null)
            {
                return (Socket)mSocket.get();
            } else
            {
                return null;
            }
        }

        public String[] getSupportedCipherSuites()
        {
            return mFactory.getDefaultCipherSuites();
        }

        public SSLSocketFactoryWrapper(SSLSocketFactory sslsocketfactory)
        {
            this$0 = BoxRequest.this;
            super();
            mFactory = sslsocketfactory;
        }
    }


    public static final String JSON_OBJECT = "json_object";
    protected LinkedHashMap mBodyMap;
    Class mClazz;
    protected ContentTypes mContentType;
    protected LinkedHashMap mHeaderMap;
    private String mIfMatchEtag;
    private String mIfNoneMatchEtag;
    protected transient ProgressListener mListener;
    protected HashMap mQueryMap;
    transient BoxRequestHandler mRequestHandler;
    protected Methods mRequestMethod;
    protected String mRequestUrlString;
    protected boolean mRequiresSocket;
    protected BoxSession mSession;
    private transient WeakReference mSocketFactoryRef;
    private String mStringBody;
    protected int mTimeout;

    protected BoxRequest(BoxRequest boxrequest)
    {
        mQueryMap = new HashMap();
        mBodyMap = new LinkedHashMap();
        mHeaderMap = new LinkedHashMap();
        mContentType = ContentTypes.JSON;
        mRequiresSocket = false;
        mSession = boxrequest.getSession();
        mClazz = boxrequest.mClazz;
        mRequestHandler = boxrequest.getRequestHandler();
        mRequestMethod = boxrequest.mRequestMethod;
        mContentType = boxrequest.mContentType;
        mIfMatchEtag = boxrequest.getIfMatchEtag();
        mListener = boxrequest.mListener;
        mRequestUrlString = boxrequest.mRequestUrlString;
        mIfNoneMatchEtag = boxrequest.getIfNoneMatchEtag();
        mTimeout = boxrequest.mTimeout;
        mStringBody = boxrequest.mStringBody;
        importRequestContentMapsFrom(boxrequest);
    }

    public BoxRequest(Class class1, String s, BoxSession boxsession)
    {
        mQueryMap = new HashMap();
        mBodyMap = new LinkedHashMap();
        mHeaderMap = new LinkedHashMap();
        mContentType = ContentTypes.JSON;
        mRequiresSocket = false;
        mClazz = class1;
        mRequestUrlString = s;
        mSession = boxsession;
        setRequestHandler(new BoxRequestHandler(this));
    }

    private void appendPairsToStringBuilder(StringBuilder stringbuilder, HashMap hashmap)
    {
        String s;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); stringbuilder.append((String)hashmap.get(s)))
        {
            s = (String)iterator.next();
            stringbuilder.append(s);
        }

    }

    private boolean areHashMapsSame(HashMap hashmap, HashMap hashmap1)
    {
        if (hashmap.size() != hashmap1.size())
        {
            return false;
        }
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (!hashmap1.containsKey(s))
            {
                return false;
            }
            if (!((String)hashmap.get(s)).equals(hashmap1.get(s)))
            {
                return false;
            }
        }

        return true;
    }

    private BoxRequest getCacheableRequest()
    {
        return this;
    }

    private BoxObject handleSendException(BoxRequestHandler boxrequesthandler, BoxHttpResponse boxhttpresponse, Exception exception)
    {
        if (exception instanceof BoxException)
        {
            if (boxrequesthandler.onException(this, boxhttpresponse, (BoxException)exception))
            {
                return send();
            } else
            {
                throw (BoxException)exception;
            }
        } else
        {
            exception = new BoxException("Couldn't connect to the Box API due to a network error.", exception);
            boxrequesthandler.onException(this, boxhttpresponse, exception);
            throw exception;
        }
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        mRequestHandler = new BoxRequestHandler(this);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        objectoutputstream.defaultWriteObject();
    }

    protected URL buildUrl()
    {
        String s = createQuery(mQueryMap);
        if (TextUtils.isEmpty(s))
        {
            return new URL(mRequestUrlString);
        } else
        {
            return new URL(String.format(Locale.ENGLISH, "%s?%s", new Object[] {
                mRequestUrlString, s
            }));
        }
    }

    protected void createHeaderMap()
    {
        mHeaderMap.clear();
        Object obj = mSession.getAuthInfo();
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = ((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) (obj)).accessToken();
        }
        if (!SdkUtils.isEmptyString(((String) (obj))))
        {
            mHeaderMap.put("Authorization", String.format(Locale.ENGLISH, "Bearer %s", new Object[] {
                obj
            }));
        }
        mHeaderMap.put("User-Agent", mSession.getUserAgent());
        mHeaderMap.put("Accept-Encoding", "gzip");
        mHeaderMap.put("Accept-Charset", "utf-8");
        mHeaderMap.put("Content-Type", mContentType.toString());
        if (mIfMatchEtag != null)
        {
            mHeaderMap.put("If-Match", mIfMatchEtag);
        }
        if (mIfNoneMatchEtag != null)
        {
            mHeaderMap.put("If-None-Match", mIfNoneMatchEtag);
        }
        if (mSession instanceof BoxSharedLinkSession)
        {
            BoxSharedLinkSession boxsharedlinksession = (BoxSharedLinkSession)mSession;
            if (!TextUtils.isEmpty(boxsharedlinksession.getSharedLink()))
            {
                obj = String.format(Locale.ENGLISH, "shared_link=%s", new Object[] {
                    boxsharedlinksession.getSharedLink()
                });
                if (!TextUtils.isEmpty(boxsharedlinksession.getPassword()))
                {
                    obj = (new StringBuilder()).append(((String) (obj))).append(String.format(Locale.ENGLISH, "&shared_link_password=%s", new Object[] {
                        boxsharedlinksession.getPassword()
                    })).toString();
                }
                mHeaderMap.put("BoxApi", obj);
            }
        }
    }

    protected BoxHttpRequest createHttpRequest()
    {
        BoxHttpRequest boxhttprequest = new BoxHttpRequest(buildUrl(), mRequestMethod, mListener);
        setHeaders(boxhttprequest);
        setBody(boxhttprequest);
        return boxhttprequest;
    }

    protected String createQuery(Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = "%s=%s";
        Iterator iterator = map.entrySet().iterator();
        boolean flag = true;
        map = s;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            stringbuilder.append(String.format(Locale.ENGLISH, map, new Object[] {
                URLEncoder.encode((String)entry.getKey(), "UTF-8"), URLEncoder.encode((String)entry.getValue(), "UTF-8")
            }));
            if (flag)
            {
                map = (new StringBuilder("&")).append(map).toString();
                flag = false;
            }
        } while (true);
        return stringbuilder.toString();
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof BoxRequest)
        {
            if (mRequestMethod == ((BoxRequest) (obj = (BoxRequest)obj)).mRequestMethod && mRequestUrlString.equals(((BoxRequest) (obj)).mRequestUrlString) && areHashMapsSame(mHeaderMap, ((BoxRequest) (obj)).mHeaderMap) && areHashMapsSame(mQueryMap, ((BoxRequest) (obj)).mQueryMap))
            {
                return true;
            }
        }
        return false;
    }

    protected String getIfMatchEtag()
    {
        return mIfMatchEtag;
    }

    protected String getIfNoneMatchEtag()
    {
        return mIfNoneMatchEtag;
    }

    public BoxRequestHandler getRequestHandler()
    {
        return mRequestHandler;
    }

    public BoxSession getSession()
    {
        return mSession;
    }

    protected Socket getSocket()
    {
        if (mSocketFactoryRef != null && mSocketFactoryRef.get() != null)
        {
            return ((SSLSocketFactoryWrapper)mSocketFactoryRef.get()).getSocket();
        } else
        {
            return null;
        }
    }

    public String getStringBody()
    {
        if (mStringBody != null)
        {
            return mStringBody;
        }
        static class _cls1
        {

            static final int $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[];

            static 
            {
                $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes = new int[ContentTypes.values().length];
                try
                {
                    $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[ContentTypes.JSON.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[ContentTypes.URL_ENCODED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[ContentTypes.JSON_PATCH.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.box.androidsdk.content.requests.BoxRequest.ContentTypes[mContentType.ordinal()];
        JVM INSTR tableswitch 1 3: default 48
    //                   1 53
    //                   2 111
    //                   3 186;
           goto _L1 _L2 _L3 _L4
_L1:
        return mStringBody;
_L2:
        JsonObject jsonobject = new JsonObject();
        for (Iterator iterator = mBodyMap.entrySet().iterator(); iterator.hasNext(); parseHashMapEntry(jsonobject, (java.util.Map.Entry)iterator.next())) { }
        mStringBody = jsonobject.toString();
        continue; /* Loop/switch isn't completed */
_L3:
        HashMap hashmap = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator1 = mBodyMap.entrySet().iterator(); iterator1.hasNext(); hashmap.put(entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator1.next();
        }

        mStringBody = createQuery(hashmap);
        continue; /* Loop/switch isn't completed */
_L4:
        mStringBody = ((BoxArray)mBodyMap.get("json_object")).toJson();
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected BoxObject handleSendForCachedResult()
    {
        BoxCache boxcache = BoxConfig.getCache();
        if (boxcache == null)
        {
            throw new com.box.androidsdk.content.BoxException.CacheImplementationNotFound();
        } else
        {
            return boxcache.get(getCacheableRequest());
        }
    }

    protected BoxFutureTask handleToTaskForCachedResult()
    {
        BoxCache boxcache = BoxConfig.getCache();
        if (boxcache == null)
        {
            throw new com.box.androidsdk.content.BoxException.CacheImplementationNotFound();
        } else
        {
            return new BoxCacheFutureTask(mClazz, getCacheableRequest(), boxcache);
        }
    }

    protected void handleUpdateCache(BoxResponse boxresponse)
    {
        BoxCache boxcache = BoxConfig.getCache();
        if (boxcache != null)
        {
            boxcache.put(boxresponse);
        }
    }

    public int hashCode()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mRequestMethod);
        stringbuilder.append(mRequestUrlString);
        appendPairsToStringBuilder(stringbuilder, mHeaderMap);
        appendPairsToStringBuilder(stringbuilder, mQueryMap);
        return stringbuilder.toString().hashCode();
    }

    protected void importRequestContentMapsFrom(BoxRequest boxrequest)
    {
        mQueryMap = new HashMap(boxrequest.mQueryMap);
        mBodyMap = new LinkedHashMap(boxrequest.mBodyMap);
    }

    protected void logDebug(BoxHttpResponse boxhttpresponse)
    {
        logRequest();
        BoxLogUtils.i("BoxContentSdk", String.format(Locale.ENGLISH, "Response (%s):  %s", new Object[] {
            Integer.valueOf(boxhttpresponse.getResponseCode()), boxhttpresponse.getStringBody()
        }));
    }

    protected void logRequest()
    {
        String s = null;
        String s1 = buildUrl().toString();
        s = s1;
_L5:
        BoxLogUtils.i("BoxContentSdk", String.format(Locale.ENGLISH, "Request (%s):  %s", new Object[] {
            mRequestMethod, s
        }));
        BoxLogUtils.i("BoxContentSdk", "Request Header", mHeaderMap);
        _cls1..SwitchMap.com.box.androidsdk.content.requests.BoxRequest.ContentTypes[mContentType.ordinal()];
        JVM INSTR tableswitch 1 3: default 92
    //                   1 93
    //                   2 130
    //                   3 93;
           goto _L1 _L2 _L3 _L2
_L1:
        return;
_L2:
        if (!SdkUtils.isBlank(mStringBody))
        {
            BoxLogUtils.i("BoxContentSdk", String.format(Locale.ENGLISH, "Request JSON:  %s", new Object[] {
                mStringBody
            }));
            return;
        }
          goto _L1
_L3:
        HashMap hashmap = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator = mBodyMap.entrySet().iterator(); iterator.hasNext(); hashmap.put(entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        BoxLogUtils.i("BoxContentSdk", "Request Form Data", hashmap);
        return;
        Object obj;
        obj;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected BoxObject onSend()
    {
        Object obj2;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        BoxRequestHandler boxrequesthandler;
        obj7 = null;
        obj6 = null;
        obj5 = null;
        obj4 = null;
        obj8 = null;
        obj9 = null;
        obj10 = null;
        obj2 = null;
        boxrequesthandler = getRequestHandler();
        Object obj1;
        BoxHttpRequest boxhttprequest;
        boxhttprequest = createHttpRequest();
        obj1 = boxhttprequest.getUrlConnection();
        Object obj;
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        if (!mRequiresSocket)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        if (!(obj1 instanceof HttpsURLConnection))
        {
            break MISSING_BLOCK_LABEL_179;
        }
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        SSLSocketFactoryWrapper sslsocketfactorywrapper = new SSLSocketFactoryWrapper(((HttpsURLConnection)obj1).getSSLSocketFactory());
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        mSocketFactoryRef = new WeakReference(sslsocketfactorywrapper);
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        ((HttpsURLConnection)obj1).setSSLSocketFactory(sslsocketfactorywrapper);
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        if (mTimeout <= 0)
        {
            break MISSING_BLOCK_LABEL_253;
        }
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        ((HttpURLConnection) (obj1)).setConnectTimeout(mTimeout);
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        ((HttpURLConnection) (obj1)).setReadTimeout(mTimeout);
        obj7 = obj2;
        obj = obj1;
        obj4 = obj8;
        obj5 = obj9;
        obj6 = obj10;
        obj2 = sendRequest(boxhttprequest, ((HttpURLConnection) (obj1)));
        obj7 = obj2;
        obj = obj1;
        obj4 = obj2;
        obj5 = obj2;
        obj6 = obj2;
        logDebug(((BoxHttpResponse) (obj2)));
        obj7 = obj2;
        obj = obj1;
        obj4 = obj2;
        obj5 = obj2;
        obj6 = obj2;
        if (!boxrequesthandler.isResponseSuccess(((BoxHttpResponse) (obj2)))) goto _L2; else goto _L1
_L1:
        obj7 = obj2;
        obj = obj1;
        obj4 = obj2;
        obj5 = obj2;
        obj6 = obj2;
        obj2 = boxrequesthandler.onResponse(mClazz, ((BoxHttpResponse) (obj2)));
        obj = obj2;
        if (obj1 != null)
        {
            ((HttpURLConnection) (obj1)).disconnect();
            obj = obj2;
        }
_L4:
        return ((BoxObject) (obj));
_L2:
        obj7 = obj2;
        obj = obj1;
        obj4 = obj2;
        obj5 = obj2;
        obj6 = obj2;
        throw new BoxException("An error occurred while sending the request", ((BoxHttpResponse) (obj2)));
        Object obj3;
        obj3;
_L13:
        obj = obj1;
        obj3 = handleSendException(boxrequesthandler, ((BoxHttpResponse) (obj7)), ((Exception) (obj3)));
        obj = obj3;
        if (obj1 == null) goto _L4; else goto _L3
_L3:
        ((HttpURLConnection) (obj1)).disconnect();
        return ((BoxObject) (obj3));
        obj3;
        obj1 = null;
_L12:
        obj = obj1;
        obj3 = handleSendException(boxrequesthandler, ((BoxHttpResponse) (obj6)), ((Exception) (obj3)));
        obj = obj3;
        if (obj1 == null) goto _L4; else goto _L5
_L5:
        ((HttpURLConnection) (obj1)).disconnect();
        return ((BoxObject) (obj3));
        obj3;
        obj1 = null;
_L11:
        obj = obj1;
        obj3 = handleSendException(boxrequesthandler, ((BoxHttpResponse) (obj5)), ((Exception) (obj3)));
        obj = obj3;
        if (obj1 == null) goto _L4; else goto _L6
_L6:
        ((HttpURLConnection) (obj1)).disconnect();
        return ((BoxObject) (obj3));
        obj3;
        obj1 = null;
_L10:
        obj = obj1;
        obj3 = handleSendException(boxrequesthandler, ((BoxHttpResponse) (obj4)), ((Exception) (obj3)));
        obj = obj3;
        if (obj1 == null) goto _L4; else goto _L7
_L7:
        ((HttpURLConnection) (obj1)).disconnect();
        return ((BoxObject) (obj3));
        obj1;
        obj = null;
_L9:
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
        }
        throw obj1;
        obj1;
        if (true) goto _L9; else goto _L8
_L8:
        obj3;
          goto _L10
        obj3;
          goto _L11
        obj3;
          goto _L12
        obj3;
        obj1 = null;
          goto _L13
    }

    public void onSendCompleted(BoxResponse boxresponse)
    {
    }

    protected void parseHashMapEntry(JsonObject jsonobject, java.util.Map.Entry entry)
    {
        Object obj = entry.getValue();
        if (obj instanceof BoxJsonObject)
        {
            jsonobject.add((String)entry.getKey(), parseJsonObject(obj));
            return;
        }
        if (obj instanceof Double)
        {
            jsonobject.add((String)entry.getKey(), Double.toString(((Double)obj).doubleValue()));
            return;
        }
        if ((obj instanceof Enum) || (obj instanceof Boolean))
        {
            jsonobject.add((String)entry.getKey(), obj.toString());
            return;
        }
        if (obj instanceof JsonArray)
        {
            jsonobject.add((String)entry.getKey(), (JsonArray)obj);
            return;
        } else
        {
            jsonobject.add((String)entry.getKey(), (String)entry.getValue());
            return;
        }
    }

    protected JsonValue parseJsonObject(Object obj)
    {
        return JsonValue.readFrom(((BoxJsonObject)obj).toJson());
    }

    public final BoxObject send()
    {
        BoxObject boxobject = null;
        BoxObject boxobject1 = onSend();
        Exception exception;
        exception = null;
        boxobject = boxobject1;
_L1:
        onSendCompleted(new BoxResponse(boxobject, exception, this));
        if (exception != null)
        {
            if (exception instanceof BoxException)
            {
                throw (BoxException)exception;
            } else
            {
                throw new BoxException("unexpected exception ", exception);
            }
        } else
        {
            return boxobject;
        }
        exception;
          goto _L1
    }

    protected BoxHttpResponse sendRequest(BoxHttpRequest boxhttprequest, HttpURLConnection httpurlconnection)
    {
        boxhttprequest = new BoxHttpResponse(httpurlconnection);
        boxhttprequest.open();
        return boxhttprequest;
    }

    protected void setBody(BoxHttpRequest boxhttprequest)
    {
        if (!mBodyMap.isEmpty())
        {
            boxhttprequest.setBody(new ByteArrayInputStream(getStringBody().getBytes("UTF-8")));
        }
    }

    public BoxRequest setContentType(ContentTypes contenttypes)
    {
        mContentType = contenttypes;
        return this;
    }

    protected void setHeaders(BoxHttpRequest boxhttprequest)
    {
        createHeaderMap();
        java.util.Map.Entry entry;
        for (Iterator iterator = mHeaderMap.entrySet().iterator(); iterator.hasNext(); boxhttprequest.addHeader((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    protected BoxRequest setIfMatchEtag(String s)
    {
        mIfMatchEtag = s;
        return this;
    }

    protected BoxRequest setIfNoneMatchEtag(String s)
    {
        mIfNoneMatchEtag = s;
        return this;
    }

    public BoxRequest setRequestHandler(BoxRequestHandler boxrequesthandler)
    {
        mRequestHandler = boxrequesthandler;
        return this;
    }

    public BoxRequest setTimeOut(int i)
    {
        mTimeout = i;
        return this;
    }

    public BoxFutureTask toTask()
    {
        return new BoxFutureTask(mClazz, this);
    }
}
