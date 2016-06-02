.class final enum Lcom/questvisual/wordlens/ci;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/ci;

.field public static final enum b:Lcom/questvisual/wordlens/ci;

.field public static final enum c:Lcom/questvisual/wordlens/ci;

.field public static final enum d:Lcom/questvisual/wordlens/ci;

.field private static final synthetic e:[Lcom/questvisual/wordlens/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-instance v0, Lcom/questvisual/wordlens/ci;

    const-string v1, "WELCOME"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    new-instance v0, Lcom/questvisual/wordlens/ci;

    const-string v1, "CAMERA_CHECK"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ci;->b:Lcom/questvisual/wordlens/ci;

    new-instance v0, Lcom/questvisual/wordlens/ci;

    const-string v1, "CAMERA_ADJUST"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ci;->c:Lcom/questvisual/wordlens/ci;

    new-instance v0, Lcom/questvisual/wordlens/ci;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/questvisual/wordlens/ci;

    sget-object v1, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    aput-object v1, v0, v2

    sget-object v1, Lcom/questvisual/wordlens/ci;->b:Lcom/questvisual/wordlens/ci;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/ci;->c:Lcom/questvisual/wordlens/ci;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    aput-object v1, v0, v5

    sput-object v0, Lcom/questvisual/wordlens/ci;->e:[Lcom/questvisual/wordlens/ci;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/ci;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/ci;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ci;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/ci;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/ci;->e:[Lcom/questvisual/wordlens/ci;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/ci;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
