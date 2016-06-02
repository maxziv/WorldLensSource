.class public final enum Lcom/questvisual/wordlens/messaging/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/messaging/c;

.field public static final enum b:Lcom/questvisual/wordlens/messaging/c;

.field public static final enum c:Lcom/questvisual/wordlens/messaging/c;

.field public static final enum d:Lcom/questvisual/wordlens/messaging/c;

.field private static final synthetic e:[Lcom/questvisual/wordlens/messaging/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/questvisual/wordlens/messaging/c;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/messaging/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/messaging/c;->a:Lcom/questvisual/wordlens/messaging/c;

    .line 96
    new-instance v0, Lcom/questvisual/wordlens/messaging/c;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/messaging/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/messaging/c;->b:Lcom/questvisual/wordlens/messaging/c;

    .line 97
    new-instance v0, Lcom/questvisual/wordlens/messaging/c;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/messaging/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/messaging/c;->c:Lcom/questvisual/wordlens/messaging/c;

    .line 98
    new-instance v0, Lcom/questvisual/wordlens/messaging/c;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/messaging/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/messaging/c;->d:Lcom/questvisual/wordlens/messaging/c;

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/questvisual/wordlens/messaging/c;

    sget-object v1, Lcom/questvisual/wordlens/messaging/c;->a:Lcom/questvisual/wordlens/messaging/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/questvisual/wordlens/messaging/c;->b:Lcom/questvisual/wordlens/messaging/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/messaging/c;->c:Lcom/questvisual/wordlens/messaging/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/messaging/c;->d:Lcom/questvisual/wordlens/messaging/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/questvisual/wordlens/messaging/c;->e:[Lcom/questvisual/wordlens/messaging/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/messaging/c;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/messaging/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/messaging/c;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/messaging/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/messaging/c;->e:[Lcom/questvisual/wordlens/messaging/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/messaging/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
