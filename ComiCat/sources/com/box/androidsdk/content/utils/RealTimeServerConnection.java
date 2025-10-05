package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxRealTimeServer;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSimpleMessage;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class RealTimeServerConnection implements BoxFutureTask.OnCompletedListener<BoxSimpleMessage> {
    private BoxRealTimeServer mBoxRealTimeServer;
    private final OnChangeListener mChangeListener;
    private final ThreadPoolExecutor mExecutor = SdkUtils.createDefaultThreadPoolExecutor(1, 1, 3600, TimeUnit.SECONDS);
    private BoxRequest mRequest;
    private int mRetries = 0;
    private BoxSession mSession;

    public interface OnChangeListener {
        void onChange(BoxSimpleMessage boxSimpleMessage, RealTimeServerConnection realTimeServerConnection);

        void onException(Exception exc, RealTimeServerConnection realTimeServerConnection);
    }

    public RealTimeServerConnection(BoxRequest boxRequest, OnChangeListener onChangeListener, BoxSession boxSession) {
        this.mRequest = boxRequest;
        this.mSession = boxSession;
        this.mChangeListener = onChangeListener;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x00ac, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00ad, code lost:
        r10.mChangeListener.onException(r0, r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00b3, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00b4, code lost:
        r10.mChangeListener.onException(r0, r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00bd, code lost:
        r0 = r4;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00ac A[ExcHandler: InterruptedException (r0v14 'e' java.lang.InterruptedException A[CUSTOM_DECLARE]), Splitter:B:4:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b3 A[ExcHandler: ExecutionException (r0v13 'e' java.util.concurrent.ExecutionException A[CUSTOM_DECLARE]), Splitter:B:4:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00bf A[LOOP:0: B:4:0x0033->B:32:0x00bf, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.box.androidsdk.content.models.BoxSimpleMessage connect() {
        /*
            r10 = this;
            r1 = 1
            r3 = 0
            r5 = 0
            r10.mRetries = r5
            com.box.androidsdk.content.requests.BoxRequest r0 = r10.mRequest     // Catch:{ BoxException -> 0x0072 }
            com.box.androidsdk.content.models.BoxObject r0 = r0.send()     // Catch:{ BoxException -> 0x0072 }
            com.box.androidsdk.content.models.BoxIteratorRealTimeServers r0 = (com.box.androidsdk.content.models.BoxIteratorRealTimeServers) r0     // Catch:{ BoxException -> 0x0072 }
            r2 = 0
            com.box.androidsdk.content.models.BoxJsonObject r0 = r0.get(r2)     // Catch:{ BoxException -> 0x0072 }
            com.box.androidsdk.content.models.BoxRealTimeServer r0 = (com.box.androidsdk.content.models.BoxRealTimeServer) r0     // Catch:{ BoxException -> 0x0072 }
            r10.mBoxRealTimeServer = r0     // Catch:{ BoxException -> 0x0072 }
            com.box.androidsdk.content.requests.BoxRequestsEvent$LongPollMessageRequest r6 = new com.box.androidsdk.content.requests.BoxRequestsEvent$LongPollMessageRequest
            com.box.androidsdk.content.models.BoxRealTimeServer r0 = r10.mBoxRealTimeServer
            java.lang.String r0 = r0.getUrl()
            com.box.androidsdk.content.models.BoxSession r2 = r10.mSession
            r6.<init>(r0, r2)
            com.box.androidsdk.content.models.BoxRealTimeServer r0 = r10.mBoxRealTimeServer
            java.lang.Long r0 = r0.getFieldRetryTimeout()
            int r0 = r0.intValue()
            int r0 = r0 * 1000
            r6.setTimeOut(r0)
            r2 = r1
        L_0x0033:
            com.box.androidsdk.content.BoxFutureTask r0 = r6.toTask()     // Catch:{ TimeoutException -> 0x007a, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            com.box.androidsdk.content.BoxFutureTask r4 = r0.addOnCompletedListener(r10)     // Catch:{ TimeoutException -> 0x007a, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            java.util.concurrent.ThreadPoolExecutor r0 = r10.mExecutor     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            r0.submit(r4)     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            com.box.androidsdk.content.models.BoxRealTimeServer r0 = r10.mBoxRealTimeServer     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            java.lang.Long r0 = r0.getFieldRetryTimeout()     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            int r0 = r0.intValue()     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            long r0 = (long) r0     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            java.lang.Object r0 = r4.get(r0, r7)     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            com.box.androidsdk.content.requests.BoxResponse r0 = (com.box.androidsdk.content.requests.BoxResponse) r0     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            boolean r1 = r0.isSuccess()     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            if (r1 == 0) goto L_0x0082
            com.box.androidsdk.content.models.BoxObject r1 = r0.getResult()     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            com.box.androidsdk.content.models.BoxSimpleMessage r1 = (com.box.androidsdk.content.models.BoxSimpleMessage) r1     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            java.lang.String r7 = "reconnect"
            boolean r1 = r1.equals(r7)     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            if (r1 != 0) goto L_0x0082
            com.box.androidsdk.content.models.BoxObject r0 = r0.getResult()     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
            com.box.androidsdk.content.models.BoxSimpleMessage r0 = (com.box.androidsdk.content.models.BoxSimpleMessage) r0     // Catch:{ TimeoutException -> 0x00bc, InterruptedException -> 0x00ac, ExecutionException -> 0x00b3 }
        L_0x0071:
            return r0
        L_0x0072:
            r0 = move-exception
            com.box.androidsdk.content.utils.RealTimeServerConnection$OnChangeListener r1 = r10.mChangeListener
            r1.onException(r0, r10)
            r0 = r3
            goto L_0x0071
        L_0x007a:
            r0 = move-exception
            r0 = r3
        L_0x007c:
            if (r0 == 0) goto L_0x0082
            r1 = 1
            r0.cancel(r1)     // Catch:{ CancellationException -> 0x00ba }
        L_0x0082:
            int r0 = r10.mRetries
            int r0 = r0 + 1
            r10.mRetries = r0
            com.box.androidsdk.content.models.BoxRealTimeServer r0 = r10.mBoxRealTimeServer
            java.lang.Long r0 = r0.getMaxRetries()
            long r0 = r0.longValue()
            int r4 = r10.mRetries
            long r8 = (long) r4
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 >= 0) goto L_0x00c2
            r0 = r5
        L_0x009a:
            if (r0 != 0) goto L_0x00bf
            com.box.androidsdk.content.utils.RealTimeServerConnection$OnChangeListener r0 = r10.mChangeListener
            com.box.androidsdk.content.BoxException$MaxAttemptsExceeded r1 = new com.box.androidsdk.content.BoxException$MaxAttemptsExceeded
            java.lang.String r2 = "Max retries exceeded, "
            int r4 = r10.mRetries
            r1.<init>(r2, r4)
            r0.onException(r1, r10)
            r0 = r3
            goto L_0x0071
        L_0x00ac:
            r0 = move-exception
            com.box.androidsdk.content.utils.RealTimeServerConnection$OnChangeListener r1 = r10.mChangeListener
            r1.onException(r0, r10)
            goto L_0x0082
        L_0x00b3:
            r0 = move-exception
            com.box.androidsdk.content.utils.RealTimeServerConnection$OnChangeListener r1 = r10.mChangeListener
            r1.onException(r0, r10)
            goto L_0x0082
        L_0x00ba:
            r0 = move-exception
            goto L_0x0082
        L_0x00bc:
            r0 = move-exception
            r0 = r4
            goto L_0x007c
        L_0x00bf:
            r2 = r0
            goto L_0x0033
        L_0x00c2:
            r0 = r2
            goto L_0x009a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.box.androidsdk.content.utils.RealTimeServerConnection.connect():com.box.androidsdk.content.models.BoxSimpleMessage");
    }

    public BoxRealTimeServer getRealTimeServer() {
        return this.mBoxRealTimeServer;
    }

    public BoxRequest getRequest() {
        return this.mRequest;
    }

    public int getTimesRetried() {
        return this.mRetries;
    }

    /* access modifiers changed from: protected */
    public void handleResponse(BoxResponse<BoxSimpleMessage> boxResponse) {
        if (boxResponse.isSuccess()) {
            if (!boxResponse.getResult().getMessage().equals(BoxSimpleMessage.MESSAGE_RECONNECT)) {
                this.mChangeListener.onChange(boxResponse.getResult(), this);
            }
        } else if (!(boxResponse.getException() instanceof BoxException) || !(boxResponse.getException().getCause() instanceof SocketTimeoutException)) {
            this.mChangeListener.onException(boxResponse.getException(), this);
        }
    }

    public void onCompleted(BoxResponse<BoxSimpleMessage> boxResponse) {
        handleResponse(boxResponse);
    }

    public FutureTask<BoxSimpleMessage> toTask() {
        return new FutureTask<>(new Callable<BoxSimpleMessage>() {
            public BoxSimpleMessage call() {
                return RealTimeServerConnection.this.connect();
            }
        });
    }
}
