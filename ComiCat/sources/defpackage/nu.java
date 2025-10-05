package defpackage;

import java.io.Serializable;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* renamed from: nu  reason: default package */
/* compiled from: DateTime */
public final class nu implements Serializable {
    private static final TimeZone a = TimeZone.getTimeZone("GMT");
    private static final Pattern b = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");
    private final long c;
    private final boolean d;
    private final int e;

    public nu() {
        this(false, 0, (Integer) null);
    }

    private nu(boolean z, long j, Integer num) {
        this.d = z;
        this.c = j;
        this.e = z ? 0 : num == null ? TimeZone.getDefault().getOffset(j) / 60000 : num.intValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0142  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.nu a(java.lang.String r24) {
        /*
            java.util.regex.Pattern r2 = b
            r0 = r24
            java.util.regex.Matcher r13 = r2.matcher(r0)
            boolean r2 = r13.matches()
            if (r2 != 0) goto L_0x0025
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Invalid date/time format: "
            r3.<init>(r4)
            r0 = r24
            java.lang.StringBuilder r3 = r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        L_0x0025:
            r2 = 1
            java.lang.String r2 = r13.group(r2)
            int r3 = java.lang.Integer.parseInt(r2)
            r2 = 2
            java.lang.String r2 = r13.group(r2)
            int r2 = java.lang.Integer.parseInt(r2)
            int r4 = r2 + -1
            r2 = 3
            java.lang.String r2 = r13.group(r2)
            int r5 = java.lang.Integer.parseInt(r2)
            r2 = 4
            java.lang.String r2 = r13.group(r2)
            if (r2 == 0) goto L_0x0075
            r2 = 1
            r9 = r2
        L_0x004b:
            r2 = 9
            java.lang.String r14 = r13.group(r2)
            if (r14 == 0) goto L_0x0078
            r2 = 1
            r12 = r2
        L_0x0055:
            r6 = 0
            r7 = 0
            r8 = 0
            r2 = 0
            r11 = 0
            if (r12 == 0) goto L_0x007b
            if (r9 != 0) goto L_0x007b
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Invalid date/time format, cannot specify time zone shift without specifying time: "
            r3.<init>(r4)
            r0 = r24
            java.lang.StringBuilder r3 = r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        L_0x0075:
            r2 = 0
            r9 = r2
            goto L_0x004b
        L_0x0078:
            r2 = 0
            r12 = r2
            goto L_0x0055
        L_0x007b:
            if (r9 == 0) goto L_0x0146
            r6 = 5
            java.lang.String r6 = r13.group(r6)
            int r6 = java.lang.Integer.parseInt(r6)
            r7 = 6
            java.lang.String r7 = r13.group(r7)
            int r7 = java.lang.Integer.parseInt(r7)
            r8 = 7
            java.lang.String r8 = r13.group(r8)
            int r8 = java.lang.Integer.parseInt(r8)
            r10 = 8
            java.lang.String r10 = r13.group(r10)
            if (r10 == 0) goto L_0x0146
            r2 = 8
            java.lang.String r2 = r13.group(r2)
            r10 = 1
            java.lang.String r2 = r2.substring(r10)
            int r2 = java.lang.Integer.parseInt(r2)
            r10 = 8
            java.lang.String r10 = r13.group(r10)
            r15 = 1
            java.lang.String r10 = r10.substring(r15)
            int r10 = r10.length()
            int r10 = r10 + -3
            float r2 = (float) r2
            double r0 = (double) r2
            r16 = r0
            r18 = 4621819117588971520(0x4024000000000000, double:10.0)
            double r0 = (double) r10
            r20 = r0
            double r18 = java.lang.Math.pow(r18, r20)
            double r16 = r16 / r18
            r0 = r16
            int r2 = (int) r0
            r10 = r2
        L_0x00d3:
            java.util.GregorianCalendar r2 = new java.util.GregorianCalendar
            java.util.TimeZone r15 = a
            r2.<init>(r15)
            r2.set(r3, r4, r5, r6, r7, r8)
            r3 = 14
            r2.set(r3, r10)
            long r4 = r2.getTimeInMillis()
            if (r9 == 0) goto L_0x0144
            if (r12 == 0) goto L_0x0144
            r2 = 0
            char r2 = r14.charAt(r2)
            char r2 = java.lang.Character.toUpperCase(r2)
            r3 = 90
            if (r2 != r3) goto L_0x010f
            r2 = 0
            r22 = r4
            r4 = r2
            r2 = r22
        L_0x00fd:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r22 = r2
            r2 = r4
            r4 = r22
        L_0x0106:
            nu r6 = new nu
            if (r9 != 0) goto L_0x0142
            r3 = 1
        L_0x010b:
            r6.<init>(r3, r4, r2)
            return r6
        L_0x010f:
            r2 = 11
            java.lang.String r2 = r13.group(r2)
            int r2 = java.lang.Integer.parseInt(r2)
            int r2 = r2 * 60
            r3 = 12
            java.lang.String r3 = r13.group(r3)
            int r3 = java.lang.Integer.parseInt(r3)
            int r2 = r2 + r3
            r3 = 10
            java.lang.String r3 = r13.group(r3)
            r6 = 0
            char r3 = r3.charAt(r6)
            r6 = 45
            if (r3 != r6) goto L_0x0136
            int r2 = -r2
        L_0x0136:
            long r6 = (long) r2
            r10 = 60000(0xea60, double:2.9644E-319)
            long r6 = r6 * r10
            long r4 = r4 - r6
            r22 = r4
            r4 = r2
            r2 = r22
            goto L_0x00fd
        L_0x0142:
            r3 = 0
            goto L_0x010b
        L_0x0144:
            r2 = r11
            goto L_0x0106
        L_0x0146:
            r10 = r2
            goto L_0x00d3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nu.a(java.lang.String):nu");
    }

    private static void a(StringBuilder sb, int i, int i2) {
        if (i < 0) {
            sb.append('-');
            i = -i;
        }
        int i3 = i;
        while (i3 > 0) {
            i3 /= 10;
            i2--;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append('0');
        }
        if (i != 0) {
            sb.append(i);
        }
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(a);
        gregorianCalendar.setTimeInMillis(this.c + (((long) this.e) * 60000));
        a(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        a(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        a(sb, gregorianCalendar.get(5), 2);
        if (!this.d) {
            sb.append('T');
            a(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            a(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            a(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                a(sb, gregorianCalendar.get(14), 3);
            }
            if (this.e == 0) {
                sb.append('Z');
            } else {
                int i = this.e;
                if (this.e > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    i = -i;
                }
                a(sb, i / 60, 2);
                sb.append(':');
                a(sb, i % 60, 2);
            }
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nu)) {
            return false;
        }
        nu nuVar = (nu) obj;
        return this.d == nuVar.d && this.c == nuVar.c && this.e == nuVar.e;
    }

    public final int hashCode() {
        long[] jArr = new long[3];
        jArr[0] = this.c;
        jArr[1] = this.d ? 1 : 0;
        jArr[2] = (long) this.e;
        return Arrays.hashCode(jArr);
    }

    public final String toString() {
        return a();
    }
}
