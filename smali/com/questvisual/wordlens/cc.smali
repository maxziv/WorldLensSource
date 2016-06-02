.class Lcom/questvisual/wordlens/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private b:J

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/questvisual/wordlens/cc;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2513
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/questvisual/wordlens/cc;->b:J

    .line 2518
    iput-object p2, p0, Lcom/questvisual/wordlens/cc;->c:Landroid/content/Context;

    .line 2519
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/questvisual/wordlens/cc;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->c(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    .line 2574
    iget-object v0, p0, Lcom/questvisual/wordlens/cc;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;

    move-result-object v0

    iget-object v1, v0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    iget-object v0, p0, Lcom/questvisual/wordlens/cc;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->h(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(Z)V

    .line 2575
    iget-object v0, p0, Lcom/questvisual/wordlens/cc;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->i(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 2576
    return-void

    .line 2574
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2523
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 2568
    :goto_0
    return v0

    .line 2526
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/cc;->a(Z)V

    .line 2527
    const-string v1, "wl_hide_trans"

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Z)V

    .line 2528
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 2563
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/cc;->a(Z)V

    .line 2564
    const-string v2, "wl_hide_trans"

    invoke-static {v2}, Lcom/questvisual/wordlens/e/a;->b(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 2523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
