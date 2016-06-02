.class public Lcom/questvisual/wordlens/d/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d/h;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/d/h;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/h;->c(Lcom/questvisual/wordlens/d/h;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/i;->b:Landroid/app/ProgressDialog;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/h;->b(Lcom/questvisual/wordlens/d/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 386
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/i;->a()V

    .line 398
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/i;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/h;->d(Lcom/questvisual/wordlens/d/h;)V

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/d/h;->a(Lcom/questvisual/wordlens/d/h;Lcom/questvisual/wordlens/d/i;)V

    goto :goto_0

    .line 404
    :cond_1
    const-string v0, "QV"

    const-string v1, "Unable to save snapshot image! Will not share =("

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v0, "ERROR_WL_BUG"

    const-string v1, "Unable to save snapshot image!"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/d/i;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/d/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 374
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 375
    iget-object v0, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/h;->a(Lcom/questvisual/wordlens/d/h;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/questvisual/wordlens/d/i;->a:Lcom/questvisual/wordlens/d/h;

    invoke-static {v2}, Lcom/questvisual/wordlens/d/h;->a(Lcom/questvisual/wordlens/d/h;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/questvisual/wordlens/at;->generating_snapshot:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/i;->b:Landroid/app/ProgressDialog;

    .line 376
    return-void
.end method
