.class Lnet/lingala/zip4j/io/inputstream/StoreInputStream;
.super Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
.source "StoreInputStream.java"


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
            "*>;)V"
        }
    .end annotation

    .line 6
    .local p1, "cipherInputStream":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;, "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<*>;"
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V

    .line 7
    return-void
.end method
