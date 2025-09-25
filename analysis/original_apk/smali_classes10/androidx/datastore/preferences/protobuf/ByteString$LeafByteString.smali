.class abstract Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;
.super Landroidx/datastore/preferences/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 951
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Landroidx/datastore/preferences/protobuf/ByteString;II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "offset",
            "length"
        }
    .end annotation
.end method

.method protected final getTreeDepth()I
    .locals 1

    .line 956
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .locals 1

    .line 961
    const/4 v0, 0x1

    return v0
.end method

.method writeToReverse(Landroidx/datastore/preferences/protobuf/ByteOutput;)V
    .locals 0
    .param p1, "byteOutput"    # Landroidx/datastore/preferences/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;->writeTo(Landroidx/datastore/preferences/protobuf/ByteOutput;)V

    .line 967
    return-void
.end method
