.class public final enum Lcom/questvisual/wordlens/e/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/e/a/e;

.field public static final enum b:Lcom/questvisual/wordlens/e/a/e;

.field public static final enum c:Lcom/questvisual/wordlens/e/a/e;

.field public static final enum d:Lcom/questvisual/wordlens/e/a/e;

.field public static final enum e:Lcom/questvisual/wordlens/e/a/e;

.field public static final enum f:Lcom/questvisual/wordlens/e/a/e;

.field public static final enum g:Lcom/questvisual/wordlens/e/a/e;

.field private static final synthetic h:[Lcom/questvisual/wordlens/e/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->a:Lcom/questvisual/wordlens/e/a/e;

    .line 49
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "TOP_EDGES"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->b:Lcom/questvisual/wordlens/e/a/e;

    .line 50
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "BOTTOM_EDGES"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->c:Lcom/questvisual/wordlens/e/a/e;

    .line 51
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "ABOVE"

    invoke-direct {v0, v1, v6}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->d:Lcom/questvisual/wordlens/e/a/e;

    .line 52
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "BELOW"

    invoke-direct {v0, v1, v7}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->e:Lcom/questvisual/wordlens/e/a/e;

    .line 53
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->f:Lcom/questvisual/wordlens/e/a/e;

    .line 54
    new-instance v0, Lcom/questvisual/wordlens/e/a/e;

    const-string v1, "SCREEN_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/e/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->g:Lcom/questvisual/wordlens/e/a/e;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/questvisual/wordlens/e/a/e;

    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->a:Lcom/questvisual/wordlens/e/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->b:Lcom/questvisual/wordlens/e/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->c:Lcom/questvisual/wordlens/e/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->d:Lcom/questvisual/wordlens/e/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->e:Lcom/questvisual/wordlens/e/a/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/questvisual/wordlens/e/a/e;->f:Lcom/questvisual/wordlens/e/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/questvisual/wordlens/e/a/e;->g:Lcom/questvisual/wordlens/e/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/questvisual/wordlens/e/a/e;->h:[Lcom/questvisual/wordlens/e/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/e/a/e;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/e/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/e/a/e;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/e/a/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/e/a/e;->h:[Lcom/questvisual/wordlens/e/a/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/e/a/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
