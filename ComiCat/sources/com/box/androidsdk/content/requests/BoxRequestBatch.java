package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

public class BoxRequestBatch extends BoxRequest<BoxResponseBatch, BoxRequestBatch> {
    private static final long serialVersionUID = 8123965031279971500L;
    private ExecutorService mExecutor = null;
    protected ArrayList<BoxRequest> mRequests = new ArrayList<>();

    public BoxRequestBatch() {
        super(BoxResponseBatch.class, (String) null, (BoxSession) null);
    }

    public BoxRequestBatch addRequest(BoxRequest boxRequest) {
        this.mRequests.add(boxRequest);
        return this;
    }

    public BoxResponseBatch onSend() {
        BoxObject boxObject;
        BoxResponseBatch boxResponseBatch = new BoxResponseBatch();
        if (this.mExecutor != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<BoxRequest> it = this.mRequests.iterator();
            while (it.hasNext()) {
                BoxFutureTask task = it.next().toTask();
                this.mExecutor.submit(task);
                arrayList.add(task);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                try {
                    boxResponseBatch.addResponse((BoxResponse) ((BoxFutureTask) it2.next()).get());
                } catch (InterruptedException e) {
                    throw new BoxException(e.getMessage(), (Throwable) e);
                } catch (ExecutionException e2) {
                    throw new BoxException(e2.getMessage(), (Throwable) e2);
                }
            }
        } else {
            Iterator<BoxRequest> it3 = this.mRequests.iterator();
            while (it3.hasNext()) {
                BoxRequest next = it3.next();
                try {
                    boxObject = next.send();
                    e = null;
                } catch (Exception e3) {
                    e = e3;
                    boxObject = null;
                }
                boxResponseBatch.addResponse(new BoxResponse(boxObject, e, next));
            }
        }
        return boxResponseBatch;
    }

    public BoxRequestBatch setExecutor(ExecutorService executorService) {
        this.mExecutor = executorService;
        return this;
    }
}
