.class public final enum Lcom/questvisual/wordlens/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/ag;

.field public static final enum b:Lcom/questvisual/wordlens/ag;

.field public static final enum c:Lcom/questvisual/wordlens/ag;

.field private static final synthetic e:[Lcom/questvisual/wordlens/ag;


# instance fields
.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/questvisual/wordlens/ag;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/questvisual/wordlens/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    .line 13
    new-instance v0, Lcom/questvisual/wordlens/ag;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3, v3}, Lcom/questvisual/wordlens/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    .line 14
    new-instance v0, Lcom/questvisual/wordlens/ag;

    const-string v1, "SNAPSHOT"

    invoke-direct {v0, v1, v4, v4}, Lcom/questvisual/wordlens/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/questvisual/wordlens/ag;

    sget-object v1, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/questvisual/wordlens/ag;->e:[Lcom/questvisual/wordlens/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/questvisual/wordlens/ag;->d:I

    .line 19
    return-void
.end method

.method public static a(I)Lcom/questvisual/wordlens/ag;
    .locals 1
    .parameter

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 29
    sget-object v0, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/ag;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ag;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/ag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/ag;->e:[Lcom/questvisual/wordlens/ag;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/ag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
