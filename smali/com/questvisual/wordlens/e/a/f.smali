.class public Lcom/questvisual/wordlens/e/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/PopupWindow;

.field protected c:Landroid/view/View;

.field protected d:Landroid/graphics/drawable/Drawable;

.field protected e:Landroid/view/WindowManager;

.field protected f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->d:Landroid/graphics/drawable/Drawable;

    .line 37
    iput v2, p0, Lcom/questvisual/wordlens/e/a/f;->f:I

    .line 45
    iput-object p1, p0, Lcom/questvisual/wordlens/e/a/f;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    .line 47
    iput p2, p0, Lcom/questvisual/wordlens/e/a/f;->f:I

    .line 49
    iget-object v3, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    iget v0, p0, Lcom/questvisual/wordlens/e/a/f;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 52
    iget v0, p0, Lcom/questvisual/wordlens/e/a/f;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/questvisual/wordlens/e/a/g;

    invoke-direct {v3, p0}, Lcom/questvisual/wordlens/e/a/g;-><init>(Lcom/questvisual/wordlens/e/a/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/questvisual/wordlens/e/a/f;->f:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 69
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->e:Landroid/view/WindowManager;

    .line 70
    return-void

    :cond_1
    move v0, v2

    .line 49
    goto :goto_0

    :cond_2
    move v1, v2

    .line 67
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 155
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/questvisual/wordlens/e/a/f;->c:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected g()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 88
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/e/a/f;->f()V

    .line 93
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 99
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 103
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 104
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/f;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/f;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
