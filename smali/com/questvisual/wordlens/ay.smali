.class final enum Lcom/questvisual/wordlens/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/ay;

.field public static final enum b:Lcom/questvisual/wordlens/ay;

.field public static final enum c:Lcom/questvisual/wordlens/ay;

.field private static final synthetic d:[Lcom/questvisual/wordlens/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/questvisual/wordlens/ay;

    const-string v1, "WELCOME_1"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ay;->a:Lcom/questvisual/wordlens/ay;

    new-instance v0, Lcom/questvisual/wordlens/ay;

    const-string v1, "WELCOME_2"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ay;->b:Lcom/questvisual/wordlens/ay;

    new-instance v0, Lcom/questvisual/wordlens/ay;

    const-string v1, "INCLUDED_LANG_PICK"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ay;->c:Lcom/questvisual/wordlens/ay;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/questvisual/wordlens/ay;

    sget-object v1, Lcom/questvisual/wordlens/ay;->a:Lcom/questvisual/wordlens/ay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/questvisual/wordlens/ay;->b:Lcom/questvisual/wordlens/ay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/ay;->c:Lcom/questvisual/wordlens/ay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/questvisual/wordlens/ay;->d:[Lcom/questvisual/wordlens/ay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/ay;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ay;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/ay;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/ay;->d:[Lcom/questvisual/wordlens/ay;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/ay;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
