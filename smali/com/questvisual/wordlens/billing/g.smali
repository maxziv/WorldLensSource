.class public Lcom/questvisual/wordlens/billing/g;
.super Lcom/questvisual/wordlens/billing/c;
.source "SourceFile"


# static fields
.field private static synthetic f:[I


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final synthetic e:Lcom/questvisual/wordlens/billing/IAPService;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/billing/IAPService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/g;->e:Lcom/questvisual/wordlens/billing/IAPService;

    .line 401
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/questvisual/wordlens/billing/c;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I)V

    .line 402
    iput-object p2, p0, Lcom/questvisual/wordlens/billing/g;->c:Ljava/lang/String;

    .line 403
    iput-object p3, p0, Lcom/questvisual/wordlens/billing/g;->d:Ljava/lang/String;

    .line 404
    return-void
.end method

.method static synthetic e()[I
    .locals 3

    .prologue
    .line 393
    sget-object v0, Lcom/questvisual/wordlens/billing/g;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/billing/l;->values()[Lcom/questvisual/wordlens/billing/l;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->d:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->f:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->g:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->e:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->c:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->b:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/questvisual/wordlens/billing/g;->f:[I

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


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/questvisual/wordlens/billing/c;->a()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/questvisual/wordlens/billing/l;)V
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/g;->e:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-static {v0, p0, p1}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V

    .line 455
    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/questvisual/wordlens/billing/c;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/questvisual/wordlens/billing/c;->c()Z

    move-result v0

    return v0
.end method

.method protected d()J
    .locals 7

    .prologue
    const-wide/16 v1, -0x1

    .line 408
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/billing/g;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 409
    const-string v3, "ITEM_ID"

    iget-object v4, p0, Lcom/questvisual/wordlens/billing/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->e()Lcom/a/a/a/a;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 419
    const-string v0, "requestPurchase"

    invoke-virtual {p0, v0, v3}, Lcom/questvisual/wordlens/billing/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 421
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 422
    const-string v4, "QV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IAPService: RequestPurchase response code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-static {v0}, Lcom/questvisual/wordlens/billing/l;->a(I)Lcom/questvisual/wordlens/billing/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {v0}, Lcom/questvisual/wordlens/billing/l;->a(I)Lcom/questvisual/wordlens/billing/l;

    move-result-object v4

    .line 425
    invoke-static {}, Lcom/questvisual/wordlens/billing/g;->e()[I

    move-result-object v5

    invoke-virtual {v4}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 446
    const-string v3, "IAP_UNKNOWN_RESP_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected synchronous response requesting purchase: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/g;->e:Lcom/questvisual/wordlens/billing/IAPService;

    sget-object v3, Lcom/questvisual/wordlens/billing/l;->g:Lcom/questvisual/wordlens/billing/l;

    invoke-static {v0, p0, v3}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V

    move-wide v0, v1

    .line 448
    :goto_0
    return-wide v0

    .line 428
    :sswitch_0
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 429
    if-nez v0, :cond_0

    .line 430
    const-string v0, "QV"

    const-string v3, "IAPService: Error with requestUpgradePurchase"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v1

    .line 431
    goto :goto_0

    .line 434
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 435
    invoke-static {v0, v4}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 436
    const-string v0, "REQUEST_ID"

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 440
    :sswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/g;->e:Lcom/questvisual/wordlens/billing/IAPService;

    sget-object v3, Lcom/questvisual/wordlens/billing/l;->c:Lcom/questvisual/wordlens/billing/l;

    invoke-static {v0, p0, v3}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V

    move-wide v0, v1

    .line 441
    goto :goto_0

    .line 443
    :sswitch_2
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/g;->e:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-static {v0, p0, v4}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V

    move-wide v0, v1

    .line 444
    goto :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch
.end method
