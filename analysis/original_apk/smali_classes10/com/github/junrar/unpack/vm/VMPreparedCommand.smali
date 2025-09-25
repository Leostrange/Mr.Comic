.class public Lcom/github/junrar/unpack/vm/VMPreparedCommand;
.super Ljava/lang/Object;
.source "VMPreparedCommand.java"


# instance fields
.field private ByteMode:Z

.field private Op1:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

.field private Op2:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

.field private OpCode:Lcom/github/junrar/unpack/vm/VMCommands;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    invoke-direct {v0}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 30
    new-instance v0, Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    invoke-direct {v0}, Lcom/github/junrar/unpack/vm/VMPreparedOperand;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    return-void
.end method


# virtual methods
.method public getOp1()Lcom/github/junrar/unpack/vm/VMPreparedOperand;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    return-object v0
.end method

.method public getOp2()Lcom/github/junrar/unpack/vm/VMPreparedOperand;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    return-object v0
.end method

.method public getOpCode()Lcom/github/junrar/unpack/vm/VMCommands;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->OpCode:Lcom/github/junrar/unpack/vm/VMCommands;

    return-object v0
.end method

.method public isByteMode()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->ByteMode:Z

    return v0
.end method

.method public setByteMode(Z)V
    .locals 0
    .param p1, "byteMode"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->ByteMode:Z

    .line 37
    return-void
.end method

.method public setOp1(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)V
    .locals 0
    .param p1, "op1"    # Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 42
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->Op1:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 43
    return-void
.end method

.method public setOp2(Lcom/github/junrar/unpack/vm/VMPreparedOperand;)V
    .locals 0
    .param p1, "op2"    # Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 48
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->Op2:Lcom/github/junrar/unpack/vm/VMPreparedOperand;

    .line 49
    return-void
.end method

.method public setOpCode(Lcom/github/junrar/unpack/vm/VMCommands;)V
    .locals 0
    .param p1, "opCode"    # Lcom/github/junrar/unpack/vm/VMCommands;

    .line 54
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedCommand;->OpCode:Lcom/github/junrar/unpack/vm/VMCommands;

    .line 55
    return-void
.end method
