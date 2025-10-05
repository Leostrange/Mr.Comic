package defpackage;

import android.support.v4.app.FragmentTransaction;
import java.net.InetAddress;
import java.util.LinkedList;
import java.util.TimeZone;

/* renamed from: aap  reason: default package */
/* compiled from: SmbConstants */
interface aap {
    public static final InetAddress W = xj.a();
    public static final int X = xj.a("jcifs.smb.client.lport", 0);
    public static final int Y = xj.a("jcifs.smb.client.maxMpxCount", 10);
    public static final int Z = xj.a("jcifs.smb.client.snd_buf_size", 16644);
    public static final int aa = xj.a("jcifs.smb.client.rcv_buf_size", 60416);
    public static final boolean ab = xj.a("jcifs.smb.client.useUnicode", true);
    public static final boolean ac = xj.a("jcifs.smb.client.useUnicode", false);
    public static final boolean ad = xj.a("jcifs.smb.client.useNtStatus", true);
    public static final boolean ae = xj.a("jcifs.smb.client.signingPreferred", false);
    public static final boolean af = xj.a("jcifs.smb.client.useNTSmbs", true);
    public static final boolean ag = xj.a("jcifs.smb.client.useExtendedSecurity", true);
    public static final String ah = xj.b("jcifs.netbios.hostname", (String) null);
    public static final int ai = xj.a("jcifs.smb.lmCompatibility", 3);
    public static final int aj = ((int) (Math.random() * 65536.0d));
    public static final TimeZone ak = TimeZone.getDefault();
    public static final boolean al = xj.a("jcifs.smb.client.useBatching", true);
    public static final String am = xj.b("jcifs.encoding", xj.b);
    public static final int an = ((ab ? 32768 : 0) | ((((ag ? 2048 : 0) | 3) | (ae ? 4 : 0)) | (ad ? 16384 : 0)));
    public static final int ao;
    public static final int ap = xj.a("jcifs.smb.client.flags2", an);
    public static final int aq = xj.a("jcifs.smb.client.capabilities", ao);
    public static final boolean ar = xj.a("jcifs.smb.client.tcpNoDelay", false);
    public static final int as = xj.a("jcifs.smb.client.responseTimeout", 30000);
    public static final LinkedList at = new LinkedList();
    public static final int au = xj.a("jcifs.smb.client.ssnLimit", 250);
    public static final int av = xj.a("jcifs.smb.client.soTimeout", 35000);
    public static final int aw = xj.a("jcifs.smb.client.connTimeout", 35000);
    public static final String ax = xj.b("jcifs.smb.client.nativeOs", System.getProperty("os.name"));
    public static final String ay = xj.b("jcifs.smb.client.nativeLanMan", "jCIFS");
    public static final aax az = new aax((xk) null, 0, (InetAddress) null, 0);

    static {
        int i = 4;
        int i2 = (af ? 16 : 0) | (ad ? 64 : 0);
        if (!ab) {
            i = 0;
        }
        ao = i2 | i | FragmentTransaction.TRANSIT_ENTER_MASK;
    }
}
