.class Lcom/questvisual/wordlens/n;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "GL2SurfaceView"

    sput-object v0, Lcom/questvisual/wordlens/n;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, v0, v0, v0}, Lcom/questvisual/wordlens/n;->a(ZII)V

    .line 37
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/questvisual/wordlens/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/questvisual/wordlens/n;->b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private a(ZII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/16 v1, 0x8

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/n;->setEGLContextClientVersion(I)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/questvisual/wordlens/n;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 64
    :cond_0
    new-instance v0, Lcom/questvisual/wordlens/p;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/questvisual/wordlens/p;-><init>(Lcom/questvisual/wordlens/p;)V

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/n;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 71
    if-eqz p1, :cond_1

    .line 72
    new-instance v0, Lcom/questvisual/wordlens/o;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/questvisual/wordlens/o;-><init>(IIIIII)V

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/n;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 74
    return-void

    .line 73
    :cond_1
    new-instance v0, Lcom/questvisual/wordlens/o;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/questvisual/wordlens/o;-><init>(IIIIII)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 97
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    sget-object v1, Lcom/questvisual/wordlens/n;->a:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
