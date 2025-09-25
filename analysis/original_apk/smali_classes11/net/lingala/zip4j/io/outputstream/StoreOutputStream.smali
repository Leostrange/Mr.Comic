.class Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
.source "StoreOutputStream.java"


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
            "*>;)V"
        }
    .end annotation

    .line 6
    .local p1, "cipherOutputStream":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<*>;"
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    .line 7
    return-void
.end method
