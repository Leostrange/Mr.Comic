package com.box.androidsdk.content.requests;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.box.androidsdk.content.BoxCache;
import com.box.androidsdk.content.BoxCacheFutureTask;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BlockedIPErrorActivity;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxArray;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLinkSession;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import defpackage.hc;
import java.io.ByteArrayInputStream;
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
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpHeaders;
import org.apache.http.protocol.HTTP;

public abstract class BoxRequest<T extends BoxObject, R extends BoxRequest<T, R>> implements Serializable {
    public static final String JSON_OBJECT = "json_object";
    protected LinkedHashMap<String, Object> mBodyMap = new LinkedHashMap<>();
    Class<T> mClazz;
    protected ContentTypes mContentType = ContentTypes.JSON;
    protected LinkedHashMap<String, String> mHeaderMap = new LinkedHashMap<>();
    private String mIfMatchEtag;
    private String mIfNoneMatchEtag;
    protected transient ProgressListener mListener;
    protected HashMap<String, String> mQueryMap = new HashMap<>();
    transient BoxRequestHandler mRequestHandler;
    protected Methods mRequestMethod;
    protected String mRequestUrlString;
    protected boolean mRequiresSocket = false;
    protected BoxSession mSession;
    private transient WeakReference<BoxRequest<T, R>.SSLSocketFactoryWrapper> mSocketFactoryRef;
    private String mStringBody;
    protected int mTimeout;

    public static class BoxRequestHandler<R extends BoxRequest> {
        private static final int DEFAULT_AUTH_REFRESH_RETRY = 4;
        protected static final int DEFAULT_NUM_RETRIES = 1;
        protected static final int DEFAULT_RATE_LIMIT_WAIT = 20;
        public static final String OAUTH_ERROR_HEADER = "error";
        public static final String OAUTH_INVALID_TOKEN = "invalid_token";
        public static final String WWW_AUTHENTICATE = "WWW-Authenticate";
        protected int mNumRateLimitRetries = 0;
        private int mRefreshRetries = 0;
        protected R mRequest;

        public BoxRequestHandler(R r) {
            this.mRequest = r;
        }

        private boolean authFailed(BoxHttpResponse boxHttpResponse) {
            return boxHttpResponse != null && boxHttpResponse.getResponseCode() == 401;
        }

        protected static int getRetryAfterFromResponse(BoxHttpResponse boxHttpResponse, int i) {
            int i2;
            String headerField = boxHttpResponse.getHttpURLConnection().getHeaderField(HttpHeaders.RETRY_AFTER);
            if (!SdkUtils.isBlank(headerField)) {
                try {
                    i2 = Integer.parseInt(headerField);
                } catch (NumberFormatException e) {
                    i2 = i;
                }
                if (i2 <= 0) {
                    i2 = 1;
                }
            } else {
                i2 = i;
            }
            return i2 * 1000;
        }

        private boolean isInvalidTokenError(String str) {
            String[] split = str.split("=");
            return split.length == 2 && split[0] != null && split[1] != null && "error".equalsIgnoreCase(split[0].trim()) && OAUTH_INVALID_TOKEN.equalsIgnoreCase(split[1].replace("\"", "").trim());
        }

        private boolean oauthExpired(BoxHttpResponse boxHttpResponse) {
            if (boxHttpResponse == null || 401 != boxHttpResponse.getResponseCode()) {
                return false;
            }
            String headerField = boxHttpResponse.mConnection.getHeaderField("WWW-Authenticate");
            if (SdkUtils.isEmptyString(headerField)) {
                return false;
            }
            for (String isInvalidTokenError : headerField.split(",")) {
                if (isInvalidTokenError(isInvalidTokenError)) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: protected */
        public void disconnectForInterrupt(BoxHttpResponse boxHttpResponse) {
            try {
                boxHttpResponse.getHttpURLConnection().disconnect();
            } catch (Exception e) {
                BoxLogUtils.e("Interrupt disconnect", (Throwable) e);
            }
            throw new BoxException("Thread interrupted request cancelled ", (Throwable) new InterruptedException());
        }

        public boolean isResponseSuccess(BoxHttpResponse boxHttpResponse) {
            int responseCode = boxHttpResponse.getResponseCode();
            return (responseCode >= 200 && responseCode < 300) || responseCode == 429;
        }

        public boolean onException(BoxRequest boxRequest, BoxHttpResponse boxHttpResponse, BoxException boxException) {
            BoxException.ErrorType errorType;
            BoxSession session = boxRequest.getSession();
            if (oauthExpired(boxHttpResponse)) {
                try {
                    BoxResponse boxResponse = (BoxResponse) session.refresh().get();
                    if (boxResponse.isSuccess()) {
                        return true;
                    }
                    if (boxResponse.getException() != null) {
                        if (!(boxResponse.getException() instanceof BoxException.RefreshFailure)) {
                            return false;
                        }
                        throw ((BoxException.RefreshFailure) boxResponse.getException());
                    }
                } catch (InterruptedException e) {
                    BoxLogUtils.e("oauthRefresh", "Interrupted Exception", e);
                } catch (ExecutionException e2) {
                    BoxLogUtils.e("oauthRefresh", "Interrupted Exception", e2);
                }
            } else if (authFailed(boxHttpResponse)) {
                BoxException.ErrorType errorType2 = boxException.getErrorType();
                if (!session.suppressesAuthErrorUIAfterLogin()) {
                    Context applicationContext = session.getApplicationContext();
                    if (errorType2 == BoxException.ErrorType.IP_BLOCKED || errorType2 == BoxException.ErrorType.LOCATION_BLOCKED) {
                        Intent intent = new Intent(session.getApplicationContext(), BlockedIPErrorActivity.class);
                        intent.addFlags(268435456);
                        applicationContext.startActivity(intent);
                        return false;
                    }
                    if (errorType2 == BoxException.ErrorType.TERMS_OF_SERVICE_REQUIRED) {
                        SdkUtils.toastSafely(applicationContext, hc.e.boxsdk_error_terms_of_service, 1);
                    }
                    try {
                        if (this.mRefreshRetries > 4) {
                            String str = " Exceeded max refresh retries for " + boxRequest.getClass().getName() + " response code" + boxException.getResponseCode() + " response " + boxHttpResponse;
                            if (boxException.getAsBoxError() != null) {
                                str = str + boxException.getAsBoxError().toJson();
                            }
                            BoxLogUtils.nonFatalE("authFailed", str, boxException);
                            return false;
                        }
                        BoxResponse boxResponse2 = (BoxResponse) session.refresh().get();
                        if (boxResponse2.isSuccess()) {
                            this.mRefreshRetries++;
                            return true;
                        } else if (boxResponse2.getException() != null) {
                            if (!(boxResponse2.getException() instanceof BoxException.RefreshFailure)) {
                                return false;
                            }
                            throw ((BoxException.RefreshFailure) boxResponse2.getException());
                        }
                    } catch (InterruptedException e3) {
                        BoxLogUtils.e("oauthRefresh", "Interrupted Exception", e3);
                    } catch (ExecutionException e4) {
                        BoxLogUtils.e("oauthRefresh", "Interrupted Exception", e4);
                    }
                }
            } else if (boxHttpResponse != null && boxHttpResponse.getResponseCode() == 403 && ((errorType = boxException.getErrorType()) == BoxException.ErrorType.IP_BLOCKED || errorType == BoxException.ErrorType.LOCATION_BLOCKED)) {
                Context applicationContext2 = session.getApplicationContext();
                Intent intent2 = new Intent(session.getApplicationContext(), BlockedIPErrorActivity.class);
                intent2.addFlags(268435456);
                applicationContext2.startActivity(intent2);
                return false;
            }
            return false;
        }

        public <T extends BoxObject> T onResponse(Class<T> cls, BoxHttpResponse boxHttpResponse) {
            if (boxHttpResponse.getResponseCode() == 429) {
                return retryRateLimited(boxHttpResponse);
            }
            if (Thread.currentThread().isInterrupted()) {
                disconnectForInterrupt(boxHttpResponse);
            }
            String contentType = boxHttpResponse.getContentType();
            T t = (BoxObject) cls.newInstance();
            if (!(t instanceof BoxJsonObject) || !contentType.contains(ContentTypes.JSON.toString())) {
                return t;
            }
            ((BoxJsonObject) t).createFromJson(boxHttpResponse.getStringBody());
            return t;
        }

        /* access modifiers changed from: protected */
        public <T extends BoxObject> T retryRateLimited(BoxHttpResponse boxHttpResponse) {
            if (this.mNumRateLimitRetries <= 0) {
                this.mNumRateLimitRetries++;
                try {
                    Thread.sleep((long) getRetryAfterFromResponse(boxHttpResponse, ((int) (10.0d * Math.random())) + 20));
                    return this.mRequest.send();
                } catch (InterruptedException e) {
                    throw new BoxException(e.getMessage(), (Throwable) e);
                }
            } else {
                throw new BoxException.RateLimitAttemptsExceeded("Max attempts exceeded", this.mNumRateLimitRetries, boxHttpResponse);
            }
        }
    }

    public enum ContentTypes {
        JSON("application/json"),
        URL_ENCODED("application/x-www-form-urlencoded"),
        JSON_PATCH("application/json-patch+json");
        
        private String mName;

        private ContentTypes(String str) {
            this.mName = str;
        }

        public final String toString() {
            return this.mName;
        }
    }

    public enum Methods {
        GET,
        POST,
        PUT,
        DELETE,
        OPTIONS
    }

    class SSLSocketFactoryWrapper extends SSLSocketFactory {
        public SSLSocketFactory mFactory;
        private WeakReference<Socket> mSocket;

        public SSLSocketFactoryWrapper(SSLSocketFactory sSLSocketFactory) {
            this.mFactory = sSLSocketFactory;
        }

        private Socket wrapSocket(Socket socket) {
            this.mSocket = new WeakReference<>(socket);
            return socket;
        }

        public Socket createSocket(String str, int i) {
            return wrapSocket(this.mFactory.createSocket(str, i));
        }

        public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
            return wrapSocket(this.mFactory.createSocket(str, i, inetAddress, i2));
        }

        public Socket createSocket(InetAddress inetAddress, int i) {
            return wrapSocket(this.mFactory.createSocket(inetAddress, i));
        }

        public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
            return wrapSocket(this.mFactory.createSocket(inetAddress, i, inetAddress2, i2));
        }

        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return wrapSocket(this.mFactory.createSocket(socket, str, i, z));
        }

        public String[] getDefaultCipherSuites() {
            return this.mFactory.getDefaultCipherSuites();
        }

        public Socket getSocket() {
            if (this.mSocket != null) {
                return (Socket) this.mSocket.get();
            }
            return null;
        }

        public String[] getSupportedCipherSuites() {
            return this.mFactory.getDefaultCipherSuites();
        }
    }

    protected BoxRequest(BoxRequest boxRequest) {
        this.mSession = boxRequest.getSession();
        this.mClazz = boxRequest.mClazz;
        this.mRequestHandler = boxRequest.getRequestHandler();
        this.mRequestMethod = boxRequest.mRequestMethod;
        this.mContentType = boxRequest.mContentType;
        this.mIfMatchEtag = boxRequest.getIfMatchEtag();
        this.mListener = boxRequest.mListener;
        this.mRequestUrlString = boxRequest.mRequestUrlString;
        this.mIfNoneMatchEtag = boxRequest.getIfNoneMatchEtag();
        this.mTimeout = boxRequest.mTimeout;
        this.mStringBody = boxRequest.mStringBody;
        importRequestContentMapsFrom(boxRequest);
    }

    public BoxRequest(Class<T> cls, String str, BoxSession boxSession) {
        this.mClazz = cls;
        this.mRequestUrlString = str;
        this.mSession = boxSession;
        setRequestHandler(new BoxRequestHandler(this));
    }

    private void appendPairsToStringBuilder(StringBuilder sb, HashMap<String, String> hashMap) {
        for (String next : hashMap.keySet()) {
            sb.append(next);
            sb.append(hashMap.get(next));
        }
    }

    private boolean areHashMapsSame(HashMap<String, String> hashMap, HashMap<String, String> hashMap2) {
        if (hashMap.size() != hashMap2.size()) {
            return false;
        }
        for (String next : hashMap.keySet()) {
            if (!hashMap2.containsKey(next)) {
                return false;
            }
            if (!hashMap.get(next).equals(hashMap2.get(next))) {
                return false;
            }
        }
        return true;
    }

    private <T extends BoxRequest & BoxCacheableRequest> T getCacheableRequest() {
        return this;
    }

    private T handleSendException(BoxRequestHandler boxRequestHandler, BoxHttpResponse boxHttpResponse, Exception exc) {
        if (!(exc instanceof BoxException)) {
            BoxException boxException = new BoxException("Couldn't connect to the Box API due to a network error.", (Throwable) exc);
            boxRequestHandler.onException(this, boxHttpResponse, boxException);
            throw boxException;
        } else if (boxRequestHandler.onException(this, boxHttpResponse, (BoxException) exc)) {
            return send();
        } else {
            throw ((BoxException) exc);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.mRequestHandler = new BoxRequestHandler(this);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
    }

    /* access modifiers changed from: protected */
    public URL buildUrl() {
        String createQuery = createQuery(this.mQueryMap);
        if (TextUtils.isEmpty(createQuery)) {
            return new URL(this.mRequestUrlString);
        }
        return new URL(String.format(Locale.ENGLISH, "%s?%s", new Object[]{this.mRequestUrlString, createQuery}));
    }

    /* access modifiers changed from: protected */
    public void createHeaderMap() {
        this.mHeaderMap.clear();
        BoxAuthentication.BoxAuthenticationInfo authInfo = this.mSession.getAuthInfo();
        String accessToken = authInfo == null ? null : authInfo.accessToken();
        if (!SdkUtils.isEmptyString(accessToken)) {
            this.mHeaderMap.put(HttpHeaders.AUTHORIZATION, String.format(Locale.ENGLISH, "Bearer %s", new Object[]{accessToken}));
        }
        this.mHeaderMap.put("User-Agent", this.mSession.getUserAgent());
        this.mHeaderMap.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
        this.mHeaderMap.put(HttpHeaders.ACCEPT_CHARSET, "utf-8");
        this.mHeaderMap.put("Content-Type", this.mContentType.toString());
        if (this.mIfMatchEtag != null) {
            this.mHeaderMap.put(HttpHeaders.IF_MATCH, this.mIfMatchEtag);
        }
        if (this.mIfNoneMatchEtag != null) {
            this.mHeaderMap.put(HttpHeaders.IF_NONE_MATCH, this.mIfNoneMatchEtag);
        }
        if (this.mSession instanceof BoxSharedLinkSession) {
            BoxSharedLinkSession boxSharedLinkSession = (BoxSharedLinkSession) this.mSession;
            if (!TextUtils.isEmpty(boxSharedLinkSession.getSharedLink())) {
                String format = String.format(Locale.ENGLISH, "shared_link=%s", new Object[]{boxSharedLinkSession.getSharedLink()});
                this.mHeaderMap.put("BoxApi", !TextUtils.isEmpty(boxSharedLinkSession.getPassword()) ? format + String.format(Locale.ENGLISH, "&shared_link_password=%s", new Object[]{boxSharedLinkSession.getPassword()}) : format);
            }
        }
    }

    /* access modifiers changed from: protected */
    public BoxHttpRequest createHttpRequest() {
        BoxHttpRequest boxHttpRequest = new BoxHttpRequest(buildUrl(), this.mRequestMethod, this.mListener);
        setHeaders(boxHttpRequest);
        setBody(boxHttpRequest);
        return boxHttpRequest;
    }

    /* access modifiers changed from: protected */
    public String createQuery(Map<String, String> map) {
        boolean z;
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "%s=%s";
        boolean z2 = true;
        for (Map.Entry next : map.entrySet()) {
            sb.append(String.format(Locale.ENGLISH, str2, new Object[]{URLEncoder.encode((String) next.getKey(), HTTP.UTF_8), URLEncoder.encode((String) next.getValue(), HTTP.UTF_8)}));
            if (z2) {
                str = "&" + str2;
                z = false;
            } else {
                z = z2;
                str = str2;
            }
            z2 = z;
            str2 = str;
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BoxRequest)) {
            return false;
        }
        BoxRequest boxRequest = (BoxRequest) obj;
        return this.mRequestMethod == boxRequest.mRequestMethod && this.mRequestUrlString.equals(boxRequest.mRequestUrlString) && areHashMapsSame(this.mHeaderMap, boxRequest.mHeaderMap) && areHashMapsSame(this.mQueryMap, boxRequest.mQueryMap);
    }

    /* access modifiers changed from: protected */
    public String getIfMatchEtag() {
        return this.mIfMatchEtag;
    }

    /* access modifiers changed from: protected */
    public String getIfNoneMatchEtag() {
        return this.mIfNoneMatchEtag;
    }

    public BoxRequestHandler getRequestHandler() {
        return this.mRequestHandler;
    }

    public BoxSession getSession() {
        return this.mSession;
    }

    /* access modifiers changed from: protected */
    public Socket getSocket() {
        if (this.mSocketFactoryRef == null || this.mSocketFactoryRef.get() == null) {
            return null;
        }
        return ((SSLSocketFactoryWrapper) this.mSocketFactoryRef.get()).getSocket();
    }

    public String getStringBody() {
        if (this.mStringBody != null) {
            return this.mStringBody;
        }
        switch (this.mContentType) {
            case JSON:
                JsonObject jsonObject = new JsonObject();
                for (Map.Entry<String, Object> parseHashMapEntry : this.mBodyMap.entrySet()) {
                    parseHashMapEntry(jsonObject, parseHashMapEntry);
                }
                this.mStringBody = jsonObject.toString();
                break;
            case URL_ENCODED:
                HashMap hashMap = new HashMap();
                for (Map.Entry next : this.mBodyMap.entrySet()) {
                    hashMap.put(next.getKey(), (String) next.getValue());
                }
                this.mStringBody = createQuery(hashMap);
                break;
            case JSON_PATCH:
                this.mStringBody = ((BoxArray) this.mBodyMap.get(JSON_OBJECT)).toJson();
                break;
        }
        return this.mStringBody;
    }

    /* access modifiers changed from: protected */
    public T handleSendForCachedResult() {
        BoxCache cache = BoxConfig.getCache();
        if (cache != null) {
            return cache.get(getCacheableRequest());
        }
        throw new BoxException.CacheImplementationNotFound();
    }

    /* access modifiers changed from: protected */
    public <R extends BoxRequest & BoxCacheableRequest> BoxFutureTask<T> handleToTaskForCachedResult() {
        BoxCache cache = BoxConfig.getCache();
        if (cache != null) {
            return new BoxCacheFutureTask(this.mClazz, getCacheableRequest(), cache);
        }
        throw new BoxException.CacheImplementationNotFound();
    }

    /* access modifiers changed from: protected */
    public void handleUpdateCache(BoxResponse<T> boxResponse) {
        BoxCache cache = BoxConfig.getCache();
        if (cache != null) {
            cache.put(boxResponse);
        }
    }

    public int hashCode() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mRequestMethod);
        sb.append(this.mRequestUrlString);
        appendPairsToStringBuilder(sb, this.mHeaderMap);
        appendPairsToStringBuilder(sb, this.mQueryMap);
        return sb.toString().hashCode();
    }

    /* access modifiers changed from: protected */
    public void importRequestContentMapsFrom(BoxRequest boxRequest) {
        this.mQueryMap = new HashMap<>(boxRequest.mQueryMap);
        this.mBodyMap = new LinkedHashMap<>(boxRequest.mBodyMap);
    }

    /* access modifiers changed from: protected */
    public void logDebug(BoxHttpResponse boxHttpResponse) {
        logRequest();
        BoxLogUtils.i(BoxConstants.TAG, String.format(Locale.ENGLISH, "Response (%s):  %s", new Object[]{Integer.valueOf(boxHttpResponse.getResponseCode()), boxHttpResponse.getStringBody()}));
    }

    /* access modifiers changed from: protected */
    public void logRequest() {
        String str = null;
        try {
            str = buildUrl().toString();
        } catch (UnsupportedEncodingException | MalformedURLException e) {
        }
        BoxLogUtils.i(BoxConstants.TAG, String.format(Locale.ENGLISH, "Request (%s):  %s", new Object[]{this.mRequestMethod, str}));
        BoxLogUtils.i(BoxConstants.TAG, "Request Header", this.mHeaderMap);
        switch (this.mContentType) {
            case JSON:
            case JSON_PATCH:
                if (!SdkUtils.isBlank(this.mStringBody)) {
                    BoxLogUtils.i(BoxConstants.TAG, String.format(Locale.ENGLISH, "Request JSON:  %s", new Object[]{this.mStringBody}));
                    return;
                }
                return;
            case URL_ENCODED:
                HashMap hashMap = new HashMap();
                for (Map.Entry next : this.mBodyMap.entrySet()) {
                    hashMap.put(next.getKey(), (String) next.getValue());
                }
                BoxLogUtils.i(BoxConstants.TAG, "Request Form Data", hashMap);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x008a  */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:22:0x0060=Splitter:B:22:0x0060, B:40:0x0084=Splitter:B:40:0x0084, B:34:0x0078=Splitter:B:34:0x0078, B:28:0x006c=Splitter:B:28:0x006c} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T onSend() {
        /*
            r7 = this;
            r3 = 0
            com.box.androidsdk.content.requests.BoxRequest$BoxRequestHandler r4 = r7.getRequestHandler()
            com.box.androidsdk.content.requests.BoxHttpRequest r5 = r7.createHttpRequest()     // Catch:{ IOException -> 0x009e, InstantiationException -> 0x006a, IllegalAccessException -> 0x0076, BoxException -> 0x0082, all -> 0x008e }
            java.net.HttpURLConnection r2 = r5.getUrlConnection()     // Catch:{ IOException -> 0x009e, InstantiationException -> 0x006a, IllegalAccessException -> 0x0076, BoxException -> 0x0082, all -> 0x008e }
            boolean r1 = r7.mRequiresSocket     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            if (r1 == 0) goto L_0x0030
            boolean r1 = r2 instanceof javax.net.ssl.HttpsURLConnection     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            if (r1 == 0) goto L_0x0030
            r0 = r2
            javax.net.ssl.HttpsURLConnection r0 = (javax.net.ssl.HttpsURLConnection) r0     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r1 = r0
            javax.net.ssl.SSLSocketFactory r1 = r1.getSSLSocketFactory()     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            com.box.androidsdk.content.requests.BoxRequest$SSLSocketFactoryWrapper r6 = new com.box.androidsdk.content.requests.BoxRequest$SSLSocketFactoryWrapper     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r6.<init>(r1)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            java.lang.ref.WeakReference r1 = new java.lang.ref.WeakReference     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r1.<init>(r6)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r7.mSocketFactoryRef = r1     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r0 = r2
            javax.net.ssl.HttpsURLConnection r0 = (javax.net.ssl.HttpsURLConnection) r0     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r1 = r0
            r1.setSSLSocketFactory(r6)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
        L_0x0030:
            int r1 = r7.mTimeout     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            if (r1 <= 0) goto L_0x003e
            int r1 = r7.mTimeout     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r2.setConnectTimeout(r1)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            int r1 = r7.mTimeout     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r2.setReadTimeout(r1)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
        L_0x003e:
            com.box.androidsdk.content.requests.BoxHttpResponse r3 = r7.sendRequest(r5, r2)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            r7.logDebug(r3)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            boolean r1 = r4.isResponseSuccess(r3)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            if (r1 == 0) goto L_0x0057
            java.lang.Class<T> r1 = r7.mClazz     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            com.box.androidsdk.content.models.BoxObject r1 = r4.onResponse(r1, r3)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
        L_0x0056:
            return r1
        L_0x0057:
            com.box.androidsdk.content.BoxException r1 = new com.box.androidsdk.content.BoxException     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            java.lang.String r5 = "An error occurred while sending the request"
            r1.<init>((java.lang.String) r5, (com.box.androidsdk.content.requests.BoxHttpResponse) r3)     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
            throw r1     // Catch:{ IOException -> 0x005f, InstantiationException -> 0x009c, IllegalAccessException -> 0x009a, BoxException -> 0x0098 }
        L_0x005f:
            r1 = move-exception
        L_0x0060:
            com.box.androidsdk.content.models.BoxObject r1 = r7.handleSendException(r4, r3, r1)     // Catch:{ all -> 0x0096 }
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
            goto L_0x0056
        L_0x006a:
            r1 = move-exception
            r2 = r3
        L_0x006c:
            com.box.androidsdk.content.models.BoxObject r1 = r7.handleSendException(r4, r3, r1)     // Catch:{ all -> 0x0096 }
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
            goto L_0x0056
        L_0x0076:
            r1 = move-exception
            r2 = r3
        L_0x0078:
            com.box.androidsdk.content.models.BoxObject r1 = r7.handleSendException(r4, r3, r1)     // Catch:{ all -> 0x0096 }
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
            goto L_0x0056
        L_0x0082:
            r1 = move-exception
            r2 = r3
        L_0x0084:
            com.box.androidsdk.content.models.BoxObject r1 = r7.handleSendException(r4, r3, r1)     // Catch:{ all -> 0x0096 }
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
            goto L_0x0056
        L_0x008e:
            r1 = move-exception
            r2 = r3
        L_0x0090:
            if (r2 == 0) goto L_0x0095
            r2.disconnect()
        L_0x0095:
            throw r1
        L_0x0096:
            r1 = move-exception
            goto L_0x0090
        L_0x0098:
            r1 = move-exception
            goto L_0x0084
        L_0x009a:
            r1 = move-exception
            goto L_0x0078
        L_0x009c:
            r1 = move-exception
            goto L_0x006c
        L_0x009e:
            r1 = move-exception
            r2 = r3
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: com.box.androidsdk.content.requests.BoxRequest.onSend():com.box.androidsdk.content.models.BoxObject");
    }

    public void onSendCompleted(BoxResponse<T> boxResponse) {
    }

    /* access modifiers changed from: protected */
    public void parseHashMapEntry(JsonObject jsonObject, Map.Entry<String, Object> entry) {
        Object value = entry.getValue();
        if (value instanceof BoxJsonObject) {
            jsonObject.add(entry.getKey(), parseJsonObject(value));
        } else if (value instanceof Double) {
            jsonObject.add(entry.getKey(), Double.toString(((Double) value).doubleValue()));
        } else if ((value instanceof Enum) || (value instanceof Boolean)) {
            jsonObject.add(entry.getKey(), value.toString());
        } else if (value instanceof JsonArray) {
            jsonObject.add(entry.getKey(), (JsonValue) (JsonArray) value);
        } else {
            jsonObject.add(entry.getKey(), (String) entry.getValue());
        }
    }

    /* access modifiers changed from: protected */
    public JsonValue parseJsonObject(Object obj) {
        return JsonValue.readFrom(((BoxJsonObject) obj).toJson());
    }

    public final T send() {
        T t = null;
        try {
            e = null;
            t = onSend();
        } catch (Exception e) {
            e = e;
        }
        onSendCompleted(new BoxResponse(t, e, this));
        if (e == null) {
            return t;
        }
        if (e instanceof BoxException) {
            throw ((BoxException) e);
        }
        throw new BoxException("unexpected exception ", (Throwable) e);
    }

    /* access modifiers changed from: protected */
    public BoxHttpResponse sendRequest(BoxHttpRequest boxHttpRequest, HttpURLConnection httpURLConnection) {
        BoxHttpResponse boxHttpResponse = new BoxHttpResponse(httpURLConnection);
        boxHttpResponse.open();
        return boxHttpResponse;
    }

    /* access modifiers changed from: protected */
    public void setBody(BoxHttpRequest boxHttpRequest) {
        if (!this.mBodyMap.isEmpty()) {
            boxHttpRequest.setBody(new ByteArrayInputStream(getStringBody().getBytes(HTTP.UTF_8)));
        }
    }

    public R setContentType(ContentTypes contentTypes) {
        this.mContentType = contentTypes;
        return this;
    }

    /* access modifiers changed from: protected */
    public void setHeaders(BoxHttpRequest boxHttpRequest) {
        createHeaderMap();
        for (Map.Entry next : this.mHeaderMap.entrySet()) {
            boxHttpRequest.addHeader((String) next.getKey(), (String) next.getValue());
        }
    }

    /* access modifiers changed from: protected */
    public R setIfMatchEtag(String str) {
        this.mIfMatchEtag = str;
        return this;
    }

    /* access modifiers changed from: protected */
    public R setIfNoneMatchEtag(String str) {
        this.mIfNoneMatchEtag = str;
        return this;
    }

    public R setRequestHandler(BoxRequestHandler boxRequestHandler) {
        this.mRequestHandler = boxRequestHandler;
        return this;
    }

    public R setTimeOut(int i) {
        this.mTimeout = i;
        return this;
    }

    public BoxFutureTask<T> toTask() {
        return new BoxFutureTask<>(this.mClazz, this);
    }
}
