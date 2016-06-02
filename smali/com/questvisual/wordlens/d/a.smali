.class public Lcom/questvisual/wordlens/d/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static synthetic o:[I


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/graphics/drawable/RotateDrawable;

.field private g:Landroid/graphics/drawable/RotateDrawable;

.field private h:Landroid/graphics/drawable/RotateDrawable;

.field private i:Landroid/graphics/drawable/RotateDrawable;

.field private j:Landroid/graphics/drawable/RotateDrawable;

.field private k:I

.field private l:Z

.field private m:Landroid/content/SharedPreferences;

.field private n:Lcom/questvisual/wordlens/d/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/questvisual/wordlens/d/d;ILcom/questvisual/wordlens/d/h;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v3, -0x2

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    .line 80
    iput p3, p0, Lcom/questvisual/wordlens/d/a;->k:I

    .line 82
    sget v0, Lcom/questvisual/wordlens/an;->float_bg:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/d/a;->setBackgroundResource(I)V

    .line 83
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/d/a;->setGravity(I)V

    .line 85
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->m:Landroid/content/SharedPreferences;

    .line 90
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    .line 91
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    .line 92
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    .line 93
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    .line 94
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/an;->tool_rot_lock_rotatable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/an;->tool_zoom_rotatable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/an;->tool_torch_rotatable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/an;->tool_hide_trans_rotatable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/an;->tool_share_snapshot_rotatable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->f:Landroid/graphics/drawable/RotateDrawable;

    .line 116
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->g:Landroid/graphics/drawable/RotateDrawable;

    .line 117
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->h:Landroid/graphics/drawable/RotateDrawable;

    .line 118
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->i:Landroid/graphics/drawable/RotateDrawable;

    .line 119
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iput-object v0, p0, Lcom/questvisual/wordlens/d/a;->j:Landroid/graphics/drawable/RotateDrawable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/d/a;->setCameraPanelIconRotation(I)V

    .line 127
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 128
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 129
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 130
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 132
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 134
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/questvisual/wordlens/d/d;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/questvisual/wordlens/d/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/questvisual/wordlens/d/d;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/questvisual/wordlens/d/d;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iput-object p4, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    .line 140
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "QV"

    const-string v2, "Mistake. Camera Panel icons have been edited incorrectly. Must assign a <rotate> RotateDrawable to these icons."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 320
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 321
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 322
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 324
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 328
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 329
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 330
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    .line 331
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/questvisual/wordlens/d/a;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/questvisual/wordlens/d/a;->o:[I

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
    sput-object v0, Lcom/questvisual/wordlens/d/a;->o:[I

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

.method static synthetic c(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/h;->b()V

    .line 154
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->removeAllViews()V

    .line 282
    sparse-switch p1, :sswitch_data_0

    .line 302
    const/16 v0, 0x53

    .line 303
    invoke-virtual {p0, v1}, Lcom/questvisual/wordlens/d/a;->setOrientation(I)V

    .line 304
    invoke-direct {p0, v2}, Lcom/questvisual/wordlens/d/a;->a(Z)V

    .line 310
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 312
    iget v0, p0, Lcom/questvisual/wordlens/d/a;->k:I

    iget v2, p0, Lcom/questvisual/wordlens/d/a;->k:I

    iget v3, p0, Lcom/questvisual/wordlens/d/a;->k:I

    iget v4, p0, Lcom/questvisual/wordlens/d/a;->k:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/questvisual/wordlens/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->requestLayout()V

    .line 315
    return-void

    .line 285
    :sswitch_0
    const/16 v0, 0x33

    .line 286
    invoke-virtual {p0, v2}, Lcom/questvisual/wordlens/d/a;->setOrientation(I)V

    .line 287
    invoke-direct {p0, v2}, Lcom/questvisual/wordlens/d/a;->a(Z)V

    goto :goto_0

    .line 290
    :sswitch_1
    const/16 v0, 0x35

    .line 291
    invoke-virtual {p0, v1}, Lcom/questvisual/wordlens/d/a;->setOrientation(I)V

    .line 292
    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/d/a;->a(Z)V

    goto :goto_0

    .line 295
    :sswitch_2
    const/16 v0, 0x55

    .line 296
    invoke-virtual {p0, v2}, Lcom/questvisual/wordlens/d/a;->setOrientation(I)V

    .line 297
    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/d/a;->a(Z)V

    goto :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/questvisual/wordlens/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/questvisual/wordlens/d/c;

    invoke-direct {v1, p0, p1}, Lcom/questvisual/wordlens/d/c;-><init>(Lcom/questvisual/wordlens/d/a;Lcom/questvisual/wordlens/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_0
    return-void
.end method

.method public a(Lcom/questvisual/wordlens/ag;Lcom/questvisual/wordlens/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 186
    invoke-static {}, Lcom/questvisual/wordlens/d/a;->b()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d/a;->l:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->m:Landroid/content/SharedPreferences;

    const-string v2, "key.has.used.share.feature"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/aj;->wobble:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    new-instance v1, Lcom/questvisual/wordlens/d/b;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/d/b;-><init>(Lcom/questvisual/wordlens/d/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    if-eqz p2, :cond_2

    .line 223
    iget-object v3, p0, Lcom/questvisual/wordlens/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/questvisual/wordlens/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/questvisual/wordlens/a/b;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->n:Lcom/questvisual/wordlens/d/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/h;->a(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 223
    goto :goto_1

    :cond_4
    move v1, v2

    .line 224
    goto :goto_2

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoRotateMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/questvisual/wordlens/d/a;->l:Z

    .line 181
    return-void
.end method

.method public setCameraPanelIconRotation(I)V
    .locals 2
    .parameter

    .prologue
    .line 267
    mul-int/lit16 v0, p1, 0x2710

    div-int/lit16 v0, v0, 0x168

    .line 269
    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->f:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 270
    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->g:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 271
    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->h:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 272
    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->i:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 273
    iget-object v1, p0, Lcom/questvisual/wordlens/d/a;->j:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 274
    return-void
.end method

.method public setOrientationLocked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/questvisual/wordlens/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 262
    return-void
.end method
