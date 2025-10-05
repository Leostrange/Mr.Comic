package defpackage;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: mz  reason: default package */
/* compiled from: JsonPolymorphicTypeMap */
public @interface mz {

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: mz$a */
    /* compiled from: JsonPolymorphicTypeMap */
    public @interface a {
        String a();

        Class<?> b();
    }

    a[] a();
}
