.class public Lcom/github/junrar/unpack/vm/VMCmdFlags;
.super Ljava/lang/Object;
.source "VMCmdFlags.java"


# static fields
.field public static final VMCF_BYTEMODE:B = 0x4t

.field public static final VMCF_CHFLAGS:B = 0x40t

.field public static final VMCF_JUMP:B = 0x8t

.field public static final VMCF_OP0:B = 0x0t

.field public static final VMCF_OP1:B = 0x1t

.field public static final VMCF_OP2:B = 0x2t

.field public static final VMCF_OPMASK:B = 0x3t

.field public static final VMCF_PROC:B = 0x10t

.field public static final VMCF_USEFLAGS:B = 0x20t

.field public static VM_CmdFlags:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/junrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0x46t
        0x46t
        0x46t
        0x29t
        0x29t
        0x45t
        0x45t
        0x9t
        0x46t
        0x46t
        0x46t
        0x46t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x1t
        0x1t
        0x11t
        0x10t
        0x5t
        0x46t
        0x46t
        0x46t
        0x45t
        0x0t
        0x0t
        0x20t
        0x40t
        0x2t
        0x2t
        0x6t
        0x6t
        0x6t
        0x66t
        0x66t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
