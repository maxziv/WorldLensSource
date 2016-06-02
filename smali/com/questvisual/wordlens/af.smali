.class public final enum Lcom/questvisual/wordlens/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/af;

.field public static final enum b:Lcom/questvisual/wordlens/af;

.field public static final enum c:Lcom/questvisual/wordlens/af;

.field public static final enum d:Lcom/questvisual/wordlens/af;

.field public static final enum e:Lcom/questvisual/wordlens/af;

.field public static final enum f:Lcom/questvisual/wordlens/af;

.field public static final enum g:Lcom/questvisual/wordlens/af;

.field private static final synthetic h:[Lcom/questvisual/wordlens/af;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->a:Lcom/questvisual/wordlens/af;

    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "ASCII"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->b:Lcom/questvisual/wordlens/af;

    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "LATIN_9"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->c:Lcom/questvisual/wordlens/af;

    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "CYRILLIC"

    invoke-direct {v0, v1, v6}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->d:Lcom/questvisual/wordlens/af;

    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "UTF8"

    invoke-direct {v0, v1, v7}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->e:Lcom/questvisual/wordlens/af;

    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "UTF16"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->f:Lcom/questvisual/wordlens/af;

    new-instance v0, Lcom/questvisual/wordlens/af;

    const-string v1, "UTF32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/af;->g:Lcom/questvisual/wordlens/af;

    .line 185
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/questvisual/wordlens/af;

    sget-object v1, Lcom/questvisual/wordlens/af;->a:Lcom/questvisual/wordlens/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/af;->b:Lcom/questvisual/wordlens/af;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/af;->c:Lcom/questvisual/wordlens/af;

    aput-object v1, v0, v5

    sget-object v1, Lcom/questvisual/wordlens/af;->d:Lcom/questvisual/wordlens/af;

    aput-object v1, v0, v6

    sget-object v1, Lcom/questvisual/wordlens/af;->e:Lcom/questvisual/wordlens/af;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/questvisual/wordlens/af;->f:Lcom/questvisual/wordlens/af;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/questvisual/wordlens/af;->g:Lcom/questvisual/wordlens/af;

    aput-object v2, v0, v1

    sput-object v0, Lcom/questvisual/wordlens/af;->h:[Lcom/questvisual/wordlens/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/af;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/af;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/af;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/af;->h:[Lcom/questvisual/wordlens/af;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/af;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
