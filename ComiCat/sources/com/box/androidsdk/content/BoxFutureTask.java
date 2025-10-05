package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class BoxFutureTask<E extends BoxObject> extends FutureTask<BoxResponse<E>> {
    protected ArrayList<OnCompletedListener<E>> mCompletedListeners = new ArrayList<>();
    protected final BoxRequest mRequest;

    public interface OnCompletedListener<E extends BoxObject> {
        void onCompleted(BoxResponse<E> boxResponse);
    }

    public BoxFutureTask(Class<E> cls, final BoxRequest boxRequest) {
        super(new Callable<BoxResponse<E>>() {
            public BoxResponse<E> call() {
                BoxObject boxObject;
                Exception exc = null;
                try {
                    boxObject = BoxRequest.this.send();
                } catch (Exception e) {
                    Exception exc2 = e;
                    boxObject = null;
                    exc = exc2;
                }
                return new BoxResponse<>(boxObject, exc, BoxRequest.this);
            }
        });
        this.mRequest = boxRequest;
    }

    protected BoxFutureTask(Callable<BoxResponse<E>> callable, BoxRequest boxRequest) {
        super(callable);
        this.mRequest = boxRequest;
    }

    public synchronized BoxFutureTask<E> addOnCompletedListener(OnCompletedListener<E> onCompletedListener) {
        this.mCompletedListeners.add(onCompletedListener);
        return this;
    }

    /* access modifiers changed from: protected */
    public synchronized void done() {
        BoxResponse boxResponse;
        InterruptedException interruptedException = null;
        synchronized (this) {
            try {
                boxResponse = (BoxResponse) get();
            } catch (InterruptedException e) {
                InterruptedException interruptedException2 = e;
                boxResponse = null;
                interruptedException = interruptedException2;
            } catch (ExecutionException e2) {
                ExecutionException executionException = e2;
                boxResponse = null;
                interruptedException = executionException;
            } catch (CancellationException e3) {
                CancellationException cancellationException = e3;
                boxResponse = null;
                interruptedException = cancellationException;
            }
            BoxResponse boxResponse2 = interruptedException != null ? new BoxResponse(null, new BoxException("Unable to retrieve response from FutureTask.", interruptedException), this.mRequest) : boxResponse;
            Iterator<OnCompletedListener<E>> it = this.mCompletedListeners.iterator();
            while (it.hasNext()) {
                it.next().onCompleted(boxResponse2);
            }
        }
    }
}
