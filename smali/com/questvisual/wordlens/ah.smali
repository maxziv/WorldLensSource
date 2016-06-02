.class public final enum Lcom/questvisual/wordlens/ah;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/questvisual/wordlens/ah;

.field public static final enum b:Lcom/questvisual/wordlens/ah;

.field public static final enum c:Lcom/questvisual/wordlens/ah;

.field public static final enum d:Lcom/questvisual/wordlens/ah;

.field public static final enum e:Lcom/questvisual/wordlens/ah;

.field public static final enum f:Lcom/questvisual/wordlens/ah;

.field private static synthetic g:[I

.field private static final synthetic h:[Lcom/questvisual/wordlens/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/questvisual/wordlens/ah;

    const-string v1, "kQVTextAlignment_Default"

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ah;->a:Lcom/questvisual/wordlens/ah;

    .line 15
    new-instance v0, Lcom/questvisual/wordlens/ah;

    const-string v1, "kQVTextAlignment_Left"

    invoke-direct {v0, v1, v4}, Lcom/questvisual/wordlens/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ah;->b:Lcom/questvisual/wordlens/ah;

    new-instance v0, Lcom/questvisual/wordlens/ah;

    const-string v1, "kQVTextAlignment_Center"

    invoke-direct {v0, v1, v5}, Lcom/questvisual/wordlens/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ah;->c:Lcom/questvisual/wordlens/ah;

    new-instance v0, Lcom/questvisual/wordlens/ah;

    const-string v1, "kQVTextAlignment_Right"

    invoke-direct {v0, v1, v6}, Lcom/questvisual/wordlens/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ah;->d:Lcom/questvisual/wordlens/ah;

    new-instance v0, Lcom/questvisual/wordlens/ah;

    const-string v1, "kQVTextAlignment_Justified"

    invoke-direct {v0, v1, v7}, Lcom/questvisual/wordlens/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ah;->e:Lcom/questvisual/wordlens/ah;

    .line 16
    new-instance v0, Lcom/questvisual/wordlens/ah;

    const-string v1, "kMaxQVTextAlignment"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/questvisual/wordlens/ah;->f:Lcom/questvisual/wordlens/ah;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/questvisual/wordlens/ah;

    sget-object v1, Lcom/questvisual/wordlens/ah;->a:Lcom/questvisual/wordlens/ah;

    aput-object v1, v0, v3

    sget-object v1, Lcom/questvisual/wordlens/ah;->b:Lcom/questvisual/wordlens/ah;

    aput-object v1, v0, v4

    sget-object v1, Lcom/questvisual/wordlens/ah;->c:Lcom/questvisual/wordlens/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/questvisual/wordlens/ah;->d:Lcom/questvisual/wordlens/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/questvisual/wordlens/ah;->e:Lcom/questvisual/wordlens/ah;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/questvisual/wordlens/ah;->f:Lcom/questvisual/wordlens/ah;

    aput-object v2, v0, v1

    sput-object v0, Lcom/questvisual/wordlens/ah;->h:[Lcom/questvisual/wordlens/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/questvisual/wordlens/ah;
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-static {}, Lcom/questvisual/wordlens/ah;->values()[Lcom/questvisual/wordlens/ah;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 21
    aget-object v0, v0, p0

    .line 24
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown value of native enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/questvisual/wordlens/ah;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/ah;->values()[Lcom/questvisual/wordlens/ah;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/ah;->f:Lcom/questvisual/wordlens/ah;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/ah;->c:Lcom/questvisual/wordlens/ah;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/ah;->a:Lcom/questvisual/wordlens/ah;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/ah;->e:Lcom/questvisual/wordlens/ah;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/ah;->b:Lcom/questvisual/wordlens/ah;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/ah;->d:Lcom/questvisual/wordlens/ah;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/questvisual/wordlens/ah;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static b(I)I
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/questvisual/wordlens/ah;->a(I)Lcom/questvisual/wordlens/ah;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/questvisual/wordlens/ah;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/questvisual/wordlens/ah;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 40
    :pswitch_0
    const/16 v0, 0x11

    :goto_0
    return v0

    .line 31
    :pswitch_1
    const/16 v0, 0x13

    goto :goto_0

    .line 33
    :pswitch_2
    const/16 v0, 0x15

    goto :goto_0

    .line 35
    :pswitch_3
    const/16 v0, 0x17

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/ah;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/questvisual/wordlens/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ah;

    return-object v0
.end method

.method public static values()[Lcom/questvisual/wordlens/ah;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/questvisual/wordlens/ah;->h:[Lcom/questvisual/wordlens/ah;

    array-length v1, v0

    new-array v2, v1, [Lcom/questvisual/wordlens/ah;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
