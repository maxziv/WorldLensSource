.class public Lcom/questvisual/wordlens/c/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static f:Lcom/questvisual/wordlens/c/d;


# instance fields
.field private a:Lcom/questvisual/wordlens/a/b;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/questvisual/wordlens/c/e;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/c/d;->f:Lcom/questvisual/wordlens/c/d;

    return-void
.end method

.method private constructor <init>(Lcom/questvisual/wordlens/a/b;Landroid/widget/ImageView;Lcom/questvisual/wordlens/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    .line 42
    iput-object p2, p0, Lcom/questvisual/wordlens/c/d;->b:Landroid/widget/ImageView;

    .line 43
    iput-object p3, p0, Lcom/questvisual/wordlens/c/d;->d:Lcom/questvisual/wordlens/c/e;

    .line 44
    iput-object p4, p0, Lcom/questvisual/wordlens/c/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    return-void
.end method

.method public static declared-synchronized a(Lcom/questvisual/wordlens/a/b;Landroid/widget/ImageView;Lcom/questvisual/wordlens/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/questvisual/wordlens/c/d;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-class v1, Lcom/questvisual/wordlens/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/questvisual/wordlens/c/d;->f:Lcom/questvisual/wordlens/c/d;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/questvisual/wordlens/c/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/questvisual/wordlens/c/d;-><init>(Lcom/questvisual/wordlens/a/b;Landroid/widget/ImageView;Lcom/questvisual/wordlens/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    sput-object v0, Lcom/questvisual/wordlens/c/d;->f:Lcom/questvisual/wordlens/c/d;

    .line 33
    sget-object v0, Lcom/questvisual/wordlens/c/d;->f:Lcom/questvisual/wordlens/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/questvisual/wordlens/a/b;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to change preview size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->d:Lcom/questvisual/wordlens/c/e;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->d:Lcom/questvisual/wordlens/c/e;

    iget-object v1, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    invoke-interface {v0, v1}, Lcom/questvisual/wordlens/c/e;->a(Lcom/questvisual/wordlens/a/b;)V

    .line 81
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/c/d;->f:Lcom/questvisual/wordlens/c/d;

    .line 82
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/c/d;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 90
    const-string v0, "QV"

    const-string v1, "ToggleCameraZoomTask.onCancelled()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/c/d;->f:Lcom/questvisual/wordlens/c/d;

    .line 92
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/c/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    iget-object v0, v0, Lcom/questvisual/wordlens/a/b;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/questvisual/wordlens/c/d;->a:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->l()Z

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    sget v0, Lcom/questvisual/wordlens/at;->zooming_camera_out:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/c/d;->c:Landroid/app/ProgressDialog;

    .line 53
    return-void

    .line 51
    :cond_0
    sget v0, Lcom/questvisual/wordlens/at;->zooming_camera_in:I

    goto :goto_0
.end method
