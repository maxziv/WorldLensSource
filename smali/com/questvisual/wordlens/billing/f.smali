.class Lcom/questvisual/wordlens/billing/f;
.super Lcom/questvisual/wordlens/billing/c;
.source "SourceFile"


# instance fields
.field c:J

.field final d:[Ljava/lang/String;

.field final synthetic e:Lcom/questvisual/wordlens/billing/IAPService;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/billing/IAPService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/f;->e:Lcom/questvisual/wordlens/billing/IAPService;

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/billing/c;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I)V

    .line 526
    iput-object p3, p0, Lcom/questvisual/wordlens/billing/f;->d:[Ljava/lang/String;

    .line 527
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/questvisual/wordlens/billing/c;->a(Landroid/os/RemoteException;)V

    .line 545
    iget-wide v0, p0, Lcom/questvisual/wordlens/billing/f;->c:J

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/billing/m;->a(J)V

    .line 546
    return-void
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 531
    invoke-static {}, Lcom/questvisual/wordlens/billing/m;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/billing/f;->c:J

    .line 533
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/billing/f;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 534
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/questvisual/wordlens/billing/f;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 535
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/questvisual/wordlens/billing/f;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->e()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 537
    const-string v1, "getPurchaseInformation"

    invoke-virtual {p0, v1, v0}, Lcom/questvisual/wordlens/billing/f;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 538
    const-string v1, "REQUEST_ID"

    .line 539
    const-wide/16 v2, -0x1

    .line 538
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
