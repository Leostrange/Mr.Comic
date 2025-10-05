package defpackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Hashtable;
import org.apache.http.message.TokenParser;

/* renamed from: ye  reason: default package */
/* compiled from: Lmhosts */
public final class ye {
    private static final String a = xj.a("jcifs.netbios.lmhosts");
    private static final Hashtable b = new Hashtable();
    private static long c = 1;
    private static int d;
    private static abx e = abx.a();

    public static synchronized yk a(String str) {
        yk a2;
        synchronized (ye.class) {
            a2 = a(new yf(str, 32, (String) null));
        }
        return a2;
    }

    static synchronized yk a(yf yfVar) {
        yk ykVar;
        yk ykVar2;
        synchronized (ye.class) {
            ykVar = null;
            try {
                if (a != null) {
                    File file = new File(a);
                    long lastModified = file.lastModified();
                    if (lastModified > c) {
                        c = lastModified;
                        b.clear();
                        d = 0;
                        a((Reader) new FileReader(file));
                    }
                    ykVar2 = (yk) b.get(yfVar);
                } else {
                    ykVar2 = null;
                }
                ykVar = ykVar2;
            } catch (FileNotFoundException e2) {
                if (abx.a > 1) {
                    e.println("lmhosts file: " + a);
                    e2.printStackTrace(e);
                }
            } catch (IOException e3) {
                if (abx.a > 0) {
                    e3.printStackTrace(e);
                }
            }
        }
        return ykVar;
    }

    private static void a(Reader reader) {
        int i;
        char c2;
        String readLine;
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String readLine2 = bufferedReader.readLine();
            if (readLine2 != null) {
                String trim = readLine2.toUpperCase().trim();
                if (trim.length() != 0) {
                    if (trim.charAt(0) == '#') {
                        if (trim.startsWith("#INCLUDE ")) {
                            String str = "smb:" + trim.substring(trim.indexOf(92)).replace(TokenParser.ESCAPE, '/');
                            if (d > 0) {
                                try {
                                    a((Reader) new InputStreamReader(new aas(str)));
                                    d--;
                                    do {
                                        readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                    } while (readLine.toUpperCase().trim().startsWith("#END_ALTERNATE"));
                                } catch (IOException e2) {
                                    e.println("lmhosts URL: " + str);
                                    e2.printStackTrace(e);
                                }
                            } else {
                                a((Reader) new InputStreamReader(new aas(str)));
                            }
                        } else if (trim.startsWith("#BEGIN_ALTERNATE")) {
                            d++;
                        } else if (trim.startsWith("#END_ALTERNATE") && d > 0) {
                            d--;
                            throw new IOException("no lmhosts alternate includes loaded");
                        }
                    } else if (Character.isDigit(trim.charAt(0))) {
                        char[] charArray = trim.toCharArray();
                        char c3 = '.';
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < charArray.length && c3 == '.') {
                            int i4 = i2;
                            int i5 = 0;
                            while (true) {
                                if (i4 >= charArray.length) {
                                    break;
                                }
                                c2 = charArray[i4];
                                if (c2 < '0' || c2 > '9') {
                                    c3 = c2;
                                } else {
                                    i4++;
                                    i5 = ((i5 * 10) + c2) - 48;
                                    c3 = c2;
                                }
                            }
                            c3 = c2;
                            i3 = (i3 << 8) + i5;
                            i2 = i4 + 1;
                        }
                        while (true) {
                            i = i2;
                            if (i >= charArray.length || !Character.isWhitespace(charArray[i])) {
                                int i6 = i;
                            } else {
                                i2 = i + 1;
                            }
                        }
                        int i62 = i;
                        while (i62 < charArray.length && !Character.isWhitespace(charArray[i62])) {
                            i62++;
                        }
                        yf yfVar = new yf(trim.substring(i, i62), 32, (String) null);
                        b.put(yfVar, new yk(yfVar, i3, false, 0, false, false, true, true, yk.d));
                    }
                }
            } else {
                return;
            }
        }
    }
}
