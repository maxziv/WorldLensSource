.class Lcom/questvisual/wordlens/cf;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3228
    iput-object p1, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3229
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 3219
    iput v0, p0, Lcom/questvisual/wordlens/cf;->b:I

    .line 3220
    iput v0, p0, Lcom/questvisual/wordlens/cf;->c:I

    .line 3221
    const/4 v0, -0x1

    iput v0, p0, Lcom/questvisual/wordlens/cf;->d:I

    .line 3224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/cf;->e:Z

    .line 3230
    iput p3, p0, Lcom/questvisual/wordlens/cf;->c:I

    .line 3231
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/cf;)I
    .locals 1
    .parameter

    .prologue
    .line 3220
    iget v0, p0, Lcom/questvisual/wordlens/cf;->c:I

    return v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x168

    const/4 v1, 0x0

    .line 3272
    invoke-static {p1, v5}, Lcom/questvisual/util/a;->a(II)I

    move-result v3

    .line 3277
    if-ltz v3, :cond_4

    iget v0, p0, Lcom/questvisual/wordlens/cf;->b:I

    invoke-static {v0, v3}, Lcom/questvisual/util/a;->b(II)I

    move-result v0

    .line 3279
    :goto_0
    iget-object v2, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/WordLensActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 3281
    :goto_1
    iget v4, p0, Lcom/questvisual/wordlens/cf;->d:I

    if-ne v2, v4, :cond_0

    .line 3284
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v4, 0x41

    if-le v0, v4, :cond_1

    const/4 v1, 0x1

    .line 3294
    :cond_1
    if-eqz v1, :cond_3

    .line 3304
    const/4 v0, -0x1

    if-eq v0, p1, :cond_2

    .line 3305
    invoke-static {v3}, Lcom/questvisual/util/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/questvisual/wordlens/cf;->b:I

    .line 3308
    :cond_2
    iput v2, p0, Lcom/questvisual/wordlens/cf;->d:I

    .line 3313
    iget v0, p0, Lcom/questvisual/wordlens/cf;->b:I

    neg-int v0, v0

    invoke-static {v0, v5}, Lcom/questvisual/util/a;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/cf;->b(I)V

    .line 3315
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 3277
    goto :goto_0

    .line 3279
    :cond_5
    iget v2, p0, Lcom/questvisual/wordlens/cf;->d:I

    goto :goto_1
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3320
    const-string v0, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interfaceOrientationChanged: prevDegCW: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/questvisual/wordlens/cf;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newDegCW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->j(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3330
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->n(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3331
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;I)V

    .line 3335
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->o(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3336
    iget-object v2, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->j(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/questvisual/wordlens/WordLensActivity;->b(Lcom/questvisual/wordlens/WordLensActivity;I)V

    .line 3338
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->p(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3339
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v2, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->j(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->c(Lcom/questvisual/wordlens/WordLensActivity;I)V

    .line 3343
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->q(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 3344
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->q(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/d/a;->a(I)V

    .line 3346
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->q(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/d/a;->setCameraPanelIconRotation(I)V

    .line 3349
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;

    move-result-object v0

    iget-object v0, v0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(I)V

    .line 3351
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->r(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 3354
    :cond_4
    iput p1, p0, Lcom/questvisual/wordlens/cf;->c:I

    .line 3356
    return-void

    :cond_5
    move v0, p1

    .line 3336
    goto :goto_0

    :cond_6
    move v1, p1

    .line 3339
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 3237
    const/4 v0, -0x1

    iput v0, p0, Lcom/questvisual/wordlens/cf;->d:I

    .line 3238
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 3371
    iget-boolean v0, p0, Lcom/questvisual/wordlens/cf;->e:Z

    return v0
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 3366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/cf;->e:Z

    .line 3367
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 3368
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 3360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/cf;->e:Z

    .line 3361
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 3362
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->j(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3259
    iget-object v0, p0, Lcom/questvisual/wordlens/cf;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->m(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 3264
    :goto_0
    return-void

    .line 3262
    :cond_0
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/cf;->a(I)V

    goto :goto_0
.end method
