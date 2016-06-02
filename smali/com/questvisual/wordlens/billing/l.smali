.class public final enum Lcom/questvisual/wordlens/billing/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/billing/l;

.field public static final enum b:Lcom/questvisual/wordlens/billing/l;

.field public static final enum c:Lcom/questvisual/wordlens/billing/l;

.field public static final enum d:Lcom/questvisual/wordlens/billing/l;

.field public static final enum e:Lcom/questvisual/wordlens/billing/l;

.field public static final enum f:Lcom/questvisual/wordlens/billing/l;

.field public static final enum g:Lcom/questvisual/wordlens/billing/l;

.field private static final synthetic h:[Lcom/questvisual/wordlens/billing/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    .line 6
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->b:Lcom/questvisual/wordlens/billing/l;

    .line 7
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->c:Lcom/questvisual/wordlens/billing/l;

    .line 8
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->d:Lcom/questvisual/wordlens/billing/l;

    .line 9
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->e:Lcom/questvisual/wordlens/billing/l;

    .line 10
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->f:Lcom/questvisual/wordlens/billing/l;

    .line 11
    new-instance v0, Lcom/questvisual/wordlens/billing/l;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/billing/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->g:Lcom/questvisual/wordlens/billing/l;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/questvisual/wordlens/billing/l;

    sget-object v1, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/billing/l;->b:Lcom/questvisual/wordlens/billing/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/billing/l;->c:Lcom/questvisual/wordlens/billing/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/questvisual/wordlens/billing/l;->d:Lcom/questvisual/wordlens/billing/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/questvisual/wordlens/billing/l;->e:Lcom/questvisual/wordlens/billing/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/questvisual/wordlens/billing/l;->f:Lcom/questvisual/wordlens/billing/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/questvisual/wordlens/billing/l;->g:Lcom/questvisual/wordlens/billing/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/questvisual/wordlens/billing/l;->h:[Lcom/questvisual/wordlens/billing/l;

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

.method public static a(I)Lcom/questvisual/wordlens/billing/l;
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-static {}, Lcom/questvisual/wordlens/billing/l;->values()[Lcom/questvisual/wordlens/billing/l;

    move-result-object v0

    .line 16
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 17
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->g:Lcom/questvisual/wordlens/billing/l;

    .line 19
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/billing/l;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/billing/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/billing/l;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/billing/l;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->h:[Lcom/questvisual/wordlens/billing/l;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/billing/l;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
