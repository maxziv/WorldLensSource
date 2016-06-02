.class public Lcom/questvisual/wordlens/NativeFrameSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/a/i;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/NativeFrameSink;->a:Z

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/questvisual/wordlens/NativeFrameSink;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/questvisual/wordlens/NativeFrameSink;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 3
    .parameter

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeFrameSink camera natural orientation set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput p1, p0, Lcom/questvisual/wordlens/NativeFrameSink;->b:I

    .line 64
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    const/16 v0, 0x168

    :try_start_1
    invoke-static {p1, v0}, Lcom/questvisual/util/a;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/NativeFrameSink;->setCameraOrientationNative(I)V

    .line 64
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 64
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

    .line 62
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/questvisual/wordlens/NativeFrameSink;->onSetImageInfoNative(III)V

    .line 29
    return-void
.end method

.method public a([B)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/NativeFrameSink;->onSetNextFrameNative([B)V

    .line 49
    return-void
.end method

.method public native onSetImageInfoNative(III)V
.end method

.method public native onSetNextFrameNative([B)V
.end method

.method public native setCameraOrientationNative(I)V
.end method
