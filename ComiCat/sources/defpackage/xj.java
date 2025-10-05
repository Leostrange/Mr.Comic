package defpackage;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

/* renamed from: xj  reason: default package */
/* compiled from: Config */
public class xj {
    public static int a = 0;
    public static String b;
    private static Properties c = new Properties();
    private static abx d = abx.a();

    static {
        b = "Cp850";
        try {
            String property = System.getProperty("jcifs.properties");
            FileInputStream fileInputStream = (property == null || property.length() <= 1) ? null : new FileInputStream(property);
            if (fileInputStream != null) {
                c.load(fileInputStream);
            }
            try {
                c.putAll((Map) System.getProperties().clone());
            } catch (SecurityException e) {
                if (abx.a > 1) {
                    d.println("SecurityException: jcifs will ignore System properties");
                }
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
        } catch (IOException e2) {
            if (abx.a > 0) {
                e2.printStackTrace(d);
            }
        }
        int a2 = a("jcifs.util.loglevel", -1);
        if (a2 != -1) {
            abx.a(a2);
        }
        try {
            "".getBytes(b);
        } catch (UnsupportedEncodingException e3) {
            if (abx.a >= 2) {
                d.println("WARNING: The default OEM encoding " + b + " does not appear to be supported by this JRE. The default encoding will be US-ASCII.");
            }
            b = "US-ASCII";
        }
        if (abx.a >= 4) {
            try {
                c.store(d, "JCIFS PROPERTIES");
            } catch (IOException e4) {
            }
        }
    }

    xj() {
    }

    public static int a(String str, int i) {
        String property = c.getProperty(str);
        if (property == null) {
            return i;
        }
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException e) {
            if (abx.a <= 0) {
                return i;
            }
            e.printStackTrace(d);
            return i;
        }
    }

    public static long a(String str, long j) {
        String property = c.getProperty(str);
        if (property == null) {
            return j;
        }
        try {
            return Long.parseLong(property);
        } catch (NumberFormatException e) {
            if (abx.a <= 0) {
                return j;
            }
            e.printStackTrace(d);
            return j;
        }
    }

    public static Object a(String str, String str2) {
        return c.setProperty(str, str2);
    }

    public static String a(String str) {
        return c.getProperty(str);
    }

    public static InetAddress a() {
        String property = c.getProperty("jcifs.smb.client.laddr");
        if (property != null) {
            try {
                return InetAddress.getByName(property);
            } catch (UnknownHostException e) {
                if (abx.a > 0) {
                    d.println("Ignoring jcifs.smb.client.laddr address: " + property);
                    e.printStackTrace(d);
                }
            }
        }
        return null;
    }

    public static InetAddress a(String str, InetAddress inetAddress) {
        String property = c.getProperty(str);
        if (property == null) {
            return inetAddress;
        }
        try {
            return InetAddress.getByName(property);
        } catch (UnknownHostException e) {
            if (abx.a <= 0) {
                return inetAddress;
            }
            d.println(property);
            e.printStackTrace(d);
            return inetAddress;
        }
    }

    public static boolean a(String str, boolean z) {
        String property = c.getProperty(str);
        return property != null ? property.toLowerCase().equals("true") : z;
    }

    public static InetAddress[] a(String str, String str2, InetAddress[] inetAddressArr) {
        String property = c.getProperty(str);
        if (property == null) {
            return inetAddressArr;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property, str2);
        int countTokens = stringTokenizer.countTokens();
        InetAddress[] inetAddressArr2 = new InetAddress[countTokens];
        int i = 0;
        while (i < countTokens) {
            String nextToken = stringTokenizer.nextToken();
            try {
                inetAddressArr2[i] = InetAddress.getByName(nextToken);
                i++;
            } catch (UnknownHostException e) {
                if (abx.a <= 0) {
                    return inetAddressArr;
                }
                d.println(nextToken);
                e.printStackTrace(d);
                return inetAddressArr;
            }
        }
        return inetAddressArr2;
    }

    public static String b(String str, String str2) {
        return c.getProperty(str, str2);
    }
}
