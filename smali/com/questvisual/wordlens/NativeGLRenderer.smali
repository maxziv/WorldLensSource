.class Lcom/questvisual/wordlens/NativeGLRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:Z

.field private b:Lcom/questvisual/wordlens/ag;

.field pixelDensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->pixelDensity:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->a:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->b:Lcom/questvisual/wordlens/ag;

    .line 21
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    const-string v0, "QV"

    const-string v2, "NativeGLRenderer.onEGLContextDestroyed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/questvisual/wordlens/NativeGLRenderer;->onContextDestroyedNative()V

    .line 80
    monitor-exit v1

    .line 84
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native getViewOrientationNative()I
.end method

.method private static native onContextDestroyedNative()V
.end method

.method private native setDrawOCRResultsNative(Z)V
.end method

.method public static native setIsAppWindowAutoRotate(Z)V
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->pixelDensity:F

    .line 98
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Lcom/questvisual/wordlens/e/b;->a(I)V

    .line 90
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/NativeGLRenderer;->setViewOrientationNative(I)V

    .line 90
    monitor-exit v1

    .line 93
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/questvisual/wordlens/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->b:Lcom/questvisual/wordlens/ag;

    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/NativeGLRenderer;->setDrawOCRResultsNative(Z)V

    .line 102
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeGLRenderer;->getViewOrientationNative()I

    move-result v0

    monitor-exit v1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->a:Z

    .line 115
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->a:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/NativeGLRenderer;->onDrawFrameNative(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 45
    monitor-exit v1

    .line 52
    :goto_0
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :cond_0
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_0
.end method

.method public native onDrawFrameNative(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 59
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/questvisual/wordlens/NativeGLRenderer;->onSurfaceChangedNative(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 60
    iget-object v0, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->b:Lcom/questvisual/wordlens/ag;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->b:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/NativeWordLensUI;->a(Lcom/questvisual/wordlens/ag;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/NativeGLRenderer;->b:Lcom/questvisual/wordlens/ag;

    .line 55
    :cond_0
    monitor-exit v1

    .line 68
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native onSurfaceChangedNative(Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/questvisual/wordlens/NativeGLRenderer;->onSurfaceCreatedNative(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 71
    monitor-exit v1

    .line 77
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native onSurfaceCreatedNative(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public native setViewOrientationNative(I)V
.end method
