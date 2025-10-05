package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.util.Args;

public class BasicHeaderIterator implements HeaderIterator {
    protected final Header[] allHeaders;
    protected int currentIndex = findNext(-1);
    protected String headerName;

    public BasicHeaderIterator(Header[] headerArr, String str) {
        this.allHeaders = (Header[]) Args.notNull(headerArr, "Header array");
        this.headerName = str;
    }

    /* access modifiers changed from: protected */
    public boolean filterHeader(int i) {
        return this.headerName == null || this.headerName.equalsIgnoreCase(this.allHeaders[i].getName());
    }

    /* access modifiers changed from: protected */
    public int findNext(int i) {
        if (i < -1) {
            return -1;
        }
        int length = this.allHeaders.length - 1;
        boolean z = false;
        int i2 = i;
        while (!z && i2 < length) {
            int i3 = i2 + 1;
            z = filterHeader(i3);
            i2 = i3;
        }
        if (z) {
            return i2;
        }
        return -1;
    }

    public boolean hasNext() {
        return this.currentIndex >= 0;
    }

    public final Object next() {
        return nextHeader();
    }

    public Header nextHeader() {
        int i = this.currentIndex;
        if (i < 0) {
            throw new NoSuchElementException("Iteration already finished.");
        }
        this.currentIndex = findNext(i);
        return this.allHeaders[i];
    }

    public void remove() {
        throw new UnsupportedOperationException("Removing headers is not supported.");
    }
}
