.class public final enum Lcom/github/junrar/unpack/vm/VMOpType;
.super Ljava/lang/Enum;
.source "VMOpType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/unpack/vm/VMOpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

.field public static final enum VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;


# instance fields
.field private final opType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/github/junrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPREG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

    .line 28
    new-instance v0, Lcom/github/junrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    .line 29
    new-instance v0, Lcom/github/junrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPREGMEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    .line 30
    new-instance v0, Lcom/github/junrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPNONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    .line 26
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

    sget-object v1, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    sget-object v2, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    sget-object v3, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/github/junrar/unpack/vm/VMOpType;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->$VALUES:[Lcom/github/junrar/unpack/vm/VMOpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "opType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/github/junrar/unpack/vm/VMOpType;->opType:I

    .line 36
    return-void
.end method

.method public static findOpType(I)Lcom/github/junrar/unpack/vm/VMOpType;
    .locals 1
    .param p0, "opType"    # I

    .line 48
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREG:Lcom/github/junrar/unpack/vm/VMOpType;

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPINT:Lcom/github/junrar/unpack/vm/VMOpType;

    return-object v0

    .line 57
    :cond_1
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lcom/github/junrar/unpack/vm/VMOpType;

    return-object v0

    .line 61
    :cond_2
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->VM_OPNONE:Lcom/github/junrar/unpack/vm/VMOpType;

    return-object v0

    .line 64
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/vm/VMOpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/vm/VMOpType;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/vm/VMOpType;
    .locals 1

    .line 26
    sget-object v0, Lcom/github/junrar/unpack/vm/VMOpType;->$VALUES:[Lcom/github/junrar/unpack/vm/VMOpType;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/vm/VMOpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/vm/VMOpType;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "opType"    # I

    .line 44
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMOpType;->opType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMOpType;->opType:I

    return v0
.end method
