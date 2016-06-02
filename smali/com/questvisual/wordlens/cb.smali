.class Lcom/questvisual/wordlens/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Lcom/questvisual/wordlens/n;

.field b:Lcom/questvisual/wordlens/NativeGLRenderer;

.field c:Z

.field final synthetic d:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3043
    iput-object p1, p0, Lcom/questvisual/wordlens/cb;->d:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3044
    iput-object p2, p0, Lcom/questvisual/wordlens/cb;->a:Lcom/questvisual/wordlens/n;

    .line 3045
    new-instance v0, Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-direct {v0}, Lcom/questvisual/wordlens/NativeGLRenderer;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    .line 3046
    iget-object v0, p0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-virtual {p2, v0}, Lcom/questvisual/wordlens/n;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 3047
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/questvisual/wordlens/n;->setRenderMode(I)V

    .line 3049
    invoke-virtual {p2}, Lcom/questvisual/wordlens/n;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3050
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/NativeGLRenderer;->b(Z)V

    .line 3091
    iget-object v0, p0, Lcom/questvisual/wordlens/cb;->a:Lcom/questvisual/wordlens/n;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/n;->onPause()V

    .line 3093
    iget-object v0, p0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(Lcom/questvisual/wordlens/ag;)V

    .line 3094
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/questvisual/wordlens/cb;->a:Lcom/questvisual/wordlens/n;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/n;->onResume()V

    .line 3098
    iget-object v0, p0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/NativeGLRenderer;->b(Z)V

    .line 3099
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3058
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 3067
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3068
    iget-object v1, p0, Lcom/questvisual/wordlens/cb;->d:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/WordLensActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3073
    iget-object v1, p0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(F)V

    .line 3076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/cb;->c:Z

    .line 3077
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 3086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/cb;->c:Z

    .line 3087
    return-void
.end method
