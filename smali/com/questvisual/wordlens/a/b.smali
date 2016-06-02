.class public Lcom/questvisual/wordlens/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/hardware/Camera$CameraInfo;

.field public b:Z

.field public c:Landroid/view/SurfaceView;

.field public d:Lcom/questvisual/wordlens/a/g;

.field public e:Lcom/questvisual/wordlens/NativeFrameSink;

.field public f:Z

.field public g:I

.field public h:I

.field private i:Lcom/questvisual/wordlens/a/e;

.field private j:Z

.field private k:Lcom/questvisual/wordlens/a/a;

.field private l:Z

.field private m:I

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/Boolean;

.field private p:Landroid/hardware/Camera$Size;

.field private q:Landroid/hardware/Camera$Size;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->a:Landroid/hardware/Camera$CameraInfo;

    .line 56
    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    .line 62
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    .line 64
    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->l:Z

    .line 65
    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->f:Z

    .line 66
    iput v0, p0, Lcom/questvisual/wordlens/a/b;->g:I

    .line 67
    iput v0, p0, Lcom/questvisual/wordlens/a/b;->h:I

    .line 69
    iput v0, p0, Lcom/questvisual/wordlens/a/b;->m:I

    .line 680
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->o:Ljava/lang/Boolean;

    .line 733
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    .line 734
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    .line 735
    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->r:Z

    .line 736
    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->s:Z

    .line 746
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->t:Ljava/lang/Boolean;

    .line 77
    iput-object p2, p0, Lcom/questvisual/wordlens/a/b;->c:Landroid/view/SurfaceView;

    .line 78
    iput-object p1, p0, Lcom/questvisual/wordlens/a/b;->n:Landroid/content/Context;

    .line 79
    iput p3, p0, Lcom/questvisual/wordlens/a/b;->m:I

    .line 81
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 85
    new-instance v0, Lcom/questvisual/wordlens/a/g;

    invoke-direct {v0, p1}, Lcom/questvisual/wordlens/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    .line 88
    new-instance v0, Lcom/questvisual/wordlens/NativeFrameSink;

    invoke-direct {v0}, Lcom/questvisual/wordlens/NativeFrameSink;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->e:Lcom/questvisual/wordlens/NativeFrameSink;

    .line 90
    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_1

    .line 398
    const-string v0, "video-stabilization-supported"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "video-stabilization"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 586
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Z)V
    .locals 5
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->a:Landroid/hardware/Camera$CameraInfo;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->a:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 100
    iget v1, p0, Lcom/questvisual/wordlens/a/b;->m:I

    add-int/2addr v1, v0

    .line 103
    iget v2, p0, Lcom/questvisual/wordlens/a/b;->m:I

    invoke-static {v0, v2}, Lcom/questvisual/wordlens/e/b;->a(II)V

    .line 106
    iget-object v2, p0, Lcom/questvisual/wordlens/a/b;->e:Lcom/questvisual/wordlens/NativeFrameSink;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/NativeFrameSink;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 107
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting native camNaturalOrientation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", computed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", compensation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/questvisual/wordlens/a/b;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->e:Lcom/questvisual/wordlens/NativeFrameSink;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/NativeFrameSink;->a(I)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->n()V

    goto :goto_0
.end method

.method private declared-synchronized n()V
    .locals 4

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v0, v3}, Lcom/questvisual/wordlens/NativeWordLensUI;->a(Lcom/questvisual/wordlens/ag;)V

    .line 121
    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/NativeWordLensUI;->a(Lcom/questvisual/wordlens/ag;)V

    .line 116
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-nez v0, :cond_1

    .line 184
    const/4 v1, -0x1

    .line 187
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    move v0, v3

    .line 192
    :goto_0
    if-lt v0, v6, :cond_2

    move v0, v1

    .line 222
    :goto_1
    const-wide/16 v4, 0x0

    .line 223
    :goto_2
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-nez v1, :cond_0

    const-wide/16 v7, 0x8

    cmp-long v1, v4, v7

    if-ltz v1, :cond_4

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-nez v0, :cond_6

    .line 248
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open camera. What happened!?! Retry count is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "ERROR_WL_BUG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open camera after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tries. Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 193
    :cond_2
    :try_start_1
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 194
    invoke-static {v0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 198
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_3

    .line 200
    iput-object v4, p0, Lcom/questvisual/wordlens/a/b;->a:Landroid/hardware/Camera$CameraInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_4
    if-ltz v0, :cond_5

    if-ge v0, v6, :cond_5

    .line 227
    :try_start_2
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/questvisual/wordlens/a/c;->a(Landroid/content/Context;)Lcom/questvisual/wordlens/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/a/c;->a(I)Lcom/questvisual/wordlens/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    .line 244
    :goto_4
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    goto :goto_2

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/questvisual/wordlens/a/c;->a(Landroid/content/Context;)Lcom/questvisual/wordlens/a/c;

    move-result-object v1

    const/high16 v7, -0x8000

    invoke-virtual {v1, v7}, Lcom/questvisual/wordlens/a/c;->a(I)Lcom/questvisual/wordlens/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 232
    :catch_0
    move-exception v1

    .line 236
    :try_start_3
    const-string v1, "QV"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to open camera on attempt # "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Will wait and try again."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    const-wide/16 v7, 0xfa

    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 240
    :catch_1
    move-exception v1

    goto :goto_4

    .line 254
    :cond_6
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/a/b;->e(Z)V

    .line 256
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->c:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/e;->a(Landroid/view/SurfaceHolder;)V

    .line 259
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 260
    sget v0, Lcom/questvisual/wordlens/ak;->prefNormalSize:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 262
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 263
    const/4 v0, 0x0

    aget v0, v5, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    invoke-static {v6, v0, v1}, Lcom/questvisual/wordlens/a/f;->a(Landroid/hardware/Camera$Parameters;II)V

    .line 264
    invoke-static {v6}, Lcom/questvisual/wordlens/a/f;->a(Landroid/hardware/Camera$Parameters;)V

    .line 266
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "torch"

    :goto_5
    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->o:Ljava/lang/Boolean;

    .line 272
    :cond_7
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 276
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 278
    :cond_8
    const-string v0, "QV"

    const-string v1, "List of possible sizes was supposed to be at least one, at least the docs said so."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    .line 363
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 365
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    .line 366
    :goto_7
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting zoom. New size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->t:Ljava/lang/Boolean;

    .line 371
    :cond_a
    invoke-direct {p0, v6}, Lcom/questvisual/wordlens/a/b;->a(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    :try_start_6
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0, v6}, Lcom/questvisual/wordlens/a/e;->a(Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 381
    :catch_2
    move-exception v0

    .line 382
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_3

    .line 267
    :cond_b
    const-string v0, "off"

    goto :goto_5

    :cond_c
    move v1, v3

    .line 282
    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 286
    const/4 v0, 0x0

    aget v0, v5, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    invoke-static {v7, v0, v1}, Lcom/questvisual/wordlens/q;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 287
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[camsize] lowResNormalSize: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget v0, Lcom/questvisual/wordlens/ak;->prefZoomedSize:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 290
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v7, v1, v0}, Lcom/questvisual/wordlens/q;->b(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 291
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[camsize] lowResZoomedSize: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget v0, Lcom/questvisual/wordlens/ap;->WLOCR_MAX_DIM:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 297
    iget v0, p0, Lcom/questvisual/wordlens/a/b;->g:I

    int-to-float v1, v0

    .line 298
    iget v0, p0, Lcom/questvisual/wordlens/a/b;->h:I

    int-to-float v9, v0

    .line 299
    cmpl-float v0, v1, v9

    if-lez v0, :cond_e

    div-float v0, v1, v9

    move v3, v0

    .line 300
    :goto_9
    const-string v0, "QV"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Preview View is: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", AR="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v7, v3, v4}, Lcom/questvisual/wordlens/q;->a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 303
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "[camsize] mHighResNormalSize: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {v7}, Lcom/questvisual/wordlens/q;->a(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 306
    const-string v1, "QV"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "[camsize] mHighResZoomedSize: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v9, :cond_12

    if-eqz v0, :cond_12

    .line 310
    iget v1, v9, Landroid/hardware/Camera$Size;->width:I

    iget v7, v9, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v7

    .line 311
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v10

    .line 312
    int-to-float v7, v7

    int-to-float v1, v1

    div-float v1, v7, v1

    const/high16 v7, 0x3fc0

    cmpg-float v1, v1, v7

    if-gez v1, :cond_12

    move-object v1, v2

    .line 319
    :goto_a
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->n:Landroid/content/Context;

    const-string v7, "word.lens"

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    const-string v7, "key.device.is.high.res.approved"

    const/4 v10, 0x0

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 321
    iget-object v7, p0, Lcom/questvisual/wordlens/a/b;->n:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 323
    and-int/lit8 v0, v0, 0x1

    .line 329
    const-string v7, "QV"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[camsize] doHighRes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/questvisual/wordlens/a/b;->s:Z

    .line 336
    if-eqz v9, :cond_f

    if-eqz v0, :cond_f

    .line 338
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    iget v2, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 339
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    iget v2, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v0, v2, v4}, Lcom/questvisual/wordlens/q;->a(FIII)[I

    move-result-object v0

    .line 340
    iput-object v9, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    .line 341
    iput-object v1, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    .line 342
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/questvisual/wordlens/a/b;->s:Z

    .line 351
    :goto_b
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[camsize] Using mNormalSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[camsize] Using mZoomedSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[camsize] Using previewSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eqz v0, :cond_9

    .line 358
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/questvisual/wordlens/WordLensSystem;->a(II)V

    goto/16 :goto_6

    .line 283
    :cond_d
    const-string v3, "QV"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "[camsize] supported size: "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-static {v0}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_8

    .line 299
    :cond_e
    div-float v0, v9, v1

    move v3, v0

    goto/16 :goto_9

    .line 343
    :cond_f
    if-eqz v5, :cond_10

    .line 344
    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v3, v0, v1, v4}, Lcom/questvisual/wordlens/q;->a(FIII)[I

    move-result-object v0

    .line 345
    iput-object v5, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    .line 346
    iput-object v8, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    goto/16 :goto_b

    :cond_10
    move-object v0, v2

    .line 348
    goto/16 :goto_b

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    :cond_12
    move-object v1, v0

    goto/16 :goto_a
.end method

.method private declared-synchronized p()V
    .locals 1

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->a()V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :cond_0
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/questvisual/wordlens/a/b;->m:I

    return v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 127
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "compensation: oldValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/questvisual/wordlens/a/b;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput p1, p0, Lcom/questvisual/wordlens/a/b;->m:I

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/a/b;->e(Z)V

    .line 131
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 607
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 614
    invoke-static {p1, v1}, Lcom/questvisual/wordlens/a/b;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 615
    const-string v2, "auto"

    invoke-static {v2, v1}, Lcom/questvisual/wordlens/a/b;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 617
    const-string p1, "auto"

    .line 624
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 626
    const-string v0, "QV"

    const-string v1, "Desired focus mode is null?!?!?!?!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 620
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    goto :goto_1

    .line 632
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 635
    const-string v2, "continuous-picture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 636
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/e;->e()V

    .line 644
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 646
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning: wanted to set focus mode to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but it\'s really "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_6
    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 652
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    :try_start_4
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error setting focus mode \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 639
    :cond_7
    :try_start_5
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/a/e;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 653
    :cond_8
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/e;->a(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 687
    if-eqz p1, :cond_0

    const-string v0, "torch"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/e;->a(Landroid/hardware/Camera$Parameters;)V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->o:Ljava/lang/Boolean;

    .line 708
    :goto_1
    return-void

    .line 687
    :cond_0
    const-string v0, "off"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 700
    const-string v0, "QV"

    const-string v1, "Unable to setTorch. Ignoring error, hoping user will retry."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to setTorch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    const-string v1, "ERROR_WL_BUG"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 706
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->o:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/a;->a()V

    .line 170
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 749
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->t:Ljava/lang/Boolean;

    .line 750
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .locals 5
    .parameter

    .prologue
    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 758
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->f()V

    .line 763
    iput-boolean p1, p0, Lcom/questvisual/wordlens/a/b;->r:Z

    .line 764
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-nez v0, :cond_0

    .line 765
    const-string v0, "QV"

    const-string v1, "Illegal use of CameraController.setZoomed! Should only be called when camera is not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->e()Z

    .line 785
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 769
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    .line 770
    :goto_1
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[camsize] Setting zoom. New size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/q;->a(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 772
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/e;->a(Landroid/hardware/Camera$Parameters;)V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->t:Ljava/lang/Boolean;

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    goto :goto_1
.end method

.method public declared-synchronized d()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 415
    :goto_0
    monitor-exit p0

    return-object v0

    .line 411
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 412
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/a/a;->c(Z)V

    .line 799
    :cond_0
    return-void
.end method

.method public declared-synchronized e()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 436
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 437
    iget-boolean v2, p0, Lcom/questvisual/wordlens/a/b;->f:Z

    if-nez v2, :cond_0

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/questvisual/wordlens/a/b;->l:Z

    .line 439
    const-string v1, "QV"

    const-string v2, "Cannot yet start. Preview surface not created. Requested preview start upon surface creationg."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :goto_0
    monitor-exit p0

    return v0

    .line 442
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/questvisual/wordlens/a/b;->b:Z

    .line 447
    iget-boolean v2, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->f()V

    .line 450
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->p()V

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->o()V

    .line 456
    iget-object v2, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-nez v2, :cond_2

    .line 458
    const-string v0, "QV"

    const-string v2, "Unable to open camera."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 459
    goto :goto_0

    .line 471
    :cond_2
    const-wide/16 v2, 0x0

    .line 472
    :goto_1
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    cmp-long v2, v2, v7

    if-ltz v2, :cond_3

    move v0, v1

    .line 524
    goto :goto_0

    .line 478
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/a/e;->b()V

    .line 484
    iget-object v2, p0, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    iget-object v3, p0, Lcom/questvisual/wordlens/a/b;->e:Lcom/questvisual/wordlens/NativeFrameSink;

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/a/g;->a(Lcom/questvisual/wordlens/a/i;)V

    .line 487
    iget-object v2, p0, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    iget-object v3, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v2, v3, p0}, Lcom/questvisual/wordlens/a/g;->a(Lcom/questvisual/wordlens/a/e;Lcom/questvisual/wordlens/a/b;)V

    .line 491
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    .line 492
    new-instance v2, Lcom/questvisual/wordlens/messaging/a;

    sget-object v3, Lcom/questvisual/wordlens/messaging/g;->t:Lcom/questvisual/wordlens/messaging/g;

    invoke-direct {v2, v3}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;)V

    invoke-static {v2}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/a;)V

    .line 496
    new-instance v2, Lcom/questvisual/wordlens/a/a;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/a/a;-><init>(Lcom/questvisual/wordlens/a/b;)V

    iput-object v2, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    .line 499
    iget-object v2, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/a/a;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v2

    .line 505
    cmp-long v3, v4, v7

    if-gez v3, :cond_4

    .line 506
    :try_start_3
    const-string v3, "QV"

    const-string v6, "Unable to startPreview. Beginning auto-retry!"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unable to startPreview. Auto-retry startPreview on device: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " for fingerprint: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " MSG: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    const-string v3, "ERROR_WL_BUG"

    const-string v6, ""

    invoke-static {v3, v2, v6}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->f()V

    .line 510
    const-string v2, "QV"

    const-string v3, "Unable to startPreview. Auto-retry stopped preview."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->p()V

    .line 512
    const-string v2, "QV"

    const-string v3, "Unable to startPreview. Auto-retry closed camera."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->o()V

    .line 514
    const-string v2, "QV"

    const-string v3, "Unable to startPreview. Auto-retry opened camera."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 515
    goto/16 :goto_1

    .line 517
    :cond_4
    const-string v3, "QV"

    const-string v6, "Unable to startPreview. User will have to retry."

    invoke-static {v3, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auto-restart failed for startPreview on device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for fingerprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    const-string v3, "ERROR_WL_BUG"

    const-string v6, ""

    invoke-static {v3, v2, v6}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v2, v4

    goto/16 :goto_1

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 529
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/g;->a(Lcom/questvisual/wordlens/a/e;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/g;->a(Lcom/questvisual/wordlens/a/i;)V

    .line 543
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    .line 552
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/a;->interrupt()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/b;->k:Lcom/questvisual/wordlens/a/a;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    if-eqz v0, :cond_2

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    .line 561
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->c()V

    .line 566
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->l:Z

    .line 567
    new-instance v0, Lcom/questvisual/wordlens/messaging/a;

    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->u:Lcom/questvisual/wordlens/messaging/g;

    invoke-direct {v0, v1}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->f()V

    .line 575
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->p()V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 677
    :goto_0
    return-object v0

    .line 673
    :catch_0
    move-exception v0

    .line 677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 713
    const-string v1, "torch"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/questvisual/wordlens/a/b;->i:Lcom/questvisual/wordlens/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 724
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 725
    if-nez v1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    const-string v0, "torch"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->q:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/a/b;->p:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->r:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->j:Z

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iput p3, p0, Lcom/questvisual/wordlens/a/b;->g:I

    .line 153
    iput p4, p0, Lcom/questvisual/wordlens/a/b;->h:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->f:Z

    .line 156
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->l:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->e()Z

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->l:Z

    .line 160
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    const-string v0, "WordLens"

    const-string v1, "CameraController.surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/b;->f()V

    .line 146
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/b;->p()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/b;->f:Z

    .line 148
    return-void
.end method
