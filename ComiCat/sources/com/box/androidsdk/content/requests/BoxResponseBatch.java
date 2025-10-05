package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxObject;
import java.util.ArrayList;

public class BoxResponseBatch extends BoxObject {
    protected ArrayList<BoxResponse> mResponses = new ArrayList<>();

    public void addResponse(BoxResponse boxResponse) {
        this.mResponses.add(boxResponse);
    }

    public ArrayList<BoxResponse> getResponses() {
        return this.mResponses;
    }
}
