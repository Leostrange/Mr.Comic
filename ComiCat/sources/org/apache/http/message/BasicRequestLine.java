package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class BasicRequestLine implements Serializable, Cloneable, RequestLine {
    private static final long serialVersionUID = 2810581718468737193L;
    private final String method;
    private final ProtocolVersion protoversion;
    private final String uri;

    public BasicRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        this.method = (String) Args.notNull(str, "Method");
        this.uri = (String) Args.notNull(str2, "URI");
        this.protoversion = (ProtocolVersion) Args.notNull(protocolVersion, "Version");
    }

    public Object clone() {
        return super.clone();
    }

    public String getMethod() {
        return this.method;
    }

    public ProtocolVersion getProtocolVersion() {
        return this.protoversion;
    }

    public String getUri() {
        return this.uri;
    }

    public String toString() {
        return BasicLineFormatter.INSTANCE.formatRequestLine((CharArrayBuffer) null, (RequestLine) this).toString();
    }
}
