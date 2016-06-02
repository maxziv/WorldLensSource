.class Lcom/questvisual/wordlens/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic d:[I


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private b:Lcom/questvisual/wordlens/e/a/a;

.field private c:J


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 2646
    iput-object p1, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    .line 2649
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/questvisual/wordlens/ch;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2646
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/ch;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 2646
    sget-object v0, Lcom/questvisual/wordlens/ch;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/ag;->values()[Lcom/questvisual/wordlens/ag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/questvisual/wordlens/ch;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    if-eqz v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/a;->a()V

    .line 2723
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2655
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->j(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2656
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensActivity;->getRequestedOrientation()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 2664
    :goto_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2665
    sget v3, Lcom/questvisual/wordlens/an;->info_popup:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2666
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2667
    iget-object v3, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/questvisual/wordlens/am;->custom_toast_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2668
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2671
    invoke-static {}, Lcom/questvisual/wordlens/ch;->b()[I

    move-result-object v3

    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2689
    :goto_1
    iget-object v3, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/WordLensActivity;->f(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    .line 2692
    if-eqz v0, :cond_4

    .line 2693
    sget v0, Lcom/questvisual/wordlens/an;->info_rot_locked:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2694
    sget v0, Lcom/questvisual/wordlens/at;->orientation_locked:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2695
    const-string v0, "wl_rotate_lock"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 2702
    :goto_2
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    if-nez v0, :cond_5

    .line 2703
    new-instance v0, Lcom/questvisual/wordlens/e/a/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget-object v3, Lcom/questvisual/wordlens/e/a/b;->c:Lcom/questvisual/wordlens/e/a/b;

    sget-object v4, Lcom/questvisual/wordlens/e/a/d;->g:Lcom/questvisual/wordlens/e/a/d;

    sget-object v5, Lcom/questvisual/wordlens/e/a/e;->g:Lcom/questvisual/wordlens/e/a/e;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/questvisual/wordlens/e/a/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    .line 2708
    :cond_0
    :goto_3
    const-wide/16 v0, 0x0

    iget-wide v3, p0, Lcom/questvisual/wordlens/ch;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 2709
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/ap;->rotation_lock_popup_millis:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/ch;->c:J

    .line 2712
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/view/View;)V

    .line 2713
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    iget-wide v1, p0, Lcom/questvisual/wordlens/ch;->c:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/view/View;J)V

    .line 2714
    return-void

    :cond_2
    move v0, v1

    .line 2656
    goto/16 :goto_0

    .line 2658
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->k(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cf;->b()Z

    move-result v0

    goto/16 :goto_0

    .line 2673
    :pswitch_0
    iget-object v3, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    goto :goto_1

    .line 2676
    :pswitch_1
    iget-object v3, p0, Lcom/questvisual/wordlens/ch;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/WordLensActivity;->e(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    goto :goto_1

    .line 2697
    :cond_4
    sget v0, Lcom/questvisual/wordlens/an;->info_rot_unlocked:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2698
    sget v0, Lcom/questvisual/wordlens/at;->orientation_unlocked:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2699
    const-string v0, "wl_rotate_unlock"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2704
    :cond_5
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2705
    iget-object v0, p0, Lcom/questvisual/wordlens/ch;->b:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/a;->a()V

    goto :goto_3

    .line 2671
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
