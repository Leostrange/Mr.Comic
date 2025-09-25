.class final Landroidx/datastore/preferences/protobuf/Java8Compatibility;
.super Ljava/lang/Object;
.source "Java8Compatibility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 44
    return-void
.end method

.method static flip(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 48
    return-void
.end method

.method static limit(Ljava/nio/Buffer;I)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "limit"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 52
    return-void
.end method

.method static mark(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method static position(Ljava/nio/Buffer;I)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "position"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return-void
.end method

.method static reset(Ljava/nio/Buffer;)V
    .locals 0
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 64
    return-void
.end method
