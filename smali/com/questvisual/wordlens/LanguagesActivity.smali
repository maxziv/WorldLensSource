.class public Lcom/questvisual/wordlens/LanguagesActivity;
.super Lcom/questvisual/util/ui/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/questvisual/util/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected f()Landroid/support/v4/app/e;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/questvisual/wordlens/y;

    invoke-direct {v0}, Lcom/questvisual/wordlens/y;-><init>()V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/LanguagesActivity;->setResult(I)V

    .line 27
    invoke-super {p0}, Lcom/questvisual/util/ui/b;->onBackPressed()V

    .line 28
    return-void
.end method
