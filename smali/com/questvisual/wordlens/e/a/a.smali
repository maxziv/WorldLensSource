.class public Lcom/questvisual/wordlens/e/a/a;
.super Lcom/questvisual/wordlens/e/a/f;
.source "SourceFile"


# static fields
.field private static synthetic m:[I

.field private static synthetic n:[I

.field private static synthetic o:[I


# instance fields
.field private g:Lcom/questvisual/wordlens/e/a/b;

.field private h:Lcom/questvisual/wordlens/e/a/d;

.field private i:Lcom/questvisual/wordlens/e/a/e;

.field private j:I

.field private k:I

.field private l:Lcom/questvisual/wordlens/e/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/e/a/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p5}, Lcom/questvisual/wordlens/e/a/f;-><init>(Landroid/content/Context;I)V

    .line 60
    iput v0, p0, Lcom/questvisual/wordlens/e/a/a;->j:I

    .line 61
    iput v0, p0, Lcom/questvisual/wordlens/e/a/a;->k:I

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->l:Lcom/questvisual/wordlens/e/a/c;

    .line 69
    iput-object p2, p0, Lcom/questvisual/wordlens/e/a/a;->g:Lcom/questvisual/wordlens/e/a/b;

    .line 70
    iput-object p3, p0, Lcom/questvisual/wordlens/e/a/a;->h:Lcom/questvisual/wordlens/e/a/d;

    .line 71
    iput-object p4, p0, Lcom/questvisual/wordlens/e/a/a;->i:Lcom/questvisual/wordlens/e/a/e;

    .line 72
    return-void
.end method

.method private a(Landroid/graphics/Rect;III)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-static {}, Lcom/questvisual/wordlens/e/a/a;->c()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->i:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 201
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p3, v0

    .line 203
    if-le v3, v4, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 205
    :goto_0
    if-eqz v1, :cond_3

    .line 206
    if-le p2, v3, :cond_2

    .line 208
    const/16 v0, 0xf

    .line 209
    iget-object v4, p0, Lcom/questvisual/wordlens/e/a/a;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 210
    sub-int/2addr v3, p4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-direct {p0, p3, v3, v1}, Lcom/questvisual/wordlens/e/a/a;->a(IIZ)V

    .line 226
    :goto_2
    iget v1, p0, Lcom/questvisual/wordlens/e/a/a;->k:I

    add-int/2addr v0, v1

    .line 227
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 229
    return v0

    .line 178
    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 181
    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 185
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 186
    goto :goto_2

    .line 188
    :pswitch_3
    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 189
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    sget v3, Lcom/questvisual/wordlens/au;->Animations_PopIntoCenter:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_2

    .line 193
    :pswitch_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 196
    :pswitch_5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_1
    move v1, v2

    .line 203
    goto :goto_0

    .line 212
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 214
    goto :goto_1

    .line 215
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 217
    if-le p2, v4, :cond_0

    .line 219
    iget-object v3, p0, Lcom/questvisual/wordlens/e/a/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 220
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-static {}, Lcom/questvisual/wordlens/e/a/a;->e()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->g:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    :pswitch_0
    return-void

    .line 321
    :pswitch_1
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_0

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Left:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Left:I

    goto :goto_1

    .line 325
    :pswitch_2
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Right:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Right:I

    goto :goto_2

    .line 329
    :pswitch_3
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_2

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Center:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Center:I

    goto :goto_3

    .line 333
    :pswitch_4
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Reflect:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Reflect:I

    goto :goto_4

    .line 337
    :pswitch_5
    div-int/lit8 v0, p1, 0x4

    if-gt p2, v0, :cond_5

    .line 338
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_4

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Left:I

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Left:I

    goto :goto_5

    .line 339
    :cond_5
    div-int/lit8 v0, p1, 0x4

    if-le p2, v0, :cond_7

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-ge p2, v0, :cond_7

    .line 340
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_6

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Center:I

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_6
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Center:I

    goto :goto_6

    .line 342
    :cond_7
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_8

    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopUpMenu_Right:I

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_8
    sget v0, Lcom/questvisual/wordlens/au;->Animations_PopDownMenu_Right:I

    goto :goto_7

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/graphics/Rect;III)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-static {}, Lcom/questvisual/wordlens/e/a/a;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->h:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    if-le v0, p3, :cond_0

    .line 262
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, p4

    sub-int/2addr v0, v1

    .line 263
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 274
    :goto_0
    iget v1, p0, Lcom/questvisual/wordlens/e/a/a;->j:I

    add-int/2addr v0, v1

    .line 275
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 277
    return v0

    .line 237
    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 240
    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 243
    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 246
    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 249
    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 250
    goto :goto_0

    .line 252
    :pswitch_5
    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 256
    :pswitch_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_0
    if-le p4, p2, :cond_1

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 267
    goto :goto_0

    .line 268
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/questvisual/wordlens/e/a/a;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/e/a/e;->values()[Lcom/questvisual/wordlens/e/a/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->d:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->e:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->c:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->f:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->a:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->g:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/e/a/e;->b:Lcom/questvisual/wordlens/e/a/e;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/questvisual/wordlens/e/a/a;->m:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic d()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/questvisual/wordlens/e/a/a;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/e/a/d;->values()[Lcom/questvisual/wordlens/e/a/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->f:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->a:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->b:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->c:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->h:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->g:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->d:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/questvisual/wordlens/e/a/d;->e:Lcom/questvisual/wordlens/e/a/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/questvisual/wordlens/e/a/a;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic e()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/questvisual/wordlens/e/a/a;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/e/a/b;->values()[Lcom/questvisual/wordlens/e/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->e:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->c:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->a:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->b:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->d:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/e/a/b;->f:Lcom/questvisual/wordlens/e/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/questvisual/wordlens/e/a/a;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->l:Lcom/questvisual/wordlens/e/a/c;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->l:Lcom/questvisual/wordlens/e/a/c;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/c;->a()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->l:Lcom/questvisual/wordlens/e/a/c;

    .line 286
    :cond_0
    invoke-super {p0}, Lcom/questvisual/wordlens/e/a/f;->a()V

    .line 287
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/questvisual/wordlens/e/a/a;->j:I

    .line 360
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/questvisual/wordlens/e/a/a;->k:I

    .line 361
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 103
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-super {p0, p1}, Lcom/questvisual/wordlens/e/a/f;->a(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public a(Landroid/view/View;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/questvisual/wordlens/e/a/a;->g()V

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v6

    aget v3, v0, v8

    aget v4, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v8

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 146
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v7, v7}, Landroid/view/View;->measure(II)V

    .line 153
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 154
    iget-object v2, p0, Lcom/questvisual/wordlens/e/a/a;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 156
    iget-object v3, p0, Lcom/questvisual/wordlens/e/a/a;->e:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 157
    iget-object v4, p0, Lcom/questvisual/wordlens/e/a/a;->e:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/questvisual/wordlens/e/a/a;->b(Landroid/graphics/Rect;III)I

    move-result v2

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v0, v4, v3}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/graphics/Rect;III)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v6, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 167
    new-instance v0, Lcom/questvisual/wordlens/e/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/questvisual/wordlens/e/a/c;-><init>(Lcom/questvisual/wordlens/e/a/a;Lcom/questvisual/wordlens/e/a/c;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->l:Lcom/questvisual/wordlens/e/a/c;

    .line 168
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/questvisual/wordlens/e/a/a;->l:Lcom/questvisual/wordlens/e/a/c;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/view/View;J)V

    .line 117
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/a;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method
