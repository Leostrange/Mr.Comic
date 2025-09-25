.class public Lcom/github/junrar/volume/VolumeHelper;
.super Ljava/lang/Object;
.source "VolumeHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 99
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "arcName"    # Ljava/lang/String;
    .param p1, "oldNumbering"    # Z

    .line 41
    const/16 v0, 0x30

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_5

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 44
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x1

    .line 45
    .local v5, "indexR":I
    :goto_0
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/github/junrar/volume/VolumeHelper;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 46
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 48
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .line 49
    .local v6, "index":I
    add-int/lit8 v7, v5, -0x1

    .line 50
    .local v7, "indexL":I
    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/github/junrar/volume/VolumeHelper;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 51
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 53
    :cond_1
    if-gez v7, :cond_2

    .line 54
    return-object v2

    .line 56
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .local v2, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0, v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 59
    sub-int v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [C

    .line 60
    .local v8, "digits":[C
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v7, v9, v8, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 61
    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    .line 62
    .end local v5    # "indexR":I
    .local v3, "indexR":I
    :goto_2
    if-ltz v3, :cond_3

    aget-char v5, v8, v3

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    aput-char v5, v8, v3

    if-ne v5, v1, :cond_3

    .line 63
    aput-char v0, v8, v3

    .line 64
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 66
    :cond_3
    if-gez v3, :cond_4

    .line 67
    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2, p0, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "indexR":I
    .end local v4    # "len":I
    .end local v6    # "index":I
    .end local v7    # "indexL":I
    .end local v8    # "digits":[C
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 75
    .restart local v4    # "len":I
    const/4 v5, 0x4

    if-le v4, v5, :cond_a

    add-int/lit8 v5, v4, -0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_6

    goto :goto_6

    .line 78
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v4, -0x3

    .line 80
    .local v5, "off":I
    invoke-virtual {v2, p0, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/github/junrar/volume/VolumeHelper;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v5, 0x2

    .line 82
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/github/junrar/volume/VolumeHelper;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    .line 85
    :cond_7
    const/4 v6, 0x3

    new-array v6, v6, [C

    .line 86
    .local v6, "ext":[C
    invoke-virtual {p0, v5, v4, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 87
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    .line 88
    .local v3, "i":I
    :goto_3
    aget-char v7, v6, v3

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    aput-char v7, v6, v3

    if-ne v7, v1, :cond_8

    .line 89
    aput-char v0, v6, v3

    .line 90
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 92
    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 83
    .end local v3    # "i":I
    .end local v6    # "ext":[C
    :cond_9
    :goto_4
    const-string/jumbo v0, "r00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "off":I
    :cond_a
    :goto_6
    return-object v2
.end method
