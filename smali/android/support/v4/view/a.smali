.class public Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/support/v4/view/d;

    invoke-direct {v0}, Landroid/support/v4/view/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/b;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0}, Landroid/support/v4/view/c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/b;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/b;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/b;->a(II)I

    move-result v0

    return v0
.end method
