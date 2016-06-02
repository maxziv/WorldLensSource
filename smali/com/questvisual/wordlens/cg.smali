.class Lcom/questvisual/wordlens/cg;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static synthetic e:[I


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private b:Lcom/questvisual/wordlens/ag;

.field private c:Lcom/questvisual/wordlens/ag;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;Lcom/questvisual/wordlens/ag;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3424
    iput-object p2, p0, Lcom/questvisual/wordlens/cg;->b:Lcom/questvisual/wordlens/ag;

    .line 3425
    iput-object p3, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    .line 3426
    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 3416
    sget-object v0, Lcom/questvisual/wordlens/cg;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/ag;->values()[Lcom/questvisual/wordlens/ag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/questvisual/wordlens/cg;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter

    .prologue
    .line 3456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3457
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3463
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensSystem;->h()V

    .line 3467
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3471
    :try_start_0
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    .line 3475
    iget-object v3, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v0, v3}, Lcom/questvisual/wordlens/NativeWordLensUI;->a(Lcom/questvisual/wordlens/ag;)V

    .line 3479
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;

    move-result-object v0

    iget-object v0, v0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    iget-object v3, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v0, v3}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(Lcom/questvisual/wordlens/ag;)V

    .line 3467
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3490
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->c(Landroid/content/Context;)V

    .line 3492
    const/4 v0, 0x1

    .line 3494
    invoke-static {}, Lcom/questvisual/wordlens/cg;->b()[I

    move-result-object v2

    iget-object v3, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3529
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/questvisual/wordlens/WordLensSystem;->i()V

    .line 3531
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3535
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3497
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->f(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3498
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->f(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/a/b;->a(Z)V

    .line 3503
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->s(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3504
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->s(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/a/b;->b(Z)V

    .line 3509
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->e()Z

    move-result v0

    goto :goto_0

    .line 3515
    :pswitch_2
    sget-object v2, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    iget-object v3, p0, Lcom/questvisual/wordlens/cg;->b:Lcom/questvisual/wordlens/ag;

    if-ne v2, v3, :cond_1

    .line 3517
    iget-object v2, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/a/b;->a(Z)V

    .line 3518
    iget-object v2, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/questvisual/wordlens/a/b;->g()V

    goto :goto_0

    .line 3494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()V
    .locals 2

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3618
    monitor-enter p0

    .line 3619
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    .line 3618
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3623
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->c(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3625
    return-void

    .line 3618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 3542
    invoke-virtual {p0}, Lcom/questvisual/wordlens/cg;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3544
    const-string v0, "QV"

    const-string v1, "setUIModeTask: enter onPostExecute. Is cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    :goto_0
    return-void

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;

    move-result-object v0

    iget-object v0, v0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/NativeGLRenderer;->b(Z)V

    .line 3550
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->q(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    iget-object v2, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/d/a;->a(Lcom/questvisual/wordlens/ag;Lcom/questvisual/wordlens/a/b;)V

    .line 3556
    invoke-virtual {p0}, Lcom/questvisual/wordlens/cg;->a()V

    .line 3558
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3559
    invoke-static {}, Lcom/questvisual/wordlens/cg;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3598
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->x(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 3602
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->y(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 3605
    monitor-enter p0

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/cg;)V

    .line 3605
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3562
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->t(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3563
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->t(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/an;->vid_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3567
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;)V

    .line 3570
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->u(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->f(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    goto :goto_1

    .line 3574
    :pswitch_2
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->t(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3575
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->t(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/an;->vid_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3579
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;)V

    .line 3582
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->f(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    .line 3585
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/al;->do_snap_flash:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->b:Lcom/questvisual/wordlens/ag;

    sget-object v1, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    if-eq v0, v1, :cond_1

    .line 3586
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->v(Lcom/questvisual/wordlens/WordLensActivity;)V

    goto :goto_1

    .line 3595
    :cond_4
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->w(Lcom/questvisual/wordlens/WordLensActivity;)V

    goto :goto_1

    .line 3559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/cg;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/cg;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3433
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;

    move-result-object v0

    iget-object v0, v0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-virtual {v0, v4}, Lcom/questvisual/wordlens/NativeGLRenderer;->b(Z)V

    .line 3437
    invoke-static {}, Lcom/questvisual/wordlens/cg;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3449
    iput-object v3, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    .line 3452
    :goto_0
    return-void

    .line 3439
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v2, Lcom/questvisual/wordlens/at;->opening_camera:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 3442
    :pswitch_1
    sget-object v0, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->b:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/cg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v2, Lcom/questvisual/wordlens/at;->closing_camera:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 3445
    :cond_0
    iput-object v3, p0, Lcom/questvisual/wordlens/cg;->d:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 3437
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
