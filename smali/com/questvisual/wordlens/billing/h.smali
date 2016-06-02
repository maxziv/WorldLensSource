.class public Lcom/questvisual/wordlens/billing/h;
.super Lcom/questvisual/wordlens/billing/c;
.source "SourceFile"


# instance fields
.field c:J

.field final synthetic d:Lcom/questvisual/wordlens/billing/IAPService;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/billing/IAPService;)V
    .locals 1
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/h;->d:Lcom/questvisual/wordlens/billing/IAPService;

    .line 468
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/questvisual/wordlens/billing/c;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I)V

    .line 469
    return-void
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

.method protected a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/questvisual/wordlens/billing/c;->a(Landroid/os/RemoteException;)V

    .line 486
    iget-wide v0, p0, Lcom/questvisual/wordlens/billing/h;->c:J

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/billing/m;->a(J)V

    .line 487
    return-void
.end method

.method protected a(Lcom/questvisual/wordlens/billing/l;)V
    .locals 1
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/h;->d:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-static {v0, p0, p1}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/h;Lcom/questvisual/wordlens/billing/l;)V

    .line 492
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
    .locals 4

    .prologue
    .line 473
    invoke-static {}, Lcom/questvisual/wordlens/billing/m;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/billing/h;->c:J

    .line 475
    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/billing/h;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 476
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/questvisual/wordlens/billing/h;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 477
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->e()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 478
    const-string v1, "restoreTransactions"

    invoke-virtual {p0, v1, v0}, Lcom/questvisual/wordlens/billing/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 479
    const-string v1, "REQUEST_ID"

    .line 480
    const-wide/16 v2, -0x1

    .line 479
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
