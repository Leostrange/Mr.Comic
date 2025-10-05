package defpackage;

import java.util.Arrays;
import org.apache.http.message.TokenParser;

/* renamed from: ng  reason: default package */
/* compiled from: CharMatcher */
public abstract class ng {
    public static final ng a = new ng() {
        public final boolean a(char c) {
            switch (c) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case ' ':
                case 133:
                case 5760:
                case 8232:
                case 8233:
                case 8287:
                case 12288:
                    return true;
                case 8199:
                    return false;
                default:
                    return c >= 8192 && c <= 8202;
            }
        }

        public final String toString() {
            return "CharMatcher.BREAKING_WHITESPACE";
        }
    };
    public static final ng b = a(0, 127, "CharMatcher.ASCII");
    public static final ng c = new c("CharMatcher.DIGIT", "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray(), q.toCharArray());
    public static final ng d = new ng("CharMatcher.JAVA_DIGIT") {
        public final boolean a(char c) {
            return Character.isDigit(c);
        }
    };
    public static final ng e = new ng("CharMatcher.JAVA_LETTER") {
        public final boolean a(char c) {
            return Character.isLetter(c);
        }
    };
    public static final ng f = new ng("CharMatcher.JAVA_LETTER_OR_DIGIT") {
        public final boolean a(char c) {
            return Character.isLetterOrDigit(c);
        }
    };
    public static final ng g = new ng("CharMatcher.JAVA_UPPER_CASE") {
        public final boolean a(char c) {
            return Character.isUpperCase(c);
        }
    };
    public static final ng h = new ng("CharMatcher.JAVA_LOWER_CASE") {
        public final boolean a(char c) {
            return Character.isLowerCase(c);
        }
    };
    public static final ng i = a(0, 31).a(a(127, 159)).a("CharMatcher.JAVA_ISO_CONTROL");
    public static final ng j = new c("CharMatcher.INVISIBLE", "\u0000­؀؜۝܏ ᠎   ⁦⁧⁨⁩⁪　?﻿￹￺".toCharArray(), "  ­؄؜۝܏ ᠎‏ ⁤⁦⁧⁨⁩⁯　﻿￹￻".toCharArray());
    public static final ng k = new c("CharMatcher.SINGLE_WIDTH", "\u0000־א׳؀ݐ฀Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ๿₯℺﷿﻿ￜ".toCharArray());
    public static final ng l = new a("CharMatcher.ANY") {
        public final int a(CharSequence charSequence, int i) {
            int length = charSequence.length();
            ni.a(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        public final ng a(ng ngVar) {
            ni.a(ngVar);
            return this;
        }

        public final boolean a(char c) {
            return true;
        }
    };
    public static final ng m = new a("CharMatcher.NONE") {
        public final int a(CharSequence charSequence, int i) {
            ni.a(i, charSequence.length());
            return -1;
        }

        public final ng a(ng ngVar) {
            return (ng) ni.a(ngVar);
        }

        public final boolean a(char c) {
            return false;
        }
    };
    static final int o = Integer.numberOfLeadingZeros(31);
    public static final ng p = new a("WHITESPACE") {
        public final boolean a(char c) {
            return " 　\r   　 \u000b　   　 \t     \f 　 　　 \n 　".charAt((48906 * c) >>> o) == c;
        }
    };
    private static final String q;
    final String n;

    /* renamed from: ng$a */
    /* compiled from: CharMatcher */
    static abstract class a extends ng {
        a(String str) {
            super(str);
        }
    }

    /* renamed from: ng$b */
    /* compiled from: CharMatcher */
    static class b extends ng {
        final ng q;
        final ng r;

        b(ng ngVar, ng ngVar2) {
            this(ngVar, ngVar2, "CharMatcher.or(" + ngVar + ", " + ngVar2 + ")");
        }

        private b(ng ngVar, ng ngVar2, String str) {
            super(str);
            this.q = (ng) ni.a(ngVar);
            this.r = (ng) ni.a(ngVar2);
        }

        /* access modifiers changed from: package-private */
        public final ng a(String str) {
            return new b(this.q, this.r, str);
        }

        public final boolean a(char c) {
            return this.q.a(c) || this.r.a(c);
        }
    }

    /* renamed from: ng$c */
    /* compiled from: CharMatcher */
    static class c extends ng {
        private final char[] q;
        private final char[] r;

        c(String str, char[] cArr, char[] cArr2) {
            super(str);
            this.q = cArr;
            this.r = cArr2;
            ni.a(cArr.length == cArr2.length);
            for (int i = 0; i < cArr.length; i++) {
                ni.a(cArr[i] <= cArr2[i]);
                if (i + 1 < cArr.length) {
                    ni.a(cArr2[i] < cArr[i + 1]);
                }
            }
        }

        public final boolean a(char c) {
            int binarySearch = Arrays.binarySearch(this.q, c);
            if (binarySearch >= 0) {
                return true;
            }
            int i = (binarySearch ^ -1) - 1;
            return i >= 0 && c <= this.r[i];
        }
    }

    static {
        StringBuilder sb = new StringBuilder(31);
        for (int i2 = 0; i2 < 31; i2++) {
            sb.append((char) ("0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i2) + 9));
        }
        q = sb.toString();
    }

    protected ng() {
        this.n = super.toString();
    }

    ng(String str) {
        this.n = str;
    }

    public static ng a() {
        return new a("CharMatcher.is('" + b(',') + "')") {
            final /* synthetic */ char q = ',';

            public final ng a(ng ngVar) {
                return ngVar.a(this.q) ? ngVar : super.a(ngVar);
            }

            public final boolean a(char c) {
                return c == this.q;
            }
        };
    }

    private static ng a(char c2, char c3) {
        ni.a(c3 >= c2);
        return a(c2, c3, "CharMatcher.inRange('" + b(c2) + "', '" + b(c3) + "')");
    }

    private static ng a(final char c2, final char c3, String str) {
        return new a(str) {
            public final boolean a(char c) {
                return c2 <= c && c <= c3;
            }
        };
    }

    private static String b(char c2) {
        char[] cArr = {TokenParser.ESCAPE, 'u', 0, 0, 0, 0};
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public int a(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        ni.a(i2, length);
        for (int i3 = i2; i3 < length; i3++) {
            if (a(charSequence.charAt(i3))) {
                return i3;
            }
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public ng a(String str) {
        throw new UnsupportedOperationException();
    }

    public ng a(ng ngVar) {
        return new b(this, (ng) ni.a(ngVar));
    }

    public abstract boolean a(char c2);

    public String toString() {
        return this.n;
    }
}
