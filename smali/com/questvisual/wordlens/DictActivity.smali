.class public Lcom/questvisual/wordlens/DictActivity;
.super Lcom/questvisual/util/ui/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/questvisual/util/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected f()Landroid/support/v4/app/e;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 28
    invoke-virtual {p0}, Lcom/questvisual/wordlens/DictActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/questvisual/wordlens/DictActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 30
    const-string v2, "key.do.init.lookup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    :cond_0
    invoke-static {v0}, Lcom/questvisual/wordlens/d;->d(Z)Lcom/questvisual/wordlens/d;

    move-result-object v0

    .line 34
    return-object v0
.end method
