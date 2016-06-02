.class public Lcom/questvisual/wordlens/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/a/c;


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-static {p1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/questvisual/util/b;->a(Z)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/a/c;Lcom/questvisual/wordlens/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/a/e;-><init>(Lcom/questvisual/wordlens/a/c;)V

    return-void
.end method

.method private b(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 462
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    iget-boolean v0, v0, Lcom/questvisual/wordlens/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "cam_mode"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    iget-boolean v0, v0, Lcom/questvisual/wordlens/a/c;->b:Z

    if-eqz v0, :cond_1

    .line 476
    const-string v0, "cam-mode"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 479
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 299
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 301
    return-void
.end method

.method public a(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 369
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 370
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 371
    return-void
.end method

.method public a(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/a/e;->b(Landroid/hardware/Camera$Parameters;)V

    .line 446
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 447
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 448
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 450
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->d(Lcom/questvisual/wordlens/a/c;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->d(Lcom/questvisual/wordlens/a/c;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 453
    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 357
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 358
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 359
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void
.end method

.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 363
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 365
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 335
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 338
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->d(Lcom/questvisual/wordlens/a/c;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->d(Lcom/questvisual/wordlens/a/c;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 341
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 345
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 347
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 351
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 352
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 353
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 375
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 377
    return-void
.end method

.method public f()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 483
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 485
    iget-object v0, p0, Lcom/questvisual/wordlens/a/e;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->e(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method
