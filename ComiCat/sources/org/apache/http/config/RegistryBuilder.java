package org.apache.http.config;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.util.Args;

public final class RegistryBuilder<I> {
    private final Map<String, I> items = new HashMap();

    RegistryBuilder() {
    }

    public static <I> RegistryBuilder<I> create() {
        return new RegistryBuilder<>();
    }

    public final Registry<I> build() {
        return new Registry<>(this.items);
    }

    public final RegistryBuilder<I> register(String str, I i) {
        Args.notEmpty(str, "ID");
        Args.notNull(i, "Item");
        this.items.put(str.toLowerCase(Locale.ROOT), i);
        return this;
    }

    public final String toString() {
        return this.items.toString();
    }
}
