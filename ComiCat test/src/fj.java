// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class fj
{

    static final boolean a;
    private static final String b = fj.getName();
    private static Certificate c = null;

    private fj()
    {
        throw new Exception("This class is not instantiable!");
    }

    public static fz a(String s, String s1, Context context)
    {
        return b(s, s1, context);
    }

    private static fz a(JSONObject jsonobject)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String as[];
        if (jsonobject.getString("ver").equals("1"))
        {
            s1 = jsonobject.getString("appId");
            s = s1;
        } else
        {
            s = jsonobject.getString("appFamilyId");
            s1 = jsonobject.getString("appVariantId");
        }
        s3 = jsonobject.getString("pkg");
        as = a(jsonobject, "scopes");
        try
        {
            s2 = jsonobject.getString("clientId");
        }
        catch (JSONException jsonexception)
        {
            gz.b(b, "APIKey does not contain a client id", jsonexception);
            jsonexception = null;
        }
        return new fz(s, s1, s3, as, a(jsonobject, "perm"), s2, jsonobject);
    }

    private static String a(String s)
    {
        return new String(b(s), "UTF-8");
    }

    private static Certificate a()
    {
        fj;
        JVM INSTR monitorenter ;
        Certificate certificate;
        if (c == null)
        {
            ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream("-----BEGIN CERTIFICATE-----\nMIIEiTCCA3GgAwIBAgIJANVIFteXvjkPMA0GCSqGSIb3DQEBBQUAMIGJMQswCQYD\nVQQGEwJVUzEQMA4GA1UEBxMHU2VhdHRsZTETMBEGA1UEChMKQW1hem9uLmNvbTEZ\nMBcGA1UECxMQSWRlbnRpdHkgYW5kIFRheDETMBEGA1UEAxMKQW1hem9uLmNvbTEj\nMCEGCSqGSIb3DQEJARYUYXV0aC10ZWFtQGFtYXpvbi5jb20wHhcNMTIwODE0MDY1\nMDM5WhcNNzYwNjE0MDAyMjIzWjCBiTELMAkGA1UEBhMCVVMxEDAOBgNVBAcTB1Nl\nYXR0bGUxEzARBgNVBAoTCkFtYXpvbi5jb20xGTAXBgNVBAsTEElkZW50aXR5IGFu\nZCBUYXgxEzARBgNVBAMTCkFtYXpvbi5jb20xIzAhBgkqhkiG9w0BCQEWFGF1dGgt\ndGVhbUBhbWF6b24uY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA\nr4LlDpmlK1+mYGXqhvY3Kcd093eUwOQhQM0cb5Y9FjkXvJiCCoLSR9L8QYm2Jz06\nL/546eF/eMegvej93VGjz9JsW+guUIGkDuyCPwBn3u/PvTVKZD67Cep66qT3xnB3\nLfMFt5ln4T5LuoqJ95s8t9P0fULBU52kPR1hwdSo7G4KRVgyXtMmqjp3PK4EbrPB\ndvXCYxVeR31yDPS0BRENC3SGrzlVzrSWYFhxuxRcfyoMJYsOt/9T5QlO2KmJoTy2\nJQtqo7rlc6rORiJH7i2x+QW14bV3miJe/p4ZHWpOT5Z4hAqMBldc0FufaED1YH/Y\nnNCethI/GrXkgzCJRU5asQIDAQABo4HxMIHuMB0GA1UdDgQWBBQBvx8zbG7Sg/MZ\nOuZ31GeYDkhqozCBvgYDVR0jBIG2MIGzgBQBvx8zbG7Sg/MZOuZ31GeYDkhqo6GB\nj6SBjDCBiTELMAkGA1UEBhMCVVMxEDAOBgNVBAcTB1NlYXR0bGUxEzARBgNVBAoT\nCkFtYXpvbi5jb20xGTAXBgNVBAsTEElkZW50aXR5IGFuZCBUYXgxEzARBgNVBAMT\nCkFtYXpvbi5jb20xIzAhBgkqhkiG9w0BCQEWFGF1dGgtdGVhbUBhbWF6b24uY29t\nggkA1UgW15e+OQ8wDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAjOV/\nVDxeAuBqdPgoBGz8AyDtMR4Qyxpe7P0M9umtr8S0PmvYOVs5YuMbEAPUYGsBnWVJ\nn7ErwCF20bkd4x0gHzkOpEzQJnjlO9vJzJcnZH4ZwhVs5jF4IkPN8N68jawPvh5/\nLyWJuwyNY5nGvN5nEecTdUQqT1aa7+Vv3Y1ZQlTEKQtdaoXUjLG86jq9xpanNj/G\nX4VYW+m7mY7Kv7mdfAE4zeECqOY5yAqSfP1M/a5fSfHLQiCTt3mrZfOuj8Hd3Pp5\nVn1e4/UxQQCwZcvAFljEYie6CXD3U1AgzIFiv4/r2M+rDo0T7eqIqCsyG6VCgRAb\ndry4esK8/BdPhyuiZg==\n-----END CERTIFICATE-----\n".getBytes("UTF-8"));
            c = a("X.509", ((InputStream) (bytearrayinputstream)));
            bytearrayinputstream.close();
        }
        certificate = c;
        fj;
        JVM INSTR monitorexit ;
        return certificate;
        Exception exception;
        exception;
        throw exception;
    }

    private static Certificate a(String s, InputStream inputstream)
    {
        return CertificateFactory.getInstance(s).generateCertificate(inputstream);
    }

    private static void a(String s, JSONObject jsonobject, Context context)
    {
        if (!jsonobject.getString("iss").equals("Amazon"))
        {
            throw new SecurityException((new StringBuilder("Decoding fails: issuer (")).append(jsonobject.getString("iss")).append(") is not = Amazon").toString());
        }
        if (!s.equals(jsonobject.getString("pkg")))
        {
            throw new SecurityException((new StringBuilder("Decoding fails: package names don't match! - ")).append(s).append(" != ").append(jsonobject.getString("pkg")).toString());
        }
        PackageManager packagemanager = context.getPackageManager();
        context = null;
        if (packagemanager != null)
        {
            s = packagemanager.getPackageInfo(s, 64);
        } else
        {
            gz.a(b, " pkgMgr is null ");
            s = context;
        }
        if (s != null)
        {
            s = ((PackageInfo) (s)).signatures;
            if (s != null)
            {
                gz.c(b, (new StringBuilder(" num sigs = ")).append(s.length).toString());
                jsonobject = jsonobject.getString("appsig");
                if (jsonobject != null)
                {
                    jsonobject = jsonobject.replace(":", "");
                    gz.a(b, "Signature checking.", (new StringBuilder("appSignature = ")).append(jsonobject).toString());
                    int j = s.length;
                    for (int i = 0; i < j; i++)
                    {
                        context = new ByteArrayInputStream(s[i].toByteArray());
                        Certificate certificate = a("X.509", ((InputStream) (context)));
                        context.close();
                        context = certificate.getEncoded();
                        if (!a && context == null)
                        {
                            throw new AssertionError();
                        }
                        context = ha.a(MessageDigest.getInstance("MD5").digest(context));
                        gz.a(b, "Fingerpirint checking", (new StringBuilder("fingerprint = ")).append(context).toString());
                        if (jsonobject.equalsIgnoreCase(context))
                        {
                            return;
                        }
                    }

                } else
                {
                    gz.a(b, " appSignature is null");
                }
            } else
            {
                gz.a(b, " signatures is null");
            }
        }
        throw new SecurityException("Decoding fails: certificate fingerprint can't be verified!");
    }

    private static String[] a(JSONObject jsonobject, String s)
    {
        try
        {
            jsonobject = jsonobject.getJSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            gz.c(b, (new StringBuilder()).append(s).append(" has no mapping in json, returning null array").toString());
            return null;
        }
        s = new String[jsonobject.length()];
        for (int i = 0; i < jsonobject.length(); i++)
        {
            s[i] = jsonobject.getString(i);
        }

        return s;
    }

    private static fz b(String s, String s1, Context context)
    {
        gz.c(b, (new StringBuilder("Begin decoding API Key for packageName=")).append(s).toString());
        if (!a && (s == null || s1 == null))
        {
            throw new AssertionError();
        }
        if (s1 == null || s == null) goto _L2; else goto _L1
_L1:
        if (a || s1 != null) goto _L4; else goto _L3
_L3:
        Object aobj[];
        try
        {
            throw new AssertionError();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            gz.b(b, (new StringBuilder("Failed to decode: ")).append(s.getMessage()).toString(), s);
        }
_L6:
        return null;
_L4:
        aobj = s1.split("[.]");
        if (aobj.length != 3)
        {
            throw new IllegalArgumentException("Decoding fails: API Key must have 3 parts {header}.{payload}.{signature}");
        }
        Object obj = new JSONObject(a(aobj[0]));
        s1 = new JSONObject(a(aobj[1]));
        obj = ((JSONObject) (obj)).getString("alg");
        if (!((String) (obj)).equalsIgnoreCase("RSA-SHA256"))
        {
            throw new NoSuchAlgorithmException((new StringBuilder("Unsupported algorithm : ")).append(((String) (obj))).toString());
        }
        byte abyte0[] = (new StringBuilder()).append(aobj[0].trim()).append(".").append(aobj[1].trim()).toString().getBytes("UTF-8");
        aobj = b(aobj[2]);
        Certificate certificate = a();
        java.security.Signature signature = java.security.Signature.getInstance("SHA256withRSA", "BC");
        signature.initVerify(certificate);
        signature.update(abyte0);
        if (!signature.verify(((byte []) (aobj))))
        {
            throw new SecurityException("Decoding fails: signature mismatch!");
        }
        gz.a(b, "APIKey", (new StringBuilder("payload=")).append(s1).toString());
        a(s, s1, context);
        s = a(s1);
        return s;
_L2:
        gz.a(b, (new StringBuilder("ApiKey/PackageName is null. pkg=")).append(s).toString(), (new StringBuilder("apiKey=")).append(s1).toString());
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static byte[] b(String s)
    {
        return Base64.decode(s.trim().getBytes("UTF-8"), 0);
    }

    static 
    {
        boolean flag;
        if (!fj.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
