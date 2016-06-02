.class Lcom/questvisual/wordlens/ce;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Lcom/questvisual/wordlens/WordLensActivity;

.field private c:I

.field private d:I

.field private e:F


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/WordLensActivity;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2768
    iput-object p1, p0, Lcom/questvisual/wordlens/ce;->b:Lcom/questvisual/wordlens/WordLensActivity;

    .line 2769
    invoke-direct {p0, p4, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2758
    iput v0, p0, Lcom/questvisual/wordlens/ce;->c:I

    .line 2759
    iput v0, p0, Lcom/questvisual/wordlens/ce;->d:I

    .line 2762
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/questvisual/wordlens/ce;->e:F

    .line 2770
    iput-object p3, p0, Lcom/questvisual/wordlens/ce;->a:Landroid/view/View;

    .line 2771
    invoke-virtual {p1}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/questvisual/wordlens/ce;->e:F

    .line 2773
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/ce;)I
    .locals 1
    .parameter

    .prologue
    .line 2758
    iget v0, p0, Lcom/questvisual/wordlens/ce;->c:I

    return v0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/ce;)I
    .locals 1
    .parameter

    .prologue
    .line 2759
    iget v0, p0, Lcom/questvisual/wordlens/ce;->d:I

    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 2778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2779
    iget-object v1, p0, Lcom/questvisual/wordlens/ce;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2788
    packed-switch v0, :pswitch_data_0

    .line 2801
    const/4 v0, 0x0

    .line 2808
    :goto_0
    if-eqz v0, :cond_0

    .line 2810
    iget v3, p0, Lcom/questvisual/wordlens/ce;->e:F

    div-float/2addr v1, v3

    .line 2811
    iget v3, p0, Lcom/questvisual/wordlens/ce;->e:F

    div-float/2addr v2, v3

    .line 2814
    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/c;FF)V

    .line 2818
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2790
    :pswitch_0
    sget-object v0, Lcom/questvisual/wordlens/messaging/c;->b:Lcom/questvisual/wordlens/messaging/c;

    goto :goto_0

    .line 2793
    :pswitch_1
    sget-object v0, Lcom/questvisual/wordlens/messaging/c;->d:Lcom/questvisual/wordlens/messaging/c;

    .line 2794
    float-to-int v3, v1

    iput v3, p0, Lcom/questvisual/wordlens/ce;->c:I

    .line 2795
    float-to-int v3, v2

    iput v3, p0, Lcom/questvisual/wordlens/ce;->d:I

    goto :goto_0

    .line 2798
    :pswitch_2
    sget-object v0, Lcom/questvisual/wordlens/messaging/c;->c:Lcom/questvisual/wordlens/messaging/c;

    goto :goto_0

    .line 2788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
