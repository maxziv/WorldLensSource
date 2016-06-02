.class public abstract Lcom/questvisual/util/ui/a;
.super Landroid/support/v4/app/e;
.source "SourceFile"


# instance fields
.field private Y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/util/ui/a;->Y:Z

    .line 12
    return-void
.end method


# virtual methods
.method protected D()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/questvisual/util/ui/a;->Y:Z

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/questvisual/util/ui/a;->Y:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/questvisual/util/ui/a;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 33
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/e;->a()V

    .line 34
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/questvisual/util/ui/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/util/ui/a;->Y:Z

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/e;->a(Landroid/app/Activity;)V

    .line 22
    return-void
.end method
