.class public Lcom/questvisual/wordlens/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/questvisual/wordlens/d/f;->f:I

    .line 33
    iput v0, p0, Lcom/questvisual/wordlens/d/f;->g:I

    .line 34
    iput v1, p0, Lcom/questvisual/wordlens/d/f;->h:I

    .line 35
    iput v1, p0, Lcom/questvisual/wordlens/d/f;->i:I

    .line 36
    iput-boolean v2, p0, Lcom/questvisual/wordlens/d/f;->j:Z

    .line 37
    iput-boolean v2, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    .line 40
    iput-object p1, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find a textView for the resource ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", check your usage of RotatedLayoutFactory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private d()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, -0x2

    const/high16 v5, -0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    .line 105
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 111
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/questvisual/wordlens/d/f;->f:I

    .line 112
    iget v2, p0, Lcom/questvisual/wordlens/d/f;->g:I

    .line 111
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    iget-object v1, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->h:I

    if-eqz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->h:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 126
    :goto_0
    iget v1, p0, Lcom/questvisual/wordlens/d/f;->i:I

    if-eqz v1, :cond_3

    .line 127
    iget v1, p0, Lcom/questvisual/wordlens/d/f;->i:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 134
    :goto_1
    iget-object v2, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 135
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 139
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 141
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    .line 145
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 148
    iput-boolean v3, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    .line 149
    iput-boolean v4, p0, Lcom/questvisual/wordlens/d/f;->j:Z

    .line 150
    return-void

    .line 119
    :cond_1
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->f:I

    if-eq v6, v0, :cond_2

    .line 120
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->f:I

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_3
    iget v1, p0, Lcom/questvisual/wordlens/d/f;->g:I

    if-eq v6, v1, :cond_4

    .line 129
    iget v1, p0, Lcom/questvisual/wordlens/d/f;->g:I

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    .line 131
    :cond_4
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/f;->d()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 61
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->h:I

    if-eq p1, v0, :cond_0

    .line 62
    iput p1, p0, Lcom/questvisual/wordlens/d/f;->h:I

    .line 63
    iput v1, p0, Lcom/questvisual/wordlens/d/f;->f:I

    .line 64
    iput v1, p0, Lcom/questvisual/wordlens/d/f;->g:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    .line 67
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->f:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/questvisual/wordlens/d/f;->g:I

    if-eq p2, v0, :cond_1

    .line 53
    :cond_0
    iput p1, p0, Lcom/questvisual/wordlens/d/f;->f:I

    .line 54
    iput p2, p0, Lcom/questvisual/wordlens/d/f;->g:I

    .line 55
    iput v1, p0, Lcom/questvisual/wordlens/d/f;->h:I

    .line 56
    iput v1, p0, Lcom/questvisual/wordlens/d/f;->i:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    .line 59
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/f;->d()V

    .line 173
    :cond_1
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->j:Z

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/f;->d:Landroid/graphics/Bitmap;

    .line 182
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 187
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 188
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->e:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 190
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->c:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/f;->d:Landroid/graphics/Bitmap;

    .line 191
    iput-boolean v1, p0, Lcom/questvisual/wordlens/d/f;->j:Z

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->b:Landroid/view/View;

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/questvisual/wordlens/d/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    return-void
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget v0, p0, Lcom/questvisual/wordlens/d/f;->e:I

    if-eq p1, v0, :cond_0

    .line 164
    iput p1, p0, Lcom/questvisual/wordlens/d/f;->e:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d/f;->j:Z

    .line 167
    :cond_0
    return-void
.end method
