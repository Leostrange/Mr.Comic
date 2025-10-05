package defpackage;

import defpackage.ue;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: ua  reason: default package */
/* compiled from: Archive */
public class ua implements Closeable {
    public static ub h = new ub();
    private static Logger i = Logger.getLogger(ua.class.getName());
    public uf a;
    public final ux b;
    public final List<uk> c;
    public us d;
    public ur e;
    public uy f;
    public long g;
    private final uc j;
    private un k;
    private long l;
    private int m;
    private boolean n;
    private int o;
    private long p;

    public ua(File file) {
        this(file, (byte) 0);
    }

    private ua(File file, byte b2) {
        this.c = new ArrayList();
        this.d = null;
        this.e = null;
        this.k = null;
        this.l = -1;
        this.n = false;
        this.o = 0;
        this.p = 0;
        this.g = 0;
        a(new uh(file));
        this.j = null;
        this.b = new ux(this);
    }

    private void a(uf ufVar) {
        un unVar;
        this.p = 0;
        this.g = 0;
        close();
        this.a = ufVar;
        try {
            this.d = null;
            this.e = null;
            this.k = null;
            this.c.clear();
            this.m = 0;
            long length = this.a.length();
            while (true) {
                byte[] bArr = new byte[7];
                long a2 = this.a.a();
                if (a2 < length && this.a.a(bArr, 7) != 0) {
                    uk ukVar = new uk(bArr);
                    ukVar.a(a2);
                    if (ukVar.d()) {
                        byte[] bArr2 = new byte[4];
                        this.a.a(bArr2, 4);
                        ukVar.a(bArr2);
                    }
                    switch (ukVar.g()) {
                        case MarkHeader:
                            this.d = new us(ukVar);
                            if (!this.d.h()) {
                                throw new ue(ue.a.badRarArchive);
                            }
                            this.c.add(this.d);
                            continue;
                        case MainHeader:
                            int i2 = ukVar.c() ? 7 : 6;
                            byte[] bArr3 = new byte[i2];
                            this.a.a(bArr3, i2);
                            ur urVar = new ur(ukVar, bArr3);
                            this.c.add(urVar);
                            this.e = urVar;
                            if (this.e.h()) {
                                throw new ue(ue.a.rarEncryptedException);
                            }
                            continue;
                        case SignHeader:
                            byte[] bArr4 = new byte[8];
                            this.a.a(bArr4, 8);
                            this.c.add(new uv(ukVar, bArr4));
                            continue;
                        case AvHeader:
                            byte[] bArr5 = new byte[7];
                            this.a.a(bArr5, 7);
                            this.c.add(new uj(ukVar, bArr5));
                            continue;
                        case CommHeader:
                            byte[] bArr6 = new byte[6];
                            this.a.a(bArr6, 6);
                            um umVar = new um(ukVar, bArr6);
                            this.c.add(umVar);
                            this.a.a(umVar.e() + ((long) umVar.f()));
                            continue;
                        case EndArcHeader:
                            int i3 = 0;
                            if (ukVar.a()) {
                                i3 = 4;
                            }
                            if (ukVar.b()) {
                                i3 += 2;
                            }
                            if (i3 > 0) {
                                byte[] bArr7 = new byte[i3];
                                this.a.a(bArr7, i3);
                                unVar = new un(ukVar, bArr7);
                            } else {
                                unVar = new un(ukVar, (byte[]) null);
                            }
                            this.c.add(unVar);
                            this.k = unVar;
                            break;
                        default:
                            byte[] bArr8 = new byte[4];
                            this.a.a(bArr8, 4);
                            ul ulVar = new ul(ukVar, bArr8);
                            switch (ulVar.g()) {
                                case NewSubHeader:
                                case FileHeader:
                                    int f2 = (ulVar.f() - 7) - 4;
                                    byte[] bArr9 = new byte[f2];
                                    this.a.a(bArr9, f2);
                                    uo uoVar = new uo(ulVar, bArr9);
                                    this.c.add(uoVar);
                                    this.a.a((uoVar.j() ? uoVar.m : 0) + uoVar.e() + ((long) uoVar.f()));
                                    continue;
                                case ProtectHeader:
                                    int f3 = (ulVar.f() - 7) - 4;
                                    byte[] bArr10 = new byte[f3];
                                    this.a.a(bArr10, f3);
                                    uu uuVar = new uu(ulVar, bArr10);
                                    this.a.a(((long) uuVar.g) + uuVar.e() + ((long) uuVar.f()));
                                    break;
                                case SubHeader:
                                    this.a.a(a2 + ((long) ukVar.f()));
                                    break;
                                default:
                                    i.warning("Unknown Header");
                                    throw new ue(ue.a.notRarArchive);
                            }
                    }
                }
            }
        } catch (Exception e2) {
            i.log(Level.WARNING, "exception in archive constructor maybe file is encrypted or currupt", e2);
        }
        for (uk next : this.c) {
            if (next.g() == uw.FileHeader) {
                this.p += ((uo) next).m;
            }
        }
    }

    public final List<uo> a() {
        ArrayList arrayList = new ArrayList();
        for (uk next : this.c) {
            if (next.g().equals(uw.FileHeader)) {
                arrayList.add((uo) next);
            }
        }
        return arrayList;
    }

    public void close() {
        if (this.a != null) {
            this.a.close();
            this.a = null;
        }
        if (this.f != null) {
            this.f.b();
        }
    }
}
