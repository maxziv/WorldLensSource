.class public Lcom/questvisual/util/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/questvisual/util/ui/RotateLayout;->setBackgroundResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/util/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 47
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 48
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    sub-int v0, p4, p2

    .line 54
    sub-int v1, p5, p3

    .line 55
    iget v2, p0, Lcom/questvisual/util/ui/RotateLayout;->b:I

    sparse-switch v2, :sswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 58
    :sswitch_0
    iget-object v2, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v2, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 69
    .line 70
    iget v1, p0, Lcom/questvisual/util/ui/RotateLayout;->b:I

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    .line 84
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/questvisual/util/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 86
    iget v2, p0, Lcom/questvisual/util/ui/RotateLayout;->b:I

    sparse-switch v2, :sswitch_data_1

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    iget v1, p0, Lcom/questvisual/util/ui/RotateLayout;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 109
    return-void

    .line 73
    :sswitch_0
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/questvisual/util/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 74
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 75
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/questvisual/util/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 80
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 81
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 88
    :sswitch_2
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 89
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 94
    :sswitch_3
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 95
    iget-object v0, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 98
    :sswitch_4
    iget-object v2, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 99
    iget-object v1, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 102
    :sswitch_5
    iget-object v1, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    iget-object v1, p0, Lcom/questvisual/util/ui/RotateLayout;->a:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 86
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
