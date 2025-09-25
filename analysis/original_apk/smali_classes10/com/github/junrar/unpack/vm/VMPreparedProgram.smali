.class public Lcom/github/junrar/unpack/vm/VMPreparedProgram;
.super Ljava/lang/Object;
.source "VMPreparedProgram.java"


# instance fields
.field private AltCmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private Cmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private CmdCount:I

.field private FilteredDataOffset:I

.field private FilteredDataSize:I

.field private GlobalData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private InitR:[I

.field private StaticData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getAltCmd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    return-object v0
.end method

.method public getCmd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    return-object v0
.end method

.method public getCmdCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->CmdCount:I

    return v0
.end method

.method public getFilteredDataOffset()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->FilteredDataOffset:I

    return v0
.end method

.method public getFilteredDataSize()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->FilteredDataSize:I

    return v0
.end method

.method public getGlobalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    return-object v0
.end method

.method public getInitR()[I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->InitR:[I

    return-object v0
.end method

.method public getStaticData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    return-object v0
.end method

.method public setAltCmd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "altCmd":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setCmd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/junrar/unpack/vm/VMPreparedCommand;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "cmd":Ljava/util/List;, "Ljava/util/List<Lcom/github/junrar/unpack/vm/VMPreparedCommand;>;"
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setCmdCount(I)V
    .locals 0
    .param p1, "cmdCount"    # I

    .line 74
    iput p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->CmdCount:I

    .line 75
    return-void
.end method

.method public setFilteredDataOffset(I)V
    .locals 0
    .param p1, "filteredDataOffset"    # I

    .line 86
    iput p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->FilteredDataOffset:I

    .line 87
    return-void
.end method

.method public setFilteredDataSize(I)V
    .locals 0
    .param p1, "filteredDataSize"    # I

    .line 96
    iput p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->FilteredDataSize:I

    .line 97
    return-void
.end method

.method public setGlobalData(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "globalData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 105
    return-void
.end method

.method public setInitR([I)V
    .locals 0
    .param p1, "initR"    # [I

    .line 112
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 113
    return-void
.end method

.method public setStaticData(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "staticData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    iput-object p1, p0, Lcom/github/junrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 121
    return-void
.end method
