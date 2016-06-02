.class public Landroid/support/v4/view/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/af;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 428
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 429
    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0}, Landroid/support/v4/view/ae;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 431
    new-instance v0, Landroid/support/v4/view/ad;

    invoke-direct {v0}, Landroid/support/v4/view/ad;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    goto :goto_0

    .line 432
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 433
    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    goto :goto_0

    .line 434
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 435
    new-instance v0, Landroid/support/v4/view/ab;

    invoke-direct {v0}, Landroid/support/v4/view/ab;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    goto :goto_0

    .line 436
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 437
    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0}, Landroid/support/v4/view/aa;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    goto :goto_0

    .line 439
    :cond_4
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 475
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0}, Landroid/support/v4/view/af;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/af;->a(Landroid/view/View;IIII)V

    .line 667
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 828
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/af;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 829
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 904
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/af;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 905
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 680
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/af;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/af;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 648
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0}, Landroid/support/v4/view/af;->b(Landroid/view/View;)V

    .line 649
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 848
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0}, Landroid/support/v4/view/af;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 918
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0}, Landroid/support/v4/view/af;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 963
    sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/af;

    invoke-interface {v0, p0}, Landroid/support/v4/view/af;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
