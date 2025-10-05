package defpackage;

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
import org.apache.http.protocol.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: fj  reason: default package */
/* compiled from: APIKeyDecoder */
public final class fj {
    static final /* synthetic */ boolean a = (!fj.class.desiredAssertionStatus());
    private static final String b = fj.class.getName();
    private static Certificate c = null;

    private fj() {
        throw new Exception("This class is not instantiable!");
    }

    public static fz a(String str, String str2, Context context) {
        return b(str, str2, context);
    }

    private static fz a(JSONObject jSONObject) {
        String string;
        String string2;
        String str;
        if (jSONObject.getString("ver").equals("1")) {
            string2 = jSONObject.getString("appId");
            string = string2;
        } else {
            string = jSONObject.getString("appFamilyId");
            string2 = jSONObject.getString("appVariantId");
        }
        String string3 = jSONObject.getString("pkg");
        String[] a2 = a(jSONObject, "scopes");
        try {
            str = jSONObject.getString("clientId");
        } catch (JSONException e) {
            gz.b(b, "APIKey does not contain a client id", e);
            str = null;
        }
        return new fz(string, string2, string3, a2, a(jSONObject, "perm"), str, jSONObject);
    }

    private static String a(String str) {
        return new String(b(str), HTTP.UTF_8);
    }

    private static synchronized Certificate a() {
        Certificate certificate;
        synchronized (fj.class) {
            if (c == null) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream("-----BEGIN CERTIFICATE-----\nMIIEiTCCA3GgAwIBAgIJANVIFteXvjkPMA0GCSqGSIb3DQEBBQUAMIGJMQswCQYD\nVQQGEwJVUzEQMA4GA1UEBxMHU2VhdHRsZTETMBEGA1UEChMKQW1hem9uLmNvbTEZ\nMBcGA1UECxMQSWRlbnRpdHkgYW5kIFRheDETMBEGA1UEAxMKQW1hem9uLmNvbTEj\nMCEGCSqGSIb3DQEJARYUYXV0aC10ZWFtQGFtYXpvbi5jb20wHhcNMTIwODE0MDY1\nMDM5WhcNNzYwNjE0MDAyMjIzWjCBiTELMAkGA1UEBhMCVVMxEDAOBgNVBAcTB1Nl\nYXR0bGUxEzARBgNVBAoTCkFtYXpvbi5jb20xGTAXBgNVBAsTEElkZW50aXR5IGFu\nZCBUYXgxEzARBgNVBAMTCkFtYXpvbi5jb20xIzAhBgkqhkiG9w0BCQEWFGF1dGgt\ndGVhbUBhbWF6b24uY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA\nr4LlDpmlK1+mYGXqhvY3Kcd093eUwOQhQM0cb5Y9FjkXvJiCCoLSR9L8QYm2Jz06\nL/546eF/eMegvej93VGjz9JsW+guUIGkDuyCPwBn3u/PvTVKZD67Cep66qT3xnB3\nLfMFt5ln4T5LuoqJ95s8t9P0fULBU52kPR1hwdSo7G4KRVgyXtMmqjp3PK4EbrPB\ndvXCYxVeR31yDPS0BRENC3SGrzlVzrSWYFhxuxRcfyoMJYsOt/9T5QlO2KmJoTy2\nJQtqo7rlc6rORiJH7i2x+QW14bV3miJe/p4ZHWpOT5Z4hAqMBldc0FufaED1YH/Y\nnNCethI/GrXkgzCJRU5asQIDAQABo4HxMIHuMB0GA1UdDgQWBBQBvx8zbG7Sg/MZ\nOuZ31GeYDkhqozCBvgYDVR0jBIG2MIGzgBQBvx8zbG7Sg/MZOuZ31GeYDkhqo6GB\nj6SBjDCBiTELMAkGA1UEBhMCVVMxEDAOBgNVBAcTB1NlYXR0bGUxEzARBgNVBAoT\nCkFtYXpvbi5jb20xGTAXBgNVBAsTEElkZW50aXR5IGFuZCBUYXgxEzARBgNVBAMT\nCkFtYXpvbi5jb20xIzAhBgkqhkiG9w0BCQEWFGF1dGgtdGVhbUBhbWF6b24uY29t\nggkA1UgW15e+OQ8wDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAjOV/\nVDxeAuBqdPgoBGz8AyDtMR4Qyxpe7P0M9umtr8S0PmvYOVs5YuMbEAPUYGsBnWVJ\nn7ErwCF20bkd4x0gHzkOpEzQJnjlO9vJzJcnZH4ZwhVs5jF4IkPN8N68jawPvh5/\nLyWJuwyNY5nGvN5nEecTdUQqT1aa7+Vv3Y1ZQlTEKQtdaoXUjLG86jq9xpanNj/G\nX4VYW+m7mY7Kv7mdfAE4zeECqOY5yAqSfP1M/a5fSfHLQiCTt3mrZfOuj8Hd3Pp5\nVn1e4/UxQQCwZcvAFljEYie6CXD3U1AgzIFiv4/r2M+rDo0T7eqIqCsyG6VCgRAb\ndry4esK8/BdPhyuiZg==\n-----END CERTIFICATE-----\n".getBytes(HTTP.UTF_8));
                c = a("X.509", (InputStream) byteArrayInputStream);
                byteArrayInputStream.close();
            }
            certificate = c;
        }
        return certificate;
    }

    private static Certificate a(String str, InputStream inputStream) {
        return CertificateFactory.getInstance(str).generateCertificate(inputStream);
    }

    private static void a(String str, JSONObject jSONObject, Context context) {
        if (!jSONObject.getString("iss").equals("Amazon")) {
            throw new SecurityException("Decoding fails: issuer (" + jSONObject.getString("iss") + ") is not = Amazon");
        } else if (!str.equals(jSONObject.getString("pkg"))) {
            throw new SecurityException("Decoding fails: package names don't match! - " + str + " != " + jSONObject.getString("pkg"));
        } else {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = null;
            if (packageManager != null) {
                packageInfo = packageManager.getPackageInfo(str, 64);
            } else {
                gz.a(b, " pkgMgr is null ");
            }
            if (packageInfo != null) {
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr != null) {
                    gz.c(b, " num sigs = " + signatureArr.length);
                    String string = jSONObject.getString("appsig");
                    if (string != null) {
                        String replace = string.replace(":", "");
                        gz.a(b, "Signature checking.", "appSignature = " + replace);
                        int length = signatureArr.length;
                        int i = 0;
                        while (i < length) {
                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signatureArr[i].toByteArray());
                            Certificate a2 = a("X.509", (InputStream) byteArrayInputStream);
                            byteArrayInputStream.close();
                            byte[] encoded = a2.getEncoded();
                            if (a || encoded != null) {
                                String a3 = ha.a(MessageDigest.getInstance("MD5").digest(encoded));
                                gz.a(b, "Fingerpirint checking", "fingerprint = " + a3);
                                if (!replace.equalsIgnoreCase(a3)) {
                                    i++;
                                } else {
                                    return;
                                }
                            } else {
                                throw new AssertionError();
                            }
                        }
                    } else {
                        gz.a(b, " appSignature is null");
                    }
                } else {
                    gz.a(b, " signatures is null");
                }
            }
            throw new SecurityException("Decoding fails: certificate fingerprint can't be verified!");
        }
    }

    private static String[] a(JSONObject jSONObject, String str) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                strArr[i] = jSONArray.getString(i);
            }
            return strArr;
        } catch (JSONException e) {
            gz.c(b, str + " has no mapping in json, returning null array");
            return null;
        }
    }

    private static fz b(String str, String str2, Context context) {
        gz.c(b, "Begin decoding API Key for packageName=" + str);
        if (a || !(str == null || str2 == null)) {
            if (str2 == null || str == null) {
                gz.a(b, "ApiKey/PackageName is null. pkg=" + str, "apiKey=" + str2);
            } else {
                try {
                    if (a || str2 != null) {
                        String[] split = str2.split("[.]");
                        if (split.length != 3) {
                            throw new IllegalArgumentException("Decoding fails: API Key must have 3 parts {header}.{payload}.{signature}");
                        }
                        JSONObject jSONObject = new JSONObject(a(split[0]));
                        JSONObject jSONObject2 = new JSONObject(a(split[1]));
                        String string = jSONObject.getString("alg");
                        if (!string.equalsIgnoreCase("RSA-SHA256")) {
                            throw new NoSuchAlgorithmException("Unsupported algorithm : " + string);
                        }
                        byte[] bytes = (split[0].trim() + "." + split[1].trim()).getBytes(HTTP.UTF_8);
                        byte[] b2 = b(split[2]);
                        Certificate a2 = a();
                        java.security.Signature instance = java.security.Signature.getInstance("SHA256withRSA", "BC");
                        instance.initVerify(a2);
                        instance.update(bytes);
                        if (!instance.verify(b2)) {
                            throw new SecurityException("Decoding fails: signature mismatch!");
                        }
                        gz.a(b, "APIKey", "payload=" + jSONObject2);
                        a(str, jSONObject2, context);
                        return a(jSONObject2);
                    }
                    throw new AssertionError();
                } catch (UnsupportedEncodingException e) {
                    gz.b(b, "Failed to decode: " + e.getMessage(), e);
                } catch (JSONException e2) {
                    gz.b(b, "Failed to decode: " + e2.getMessage(), e2);
                } catch (InvalidKeyException e3) {
                    gz.b(b, "Failed to decode: " + e3.getMessage(), e3);
                } catch (NoSuchProviderException e4) {
                    gz.b(b, "Failed to decode: " + e4.getMessage(), e4);
                } catch (SignatureException e5) {
                    gz.b(b, "Failed to decode: " + e5.getMessage(), e5);
                } catch (NoSuchAlgorithmException e6) {
                    gz.b(b, "Failed to decode: " + e6.getMessage(), e6);
                } catch (CertificateException e7) {
                    gz.b(b, "Failed to decode: " + e7.getMessage(), e7);
                } catch (IOException e8) {
                    gz.b(b, "Failed to decode: " + e8.getMessage(), e8);
                } catch (SecurityException e9) {
                    gz.b(b, "Failed to decode: " + e9.getMessage(), e9);
                } catch (PackageManager.NameNotFoundException e10) {
                    gz.b(b, "Failed to decode: " + e10.getMessage(), e10);
                } catch (IllegalArgumentException e11) {
                    gz.b(b, "Failed to decode: " + e11.getMessage(), e11);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    private static byte[] b(String str) {
        return Base64.decode(str.trim().getBytes(HTTP.UTF_8), 0);
    }
}
