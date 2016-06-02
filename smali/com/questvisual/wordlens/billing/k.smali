.class public final enum Lcom/questvisual/wordlens/billing/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/billing/k;

.field public static final enum b:Lcom/questvisual/wordlens/billing/k;

.field public static final enum c:Lcom/questvisual/wordlens/billing/k;

.field private static final synthetic d:[Lcom/questvisual/wordlens/billing/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/questvisual/wordlens/billing/k;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/billing/k;-><init>(Ljava/lang/String;I)V

    .line 6
    sput-object v0, Lcom/questvisual/wordlens/billing/k;->a:Lcom/questvisual/wordlens/billing/k;

    .line 7
    new-instance v0, Lcom/questvisual/wordlens/billing/k;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/billing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/k;->b:Lcom/questvisual/wordlens/billing/k;

    .line 8
    new-instance v0, Lcom/questvisual/wordlens/billing/k;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/billing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/k;->c:Lcom/questvisual/wordlens/billing/k;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/questvisual/wordlens/billing/k;

    sget-object v1, Lcom/questvisual/wordlens/billing/k;->a:Lcom/questvisual/wordlens/billing/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/questvisual/wordlens/billing/k;->b:Lcom/questvisual/wordlens/billing/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/billing/k;->c:Lcom/questvisual/wordlens/billing/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/questvisual/wordlens/billing/k;->d:[Lcom/questvisual/wordlens/billing/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/questvisual/wordlens/billing/k;
    .locals 2
    .parameter

    .prologue
    .line 12
    invoke-static {}, Lcom/questvisual/wordlens/billing/k;->values()[Lcom/questvisual/wordlens/billing/k;

    move-result-object v0

    .line 13
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 14
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/billing/k;->b:Lcom/questvisual/wordlens/billing/k;

    .line 16
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/billing/k;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/billing/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/billing/k;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/billing/k;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/billing/k;->d:[Lcom/questvisual/wordlens/billing/k;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/billing/k;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
