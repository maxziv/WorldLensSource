.class Lcom/questvisual/wordlens/billing/d;
.super Lcom/questvisual/wordlens/billing/c;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/questvisual/wordlens/billing/IAPService;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/billing/IAPService;)V
    .locals 1
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/d;->c:Lcom/questvisual/wordlens/billing/IAPService;

    .line 361
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/questvisual/wordlens/billing/c;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I)V

    .line 362
    return-void
.end method


# virtual methods
.method protected a(Lcom/questvisual/wordlens/billing/l;)V
    .locals 3
    .parameter

    .prologue
    .line 381
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPService: CheckSupported responseCodeReceived: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v0, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/billing/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 385
    invoke-static {v0}, Lcom/questvisual/wordlens/billing/a;->a(Z)V

    .line 386
    return-void
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 366
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/billing/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->e()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 368
    const-string v1, "checkBillingSupported"

    invoke-virtual {p0, v1, v0}, Lcom/questvisual/wordlens/billing/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 369
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 374
    sget-object v1, Lcom/questvisual/wordlens/billing/l;->a:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 375
    :goto_0
    invoke-static {v0}, Lcom/questvisual/wordlens/billing/a;->a(Z)V

    .line 376
    const-wide/16 v0, -0x1

    return-wide v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
