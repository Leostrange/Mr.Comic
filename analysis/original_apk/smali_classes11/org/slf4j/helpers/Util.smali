.class public final Lorg/slf4j/helpers/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    }
.end annotation


# static fields
.field private static SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

.field private static SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getCallingClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lorg/slf4j/helpers/Util;->getSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    move-result-object v0

    .line 101
    .local v0, "securityManager":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    if-nez v0, :cond_0

    .line 102
    const/4 v1, 0x0

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v1

    .line 104
    .local v1, "trace":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v2, Lorg/slf4j/helpers/Util;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "thisClassName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 109
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_2
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x2

    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 118
    add-int/lit8 v4, v3, 0x2

    aget-object v4, v1, v4

    return-object v4

    .line 115
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    .locals 1

    .line 75
    sget-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    return-object v0

    .line 77
    :cond_0
    sget-boolean v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_1
    invoke-static {}, Lorg/slf4j/helpers/Util;->safeCreateSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    move-result-object v0

    sput-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    .line 82
    sget-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    return-object v0
.end method

.method public static final report(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLF4J: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static final report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Reported exception:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    return-void
.end method

.method private static safeCreateSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    .locals 2

    .line 88
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    invoke-direct {v1, v0}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;-><init>(Lorg/slf4j/helpers/Util$1;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "sm":Ljava/lang/SecurityException;
    return-object v0
.end method

.method public static safeGetBooleanSystemProperty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 55
    const/4 v1, 0x0

    return v1

    .line 57
    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 40
    if-eqz p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 49
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
