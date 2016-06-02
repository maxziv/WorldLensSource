.class Lcom/questvisual/wordlens/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static g:I

.field private static h:[I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 117
    sput v3, Lcom/questvisual/wordlens/o;->g:I

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 120
    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 121
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 122
    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    .line 123
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/questvisual/wordlens/o;->g:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 124
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 118
    sput-object v0, Lcom/questvisual/wordlens/o;->h:[I

    .line 125
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/questvisual/wordlens/o;->i:[I

    .line 105
    iput p1, p0, Lcom/questvisual/wordlens/o;->a:I

    .line 106
    iput p2, p0, Lcom/questvisual/wordlens/o;->b:I

    .line 107
    iput p3, p0, Lcom/questvisual/wordlens/o;->c:I

    .line 108
    iput p4, p0, Lcom/questvisual/wordlens/o;->d:I

    .line 109
    iput p5, p0, Lcom/questvisual/wordlens/o;->e:I

    .line 110
    iput p6, p0, Lcom/questvisual/wordlens/o;->f:I

    .line 111
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/questvisual/wordlens/o;->i:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/questvisual/wordlens/o;->i:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 187
    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 155
    array-length v7, p3

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 178
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 155
    :cond_0
    aget-object v3, p3, v6

    .line 157
    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 159
    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 162
    iget v1, p0, Lcom/questvisual/wordlens/o;->e:I

    if-lt v8, v1, :cond_1

    iget v1, p0, Lcom/questvisual/wordlens/o;->f:I

    if-ge v0, v1, :cond_2

    .line 155
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 167
    :cond_2
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 169
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 171
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 173
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/questvisual/wordlens/o;->a:I

    if-ne v8, v1, :cond_1

    iget v1, p0, Lcom/questvisual/wordlens/o;->b:I

    if-ne v9, v1, :cond_1

    iget v1, p0, Lcom/questvisual/wordlens/o;->c:I

    if-ne v10, v1, :cond_1

    iget v1, p0, Lcom/questvisual/wordlens/o;->d:I

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 131
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 132
    sget-object v2, Lcom/questvisual/wordlens/o;->h:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 134
    aget v4, v5, v4

    .line 136
    if-gtz v4, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 143
    sget-object v2, Lcom/questvisual/wordlens/o;->h:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 150
    invoke-virtual {p0, p1, p2, v3}, Lcom/questvisual/wordlens/o;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
