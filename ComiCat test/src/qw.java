// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Hashtable;
import java.util.Vector;

public final class qw
{

    static Hashtable a;
    static ri e;
    private static final ri h;
    Vector b;
    qn c;
    qr d;
    private qv f;
    private qv g;

    public qw()
    {
        b = new Vector();
        f = new rh(this);
        g = f;
        c = null;
        d = null;
    }

    public static String a(String s)
    {
        synchronized (a)
        {
            s = (String)(String)a.get(s);
        }
        return s;
        s;
        hashtable;
        JVM INSTR monitorexit ;
        throw s;
    }

    static ri b()
    {
        return e;
    }

    public final qv a()
    {
        this;
        JVM INSTR monitorenter ;
        qv qv = g;
        this;
        JVM INSTR monitorexit ;
        return qv;
        Exception exception;
        exception;
        throw exception;
    }

    protected final boolean a(ry ry)
    {
        boolean flag;
        synchronized (b)
        {
            flag = b.remove(ry);
        }
        return flag;
        ry;
        vector;
        JVM INSTR monitorexit ;
        throw ry;
    }

    static 
    {
        Object obj = new Hashtable();
        a = ((Hashtable) (obj));
        ((Hashtable) (obj)).put("kex", "ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group14-sha1,diffie-hellman-group-exchange-sha256,diffie-hellman-group-exchange-sha1,diffie-hellman-group1-sha1");
        a.put("server_host_key", "ssh-rsa,ssh-dss,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521");
        a.put("cipher.s2c", "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-ctr,aes192-cbc,aes256-ctr,aes256-cbc");
        a.put("cipher.c2s", "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-ctr,aes192-cbc,aes256-ctr,aes256-cbc");
        a.put("mac.s2c", "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96");
        a.put("mac.c2s", "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96");
        a.put("compression.s2c", "none");
        a.put("compression.c2s", "none");
        a.put("lang.s2c", "");
        a.put("lang.c2s", "");
        a.put("compression_level", "6");
        a.put("diffie-hellman-group-exchange-sha1", "com.jcraft.jsch.DHGEX");
        a.put("diffie-hellman-group1-sha1", "com.jcraft.jsch.DHG1");
        a.put("diffie-hellman-group14-sha1", "com.jcraft.jsch.DHG14");
        a.put("diffie-hellman-group-exchange-sha256", "com.jcraft.jsch.DHGEX256");
        a.put("ecdsa-sha2-nistp256", "com.jcraft.jsch.jce.SignatureECDSA");
        a.put("ecdsa-sha2-nistp384", "com.jcraft.jsch.jce.SignatureECDSA");
        a.put("ecdsa-sha2-nistp521", "com.jcraft.jsch.jce.SignatureECDSA");
        a.put("ecdh-sha2-nistp256", "com.jcraft.jsch.DHEC256");
        a.put("ecdh-sha2-nistp384", "com.jcraft.jsch.DHEC384");
        a.put("ecdh-sha2-nistp521", "com.jcraft.jsch.DHEC521");
        a.put("ecdh-sha2-nistp", "com.jcraft.jsch.jce.ECDHN");
        a.put("dh", "com.jcraft.jsch.jce.DH");
        a.put("3des-cbc", "com.jcraft.jsch.jce.TripleDESCBC");
        a.put("blowfish-cbc", "com.jcraft.jsch.jce.BlowfishCBC");
        a.put("hmac-sha1", "com.jcraft.jsch.jce.HMACSHA1");
        a.put("hmac-sha1-96", "com.jcraft.jsch.jce.HMACSHA196");
        a.put("hmac-sha2-256", "com.jcraft.jsch.jce.HMACSHA256");
        a.put("hmac-md5", "com.jcraft.jsch.jce.HMACMD5");
        a.put("hmac-md5-96", "com.jcraft.jsch.jce.HMACMD596");
        a.put("sha-1", "com.jcraft.jsch.jce.SHA1");
        a.put("sha-256", "com.jcraft.jsch.jce.SHA256");
        a.put("sha-384", "com.jcraft.jsch.jce.SHA384");
        a.put("sha-512", "com.jcraft.jsch.jce.SHA512");
        a.put("md5", "com.jcraft.jsch.jce.MD5");
        a.put("signature.dss", "com.jcraft.jsch.jce.SignatureDSA");
        a.put("signature.rsa", "com.jcraft.jsch.jce.SignatureRSA");
        a.put("signature.ecdsa", "com.jcraft.jsch.jce.SignatureECDSA");
        a.put("keypairgen.dsa", "com.jcraft.jsch.jce.KeyPairGenDSA");
        a.put("keypairgen.rsa", "com.jcraft.jsch.jce.KeyPairGenRSA");
        a.put("keypairgen.ecdsa", "com.jcraft.jsch.jce.KeyPairGenECDSA");
        a.put("random", "com.jcraft.jsch.jce.Random");
        a.put("none", "com.jcraft.jsch.CipherNone");
        a.put("aes128-cbc", "com.jcraft.jsch.jce.AES128CBC");
        a.put("aes192-cbc", "com.jcraft.jsch.jce.AES192CBC");
        a.put("aes256-cbc", "com.jcraft.jsch.jce.AES256CBC");
        a.put("aes128-ctr", "com.jcraft.jsch.jce.AES128CTR");
        a.put("aes192-ctr", "com.jcraft.jsch.jce.AES192CTR");
        a.put("aes256-ctr", "com.jcraft.jsch.jce.AES256CTR");
        a.put("3des-ctr", "com.jcraft.jsch.jce.TripleDESCTR");
        a.put("arcfour", "com.jcraft.jsch.jce.ARCFOUR");
        a.put("arcfour128", "com.jcraft.jsch.jce.ARCFOUR128");
        a.put("arcfour256", "com.jcraft.jsch.jce.ARCFOUR256");
        a.put("userauth.none", "com.jcraft.jsch.UserAuthNone");
        a.put("userauth.password", "com.jcraft.jsch.UserAuthPassword");
        a.put("userauth.keyboard-interactive", "com.jcraft.jsch.UserAuthKeyboardInteractive");
        a.put("userauth.publickey", "com.jcraft.jsch.UserAuthPublicKey");
        a.put("userauth.gssapi-with-mic", "com.jcraft.jsch.UserAuthGSSAPIWithMIC");
        a.put("gssapi-with-mic.krb5", "com.jcraft.jsch.jgss.GSSContextKrb5");
        a.put("zlib", "com.jcraft.jsch.jcraft.Compression");
        a.put("zlib@openssh.com", "com.jcraft.jsch.jcraft.Compression");
        a.put("pbkdf", "com.jcraft.jsch.jce.PBKDF");
        a.put("StrictHostKeyChecking", "ask");
        a.put("HashKnownHosts", "no");
        a.put("PreferredAuthentications", "gssapi-with-mic,publickey,keyboard-interactive,password");
        a.put("CheckCiphers", "aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cbc,3des-ctr,arcfour,arcfour128,arcfour256");
        a.put("CheckKexes", "diffie-hellman-group14-sha1,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521");
        a.put("CheckSignatures", "ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521");
        a.put("MaxAuthTries", "6");
        a.put("ClearAllForwardings", "no");
        obj = new ri() {

        };
        h = ((ri) (obj));
        e = ((ri) (obj));
    }
}
