.class public abstract Lcom/questvisual/util/ui/b;
.super Landroid/support/v4/app/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/questvisual/util/ui/b;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract f()Landroid/support/v4/app/e;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/questvisual/util/ui/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/content/Context;)Z

    .line 34
    sget v0, Lcom/questvisual/wordlens/aq;->single_fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/questvisual/util/ui/b;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/questvisual/util/ui/b;->g()V

    .line 42
    if-eqz p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/questvisual/util/ui/b;->f()Landroid/support/v4/app/e;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/questvisual/util/ui/b;->e()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v1

    .line 48
    sget v2, Lcom/questvisual/wordlens/ao;->fragment_container:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    .line 49
    invoke-virtual {v1}, Landroid/support/v4/app/z;->a()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/questvisual/util/ui/b;->finish()V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
