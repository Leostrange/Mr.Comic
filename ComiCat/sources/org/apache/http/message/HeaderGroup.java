package org.apache.http.message;

import android.support.v4.app.NotificationCompat;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.util.CharArrayBuffer;

public class HeaderGroup implements Serializable, Cloneable {
    private static final long serialVersionUID = 2608834160639271617L;
    private final Header[] EMPTY = new Header[0];
    private final List<Header> headers = new ArrayList(16);

    public void addHeader(Header header) {
        if (header != null) {
            this.headers.add(header);
        }
    }

    public void clear() {
        this.headers.clear();
    }

    public Object clone() {
        return super.clone();
    }

    public boolean containsHeader(String str) {
        for (int i = 0; i < this.headers.size(); i++) {
            if (this.headers.get(i).getName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public HeaderGroup copy() {
        HeaderGroup headerGroup = new HeaderGroup();
        headerGroup.headers.addAll(this.headers);
        return headerGroup;
    }

    public Header[] getAllHeaders() {
        return (Header[]) this.headers.toArray(new Header[this.headers.size()]);
    }

    public Header getCondensedHeader(String str) {
        Header[] headers2 = getHeaders(str);
        if (headers2.length == 0) {
            return null;
        }
        if (headers2.length == 1) {
            return headers2[0];
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(NotificationCompat.FLAG_HIGH_PRIORITY);
        charArrayBuffer.append(headers2[0].getValue());
        for (int i = 1; i < headers2.length; i++) {
            charArrayBuffer.append(", ");
            charArrayBuffer.append(headers2[i].getValue());
        }
        return new BasicHeader(str.toLowerCase(Locale.ROOT), charArrayBuffer.toString());
    }

    public Header getFirstHeader(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.headers.size()) {
                return null;
            }
            Header header = this.headers.get(i2);
            if (header.getName().equalsIgnoreCase(str)) {
                return header;
            }
            i = i2 + 1;
        }
    }

    public Header[] getHeaders(String str) {
        ArrayList arrayList = null;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.headers.size()) {
                break;
            }
            Header header = this.headers.get(i2);
            if (header.getName().equalsIgnoreCase(str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(header);
            }
            i = i2 + 1;
        }
        return arrayList != null ? (Header[]) arrayList.toArray(new Header[arrayList.size()]) : this.EMPTY;
    }

    public Header getLastHeader(String str) {
        for (int size = this.headers.size() - 1; size >= 0; size--) {
            Header header = this.headers.get(size);
            if (header.getName().equalsIgnoreCase(str)) {
                return header;
            }
        }
        return null;
    }

    public HeaderIterator iterator() {
        return new BasicListHeaderIterator(this.headers, (String) null);
    }

    public HeaderIterator iterator(String str) {
        return new BasicListHeaderIterator(this.headers, str);
    }

    public void removeHeader(Header header) {
        if (header != null) {
            this.headers.remove(header);
        }
    }

    public void setHeaders(Header[] headerArr) {
        clear();
        if (headerArr != null) {
            Collections.addAll(this.headers, headerArr);
        }
    }

    public String toString() {
        return this.headers.toString();
    }

    public void updateHeader(Header header) {
        if (header != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.headers.size()) {
                    this.headers.add(header);
                    return;
                } else if (this.headers.get(i2).getName().equalsIgnoreCase(header.getName())) {
                    this.headers.set(i2, header);
                    return;
                } else {
                    i = i2 + 1;
                }
            }
        }
    }
}
