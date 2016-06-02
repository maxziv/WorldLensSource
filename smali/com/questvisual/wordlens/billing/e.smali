.class Lcom/questvisual/wordlens/billing/e;
.super Lcom/questvisual/wordlens/billing/c;
.source "SourceFile"


# instance fields
.field final c:[Ljava/lang/String;

.field final synthetic d:Lcom/questvisual/wordlens/billing/IAPService;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/billing/IAPService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/e;->d:Lcom/questvisual/wordlens/billing/IAPService;

    .line 502
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/billing/c;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I)V

    .line 503
    iput-object p3, p0, Lcom/questvisual/wordlens/billing/e;->c:[Ljava/lang/String;

    .line 504
    return-void
.end method


# virtual methods
.method protected d()J
    .locals 4

    .prologue
    .line 508
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/billing/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 509
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/questvisual/wordlens/billing/e;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/questvisual/wordlens/billing/IAPService;->e()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 511
    const-string v1, "confirmNotifications"

    invoke-virtual {p0, v1, v0}, Lcom/questvisual/wordlens/billing/e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    const-string v1, "REQUEST_ID"

    .line 513
    const-wide/16 v2, -0x1

    .line 512
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
