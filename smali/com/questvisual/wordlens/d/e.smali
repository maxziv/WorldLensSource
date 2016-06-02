.class public Lcom/questvisual/wordlens/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/d/e;->a(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 30
    iget-object v2, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 31
    if-nez v7, :cond_0

    .line 82
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 37
    invoke-virtual {v7, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 39
    invoke-virtual {v7}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v7, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 44
    :cond_1
    invoke-virtual {v7, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object v3, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v2, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    iget-object v3, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    .line 54
    const/high16 v4, -0x8000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 55
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 53
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    .line 56
    iget-object v2, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 58
    iget-object v4, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v4, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 60
    iget-object v2, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    const/high16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 62
    invoke-virtual {v7, v5}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 63
    if-nez v2, :cond_2

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 75
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    iget v2, p0, Lcom/questvisual/wordlens/d/e;->b:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    move v2, v1

    move v6, v1

    .line 77
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 80
    invoke-virtual {v7, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/questvisual/wordlens/d/e;->a:Landroid/view/View;

    .line 27
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/questvisual/wordlens/d/e;->b:I

    .line 87
    return-void
.end method
