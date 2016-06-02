.class public Lcom/questvisual/util/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    .line 12
    iput-object p1, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    .line 13
    return-void
.end method

.method static synthetic a(Lcom/questvisual/util/ui/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    .line 17
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 23
    iget-object v0, p0, Lcom/questvisual/util/ui/d;->a:Landroid/view/View;

    new-instance v1, Lcom/questvisual/util/ui/e;

    invoke-direct {v1, p0}, Lcom/questvisual/util/ui/e;-><init>(Lcom/questvisual/util/ui/d;)V

    .line 29
    const-wide/16 v2, 0x190

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    :cond_0
    return-void
.end method
