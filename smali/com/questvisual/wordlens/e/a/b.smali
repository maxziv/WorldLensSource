.class public final enum Lcom/questvisual/wordlens/e/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/e/a/b;

.field public static final enum b:Lcom/questvisual/wordlens/e/a/b;

.field public static final enum c:Lcom/questvisual/wordlens/e/a/b;

.field public static final enum d:Lcom/questvisual/wordlens/e/a/b;

.field public static final enum e:Lcom/questvisual/wordlens/e/a/b;

.field public static final enum f:Lcom/questvisual/wordlens/e/a/b;

.field private static final synthetic g:[Lcom/questvisual/wordlens/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/questvisual/wordlens/e/a/b;

    const-string v1, "ANIM_GROW_FROM_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/e/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->a:Lcom/questvisual/wordlens/e/a/b;

    .line 30
    new-instance v0, Lcom/questvisual/wordlens/e/a/b;

    const-string v1, "ANIM_GROW_FROM_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/e/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->b:Lcom/questvisual/wordlens/e/a/b;

    .line 31
    new-instance v0, Lcom/questvisual/wordlens/e/a/b;

    const-string v1, "ANIM_GROW_FROM_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/e/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->c:Lcom/questvisual/wordlens/e/a/b;

    .line 32
    new-instance v0, Lcom/questvisual/wordlens/e/a/b;

    const-string v1, "ANIM_REFLECT"

    invoke-direct {v0, v1, v6}, Lcom/questvisual/wordlens/e/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->d:Lcom/questvisual/wordlens/e/a/b;

    .line 33
    new-instance v0, Lcom/questvisual/wordlens/e/a/b;

    const-string v1, "ANIM_AUTO"

    invoke-direct {v0, v1, v7}, Lcom/questvisual/wordlens/e/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->e:Lcom/questvisual/wordlens/e/a/b;

    .line 34
    new-instance v0, Lcom/questvisual/wordlens/e/a/b;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/e/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->f:Lcom/questvisual/wordlens/e/a/b;

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/questvisual/wordlens/e/a/b;

    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->a:Lcom/questvisual/wordlens/e/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->b:Lcom/questvisual/wordlens/e/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->c:Lcom/questvisual/wordlens/e/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->d:Lcom/questvisual/wordlens/e/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->e:Lcom/questvisual/wordlens/e/a/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/questvisual/wordlens/e/a/b;->f:Lcom/questvisual/wordlens/e/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/questvisual/wordlens/e/a/b;->g:[Lcom/questvisual/wordlens/e/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/e/a/b;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/e/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/e/a/b;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/e/a/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/e/a/b;->g:[Lcom/questvisual/wordlens/e/a/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/e/a/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
