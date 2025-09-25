.class public final Lorg/slf4j/helpers/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# static fields
.field static final DELIM_START:C = '{'

.field static final DELIM_STOP:C = '}'

.field static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 3
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "argArray"    # [Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 157
    .local v0, "throwableCandidate":Ljava/lang/Throwable;
    move-object v1, p1

    .line 158
    .local v1, "args":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 159
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 161
    :cond_0
    invoke-static {p0, v1, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v2

    return-object v2
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 6
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "argArray"    # [Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v0, p0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    .line 177
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "L":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 182
    const-string v3, "{}"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, "j":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 186
    if-nez v0, :cond_2

    .line 187
    new-instance v4, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v4, p0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v4

    .line 190
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p0, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 191
    new-instance v4, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v4

    .line 194
    :cond_3
    invoke-static {p0, v3}, Lorg/slf4j/helpers/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 195
    invoke-static {p0, v3}, Lorg/slf4j/helpers/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 196
    add-int/lit8 v2, v2, -0x1

    .line 197
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, p0, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 198
    const/16 v4, 0x7b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 204
    :cond_4
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, p0, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 205
    aget-object v4, p1, v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v4, v5}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 206
    add-int/lit8 v0, v3, 0x2

    goto :goto_1

    .line 210
    :cond_5
    invoke-virtual {v1, p0, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 211
    aget-object v4, p1, v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v4, v5}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 212
    add-int/lit8 v0, v3, 0x2

    .line 180
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v3    # "j":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 218
    new-instance v3, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [Z

    .line 305
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    array-length v0, p1

    .line 307
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 308
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 310
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuilder;[B)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [B

    .line 316
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    array-length v0, p1

    .line 318
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 319
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 321
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuilder;[C)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [C

    .line 327
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    array-length v0, p1

    .line 329
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 330
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 332
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p2, "seenMap":Ljava/util/Map;, "Ljava/util/Map<[Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 245
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_1
    instance-of v0, p1, [Z

    if-eqz v0, :cond_2

    .line 254
    move-object v0, p1

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V

    goto :goto_0

    .line 255
    :cond_2
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    .line 256
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuilder;[B)V

    goto :goto_0

    .line 257
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 258
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuilder;[C)V

    goto :goto_0

    .line 259
    :cond_4
    instance-of v0, p1, [S

    if-eqz v0, :cond_5

    .line 260
    move-object v0, p1

    check-cast v0, [S

    check-cast v0, [S

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuilder;[S)V

    goto :goto_0

    .line 261
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 262
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuilder;[I)V

    goto :goto_0

    .line 263
    :cond_6
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    .line 264
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuilder;[J)V

    goto :goto_0

    .line 265
    :cond_7
    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 266
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuilder;[F)V

    goto :goto_0

    .line 267
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 268
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuilder;[D)V

    goto :goto_0

    .line 270
    :cond_9
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0, p2}, Lorg/slf4j/helpers/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 273
    :goto_0
    return-void
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuilder;[D)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [D

    .line 382
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    array-length v0, p1

    .line 384
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 385
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 387
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuilder;[F)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [F

    .line 371
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    array-length v0, p1

    .line 373
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 374
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 375
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 376
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    return-void
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 1
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 124
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 1
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 151
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    return-object v0
.end method

.method public static getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 401
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    .line 406
    .local v1, "lastEntry":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 407
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 410
    :cond_1
    return-object v0

    .line 402
    .end local v1    # "lastEntry":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuilder;[I)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [I

    .line 349
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    array-length v0, p1

    .line 351
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 352
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 354
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    return-void
.end method

.method static final isDoubleEscaped(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "delimeterStartIndex"    # I

    .line 235
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    .line 236
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final isEscapedDelimeter(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "delimeterStartIndex"    # I

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 224
    return v0

    .line 226
    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 227
    .local v1, "potentialEscape":C
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_1
    return v0
.end method

.method private static longArrayAppend(Ljava/lang/StringBuilder;[J)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [J

    .line 360
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    array-length v0, p1

    .line 362
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 365
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p2, "seenMap":Ljava/util/Map;, "Ljava/util/Map<[Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    array-length v0, p1

    .line 291
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 292
    aget-object v2, p1, v1

    invoke-static {p0, v2, p2}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 293
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 294
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v0    # "len":I
    goto :goto_1

    .line 299
    :cond_2
    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :goto_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    return-void
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "o"    # Ljava/lang/Object;

    .line 277
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "oAsString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    nop

    .end local v0    # "oAsString":Ljava/lang/String;
    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const-string v1, "[FAILED toString()]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuilder;[S)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [S

    .line 338
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    array-length v0, p1

    .line 340
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 341
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 343
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    return-void
.end method

.method public static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 422
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    .line 426
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 428
    .local v0, "trimmedLen":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 430
    .local v1, "trimmed":[Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 431
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :cond_0
    return-object v1

    .line 423
    .end local v0    # "trimmedLen":I
    .end local v1    # "trimmed":[Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-sensical empty or null argument array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
