// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.ProgressOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxHttpRequest

class BoxRequestMultipart extends BoxHttpRequest
{

    private static final String BOUNDARY = "da39a3ee5e6b4b0d3255bfef95601890afd80709";
    private static final int BUFFER_SIZE = 8192;
    private static final Logger LOGGER = Logger.getLogger(com/box/androidsdk/content/requests/BoxRequestMultipart.getName());
    private Map fields;
    private long fileSize;
    private String filename;
    private boolean firstBoundary;
    private InputStream inputStream;
    private final StringBuilder loggedRequest = new StringBuilder();
    private OutputStream outputStream;

    public BoxRequestMultipart(URL url, BoxRequest.Methods methods, ProgressListener progresslistener)
    {
        super(url, methods, progresslistener);
        fields = new HashMap();
        firstBoundary = true;
        addHeader("Content-Type", "multipart/form-data; boundary=da39a3ee5e6b4b0d3255bfef95601890afd80709");
    }

    private void writeBoundary()
    {
        if (!firstBoundary)
        {
            writeOutput("\r\n");
        }
        firstBoundary = false;
        writeOutput("--");
        writeOutput("da39a3ee5e6b4b0d3255bfef95601890afd80709");
    }

    private void writeOutput(int i)
    {
        outputStream.write(i);
    }

    private void writeOutput(String s)
    {
        outputStream.write(s.getBytes(Charset.forName("UTF-8")));
        if (LOGGER.isLoggable(Level.FINE))
        {
            loggedRequest.append(s);
        }
    }

    private void writePartHeader(String as[][])
    {
        writePartHeader(as, null);
    }

    private void writePartHeader(String as[][], String s)
    {
        writeBoundary();
        writeOutput("\r\n");
        writeOutput("Content-Disposition: form-data");
        for (int i = 0; i < as.length; i++)
        {
            writeOutput("; ");
            writeOutput(as[i][0]);
            writeOutput("=\"");
            writeOutput(as[i][1]);
            writeOutput("\"");
        }

        if (s != null)
        {
            writeOutput("\r\nContent-Type: ");
            writeOutput(s);
        }
        writeOutput("\r\n\r\n");
    }

    protected String bodyToString()
    {
        return loggedRequest.toString();
    }

    public void putField(String s, String s1)
    {
        fields.put(s, s1);
    }

    public void putField(String s, Date date)
    {
        fields.put(s, BoxDateFormat.format(date));
    }

    protected void resetBody()
    {
        firstBoundary = true;
        inputStream.reset();
        loggedRequest.setLength(0);
    }

    public BoxHttpRequest setBody(InputStream inputstream)
    {
        throw new UnsupportedOperationException();
    }

    public void setBody(String s)
    {
        throw new UnsupportedOperationException();
    }

    public void setFile(InputStream inputstream, String s)
    {
        inputStream = inputstream;
        filename = s;
    }

    public void setFile(InputStream inputstream, String s, long l)
    {
        setFile(inputstream, s);
        fileSize = l;
    }

    protected void writeBody(HttpURLConnection httpurlconnection, ProgressListener progresslistener)
    {
        try
        {
            httpurlconnection.setChunkedStreamingMode(0);
            httpurlconnection.setDoOutput(true);
            httpurlconnection.setUseCaches(false);
            outputStream = httpurlconnection.getOutputStream();
            java.util.Map.Entry entry;
            for (httpurlconnection = fields.entrySet().iterator(); httpurlconnection.hasNext(); writeOutput((String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)httpurlconnection.next();
                writePartHeader(new String[][] {
                    new String[] {
                        "name", (String)entry.getKey()
                    }
                });
            }

            break MISSING_BLOCK_LABEL_134;
        }
        // Misplaced declaration of an exception variable
        catch (HttpURLConnection httpurlconnection) { }
        finally
        {
            int i;
            if (outputStream != null)
            {
                try
                {
                    outputStream.close();
                }
                // Misplaced declaration of an exception variable
                catch (ProgressListener progresslistener) { }
            }
            throw httpurlconnection;
        }
        throw new BoxException("Couldn't connect to the Box API due to a network error.", httpurlconnection);
        writePartHeader(new String[][] {
            new String[] {
                "name", "filename"
            }, new String[] {
                "filename", filename
            }
        }, "application/octet-stream");
        httpurlconnection = outputStream;
        if (progresslistener == null)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        httpurlconnection = new ProgressOutputStream(outputStream, progresslistener, fileSize);
        progresslistener = new byte[8192];
        i = inputStream.read(progresslistener);
_L1:
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_249;
        }
        httpurlconnection.write(progresslistener, 0, i);
        i = inputStream.read(progresslistener);
          goto _L1
        if (LOGGER.isLoggable(Level.FINE))
        {
            loggedRequest.append("<File Contents Omitted>");
        }
        writeBoundary();
        if (outputStream == null)
        {
            break MISSING_BLOCK_LABEL_290;
        }
        outputStream.close();
        return;
        httpurlconnection;
    }

}
