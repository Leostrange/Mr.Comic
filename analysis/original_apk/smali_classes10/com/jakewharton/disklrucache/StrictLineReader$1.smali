.class Lcom/jakewharton/disklrucache/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/disklrucache/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/jakewharton/disklrucache/StrictLineReader;I)V
    .locals 0
    .param p2, "x0"    # I

    .line 148
    iput-object p1, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->this$0:Lcom/jakewharton/disklrucache/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 151
    iget v0, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->buf:[B

    iget v1, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->count:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->count:I

    .line 153
    .local v0, "length":I
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->buf:[B

    iget-object v3, p0, Lcom/jakewharton/disklrucache/StrictLineReader$1;->this$0:Lcom/jakewharton/disklrucache/StrictLineReader;

    invoke-static {v3}, Lcom/jakewharton/disklrucache/StrictLineReader;->access$000(Lcom/jakewharton/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
