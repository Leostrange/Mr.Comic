package org.apache.http.params;

import java.nio.charset.CodingErrorAction;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;

@Deprecated
public final class HttpProtocolParams implements CoreProtocolPNames {
    private HttpProtocolParams() {
    }

    public static String getContentCharset(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        String str = (String) httpParams.getParameter(CoreProtocolPNames.HTTP_CONTENT_CHARSET);
        return str == null ? HTTP.DEF_CONTENT_CHARSET.name() : str;
    }

    public static String getHttpElementCharset(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        String str = (String) httpParams.getParameter(CoreProtocolPNames.HTTP_ELEMENT_CHARSET);
        return str == null ? HTTP.DEF_PROTOCOL_CHARSET.name() : str;
    }

    public static CodingErrorAction getMalformedInputAction(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        Object parameter = httpParams.getParameter(CoreProtocolPNames.HTTP_MALFORMED_INPUT_ACTION);
        return parameter == null ? CodingErrorAction.REPORT : (CodingErrorAction) parameter;
    }

    public static CodingErrorAction getUnmappableInputAction(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        Object parameter = httpParams.getParameter(CoreProtocolPNames.HTTP_UNMAPPABLE_INPUT_ACTION);
        return parameter == null ? CodingErrorAction.REPORT : (CodingErrorAction) parameter;
    }

    public static String getUserAgent(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        return (String) httpParams.getParameter(CoreProtocolPNames.USER_AGENT);
    }

    public static ProtocolVersion getVersion(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        Object parameter = httpParams.getParameter(CoreProtocolPNames.PROTOCOL_VERSION);
        return parameter == null ? HttpVersion.HTTP_1_1 : (ProtocolVersion) parameter;
    }

    public static void setContentCharset(HttpParams httpParams, String str) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setParameter(CoreProtocolPNames.HTTP_CONTENT_CHARSET, str);
    }

    public static void setHttpElementCharset(HttpParams httpParams, String str) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setParameter(CoreProtocolPNames.HTTP_ELEMENT_CHARSET, str);
    }

    public static void setMalformedInputAction(HttpParams httpParams, CodingErrorAction codingErrorAction) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setParameter(CoreProtocolPNames.HTTP_MALFORMED_INPUT_ACTION, codingErrorAction);
    }

    public static void setUnmappableInputAction(HttpParams httpParams, CodingErrorAction codingErrorAction) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setParameter(CoreProtocolPNames.HTTP_UNMAPPABLE_INPUT_ACTION, codingErrorAction);
    }

    public static void setUseExpectContinue(HttpParams httpParams, boolean z) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setBooleanParameter(CoreProtocolPNames.USE_EXPECT_CONTINUE, z);
    }

    public static void setUserAgent(HttpParams httpParams, String str) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setParameter(CoreProtocolPNames.USER_AGENT, str);
    }

    public static void setVersion(HttpParams httpParams, ProtocolVersion protocolVersion) {
        Args.notNull(httpParams, "HTTP parameters");
        httpParams.setParameter(CoreProtocolPNames.PROTOCOL_VERSION, protocolVersion);
    }

    public static boolean useExpectContinue(HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP parameters");
        return httpParams.getBooleanParameter(CoreProtocolPNames.USE_EXPECT_CONTINUE, false);
    }
}
