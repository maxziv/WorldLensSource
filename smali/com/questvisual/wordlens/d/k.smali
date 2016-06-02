.class public Lcom/questvisual/wordlens/d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic a:[I


# direct methods
.method static a(Lcom/questvisual/wordlens/af;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/questvisual/wordlens/d/k;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    :pswitch_0
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ScriptEncoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaulting to UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "ISO-8859-5"

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v0, "UTF-16LE"

    goto :goto_0

    .line 73
    :pswitch_3
    const-string v0, "ISO-8859-15"

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/questvisual/wordlens/af;->d:Lcom/questvisual/wordlens/af;

    .line 37
    :goto_0
    invoke-static {v0}, Lcom/questvisual/wordlens/d/k;->a(Lcom/questvisual/wordlens/af;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/questvisual/wordlens/af;->f:Lcom/questvisual/wordlens/af;

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    sget-object v0, Lcom/questvisual/wordlens/af;->f:Lcom/questvisual/wordlens/af;

    goto :goto_0

    .line 35
    :cond_2
    sget-object v0, Lcom/questvisual/wordlens/af;->c:Lcom/questvisual/wordlens/af;

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/questvisual/wordlens/d/k;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/af;->values()[Lcom/questvisual/wordlens/af;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/af;->b:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/af;->d:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/af;->c:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/af;->a:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/af;->f:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/af;->g:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/af;->e:Lcom/questvisual/wordlens/af;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/af;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/questvisual/wordlens/d/k;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method
