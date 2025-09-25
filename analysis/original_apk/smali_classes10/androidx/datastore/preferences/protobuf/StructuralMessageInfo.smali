.class final Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfo;


# annotations
.annotation runtime Landroidx/datastore/preferences/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private final fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/ProtoSyntax;Z[I[Landroidx/datastore/preferences/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 1
    .param p1, "syntax"    # Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .param p2, "messageSetWireFormat"    # Z
    .param p3, "checkInitialized"    # [I
    .param p4, "fields"    # [Landroidx/datastore/preferences/protobuf/FieldInfo;
    .param p5, "defaultInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "syntax",
            "messageSetWireFormat",
            "checkInitialized",
            "fields",
            "defaultInstance"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 65
    iput-boolean p2, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    .line 66
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->checkInitialized:[I

    .line 67
    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

    .line 68
    const-string v0, "defaultInstance"

    invoke-static {p5, v0}, Landroidx/datastore/preferences/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 69
    return-void
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    .line 103
    new-instance v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;
    .locals 1
    .param p0, "numFields"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numFields"
        }
    .end annotation

    .line 108
    new-instance v0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCheckInitialized()[I
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object v0
.end method

.method public getFields()[Landroidx/datastore/preferences/protobuf/FieldInfo;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
