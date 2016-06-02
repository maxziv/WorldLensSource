.class abstract Lcom/questvisual/wordlens/billing/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field final synthetic b:Lcom/questvisual/wordlens/billing/IAPService;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/billing/IAPService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/c;->b:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p2, p0, Lcom/questvisual/wordlens/billing/c;->c:I

    .line 260
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/questvisual/wordlens/billing/c;->c:I

    return v0
.end method

.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/questvisual/wordlens/billing/c;->b:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/billing/IAPService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 317
    const-string v0, "QV"

    const-string v1, "IAPService: remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/questvisual/wordlens/billing/IAPService;->a(Lcom/a/a/a/a;)V

    .line 319
    return-void
.end method

.method protected a(Lcom/questvisual/wordlens/billing/l;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 345
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 344
    invoke-static {v0}, Lcom/questvisual/wordlens/billing/l;->a(I)Lcom/questvisual/wordlens/billing/l;

    .line 349
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0}, Lcom/questvisual/wordlens/billing/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return v0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/questvisual/wordlens/billing/c;->b:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-static {v1}, Lcom/questvisual/wordlens/billing/IAPService;->a(Lcom/questvisual/wordlens/billing/IAPService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->d()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->e()Lcom/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/billing/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/billing/c;->a:J

    .line 299
    iget-wide v0, p0, Lcom/questvisual/wordlens/billing/c;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/questvisual/wordlens/billing/c;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/billing/c;->a(Landroid/os/RemoteException;)V

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
