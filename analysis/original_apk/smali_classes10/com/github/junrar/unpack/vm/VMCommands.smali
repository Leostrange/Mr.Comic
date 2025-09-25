.class public final enum Lcom/github/junrar/unpack/vm/VMCommands;
.super Ljava/lang/Enum;
.source "VMCommands.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/unpack/vm/VMCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;


# instance fields
.field private final vmCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 59

    .line 27
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_CMP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_ADD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_SUB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JZ"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JNZ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_INC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 28
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_DEC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JMP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_XOR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_AND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_OR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_TEST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 29
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JNS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JB"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JBE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JA"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_JAE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 30
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_PUSH"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_POP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_CALL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "VM_RET"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "VM_NOT"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "VM_SHL"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 31
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "VM_SHR"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "VM_SAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "VM_NEG"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "VM_PUSHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    const-string v3, "VM_POPA"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const-string v3, "VM_PUSHF"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 32
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    const-string v3, "VM_POPF"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x20

    const/16 v2, 0x20

    const-string v3, "VM_MOVZX"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x21

    const/16 v2, 0x21

    const-string v3, "VM_MOVSX"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x22

    const/16 v2, 0x22

    const-string v3, "VM_XCHG"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x23

    const/16 v2, 0x23

    const-string v3, "VM_MUL"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x24

    const/16 v2, 0x24

    const-string v3, "VM_DIV"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 33
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x25

    const/16 v2, 0x25

    const-string v3, "VM_ADC"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x26

    const/16 v2, 0x26

    const-string v3, "VM_SBB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x27

    const/16 v2, 0x27

    const-string v3, "VM_PRINT"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 36
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x28

    const/16 v2, 0x28

    const-string v3, "VM_MOVB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x29

    const/16 v2, 0x29

    const-string v3, "VM_MOVD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    const-string v3, "VM_CMPB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    const-string v3, "VM_CMPD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 38
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    const-string v3, "VM_ADDB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    const-string v3, "VM_ADDD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    const-string v3, "VM_SUBB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    const-string v3, "VM_SUBD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x30

    const/16 v2, 0x30

    const-string v3, "VM_INCB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x31

    const/16 v2, 0x31

    const-string v3, "VM_INCD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 39
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x32

    const/16 v2, 0x32

    const-string v3, "VM_DECB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x33

    const/16 v2, 0x33

    const-string v3, "VM_DECD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x34

    const/16 v2, 0x34

    const-string v3, "VM_NEGB"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x35

    const/16 v2, 0x35

    const-string v3, "VM_NEGD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 42
    new-instance v0, Lcom/github/junrar/unpack/vm/VMCommands;

    const/16 v1, 0x36

    const/16 v2, 0x36

    const-string v3, "VM_STANDARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 26
    sget-object v4, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v5, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v6, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v7, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v8, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v9, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v10, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v11, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v12, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v13, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v14, Lcom/github/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v15, Lcom/github/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v16, Lcom/github/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v17, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v18, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v19, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v20, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v21, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v22, Lcom/github/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v23, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v24, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v25, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v26, Lcom/github/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v27, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v28, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v29, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v30, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v31, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v32, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v33, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v34, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v35, Lcom/github/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v36, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v37, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v38, Lcom/github/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v39, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v40, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v41, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v42, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v43, Lcom/github/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v44, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v45, Lcom/github/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v46, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v47, Lcom/github/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v48, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v49, Lcom/github/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v50, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v51, Lcom/github/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v52, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v53, Lcom/github/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v54, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v55, Lcom/github/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v56, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v57, Lcom/github/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/github/junrar/unpack/vm/VMCommands;

    sget-object v58, Lcom/github/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/github/junrar/unpack/vm/VMCommands;

    filled-new-array/range {v4 .. v58}, [Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/github/junrar/unpack/vm/VMCommands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "vmCommand"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/github/junrar/unpack/vm/VMCommands;->vmCommand:I

    .line 48
    return-void
.end method

.method public static findVMCommand(I)Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 5
    .param p0, "vmCommand"    # I

    .line 59
    invoke-static {}, Lcom/github/junrar/unpack/vm/VMCommands;->values()[Lcom/github/junrar/unpack/vm/VMCommands;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    .local v3, "e":Lcom/github/junrar/unpack/vm/VMCommands;
    invoke-virtual {v3, p0}, Lcom/github/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    return-object v3

    .line 59
    .end local v3    # "e":Lcom/github/junrar/unpack/vm/VMCommands;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 1

    .line 26
    sget-object v0, Lcom/github/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/github/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/vm/VMCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "vmCommand"    # I

    .line 55
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMCommands;->vmCommand:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVMCommand()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMCommands;->vmCommand:I

    return v0
.end method
