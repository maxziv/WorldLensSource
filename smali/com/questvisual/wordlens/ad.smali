.class Lcom/questvisual/wordlens/ad;
.super Lcom/questvisual/wordlens/billing/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/y;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/y;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    .line 291
    invoke-virtual {p1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/questvisual/wordlens/billing/i;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 292
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.first.start.of.wordlens.plus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v1, "com.questvisual.wordlens"

    const-string v2, "com.questvisual.wordlens.WLSplashActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/y;->a(Landroid/content/Intent;)V

    .line 329
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/y;->a()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->b(Lcom/questvisual/wordlens/y;)V

    goto :goto_0
.end method

.method public a(Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 341
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    sget v1, Lcom/questvisual/wordlens/at;->purchase_submitted:I

    invoke-static {v0, v1, v3}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;II)V

    .line 370
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->b:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    sget v1, Lcom/questvisual/wordlens/at;->purchase_cancelled:I

    invoke-static {v0, v1, v3}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;II)V

    goto :goto_0

    .line 351
    :cond_1
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->c:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_2

    .line 352
    sget v0, Lcom/questvisual/wordlens/at;->billing_service_unavailable:I

    iget-object v1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/e/a/h;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 353
    :cond_2
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->d:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_3

    .line 355
    sget v0, Lcom/questvisual/wordlens/at;->billing_not_supported_message:I

    iget-object v1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/e/a/h;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 356
    :cond_3
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->e:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_4

    .line 357
    const-string v0, "IAP_ITEM_UNAVAILABLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown product id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/questvisual/wordlens/billing/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget v0, Lcom/questvisual/wordlens/at;->billing_QV_error:I

    iget-object v1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/e/a/h;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 359
    :cond_4
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->f:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_5

    .line 360
    const-string v0, "IAP_DEVELOPER_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error for product id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/questvisual/wordlens/billing/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget v0, Lcom/questvisual/wordlens/at;->billing_QV_error:I

    iget-object v1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/e/a/h;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 364
    :cond_5
    const-string v0, "IAP_UNKNOWN_RESP_CODE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for product id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/questvisual/wordlens/billing/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    sget v1, Lcom/questvisual/wordlens/at;->purchase_failed:I

    invoke-static {v0, v1, v3}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;II)V

    goto/16 :goto_0
.end method

.method public a(Lcom/questvisual/wordlens/billing/h;Lcom/questvisual/wordlens/billing/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 374
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    const-string v1, "db_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    :goto_0
    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->c:Lcom/questvisual/wordlens/billing/l;

    if-ne p2, v0, :cond_1

    .line 384
    sget v0, Lcom/questvisual/wordlens/at;->billing_service_unavailable:I

    iget-object v1, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/e/a/h;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 386
    :cond_1
    const-string v0, "IAP_ONRESTORE_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled response code for onRestoreTransactionsResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WLIAP: RestoreTransactions error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    const-string v1, "device.in.app.billing.supported"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;Z)V

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->b(Lcom/questvisual/wordlens/y;)V

    .line 315
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/ad;->a:Lcom/questvisual/wordlens/y;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;I)V

    goto :goto_0
.end method
