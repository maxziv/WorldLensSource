.class Lcom/questvisual/wordlens/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/e;->a:Lcom/questvisual/wordlens/d;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/questvisual/wordlens/e;->a:Lcom/questvisual/wordlens/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;Z)V

    .line 105
    iget-object v0, p0, Lcom/questvisual/wordlens/e;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->d(Lcom/questvisual/wordlens/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/questvisual/wordlens/y;

    invoke-direct {v0}, Lcom/questvisual/wordlens/y;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/questvisual/wordlens/e;->a:Lcom/questvisual/wordlens/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d;->l()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/y;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/questvisual/wordlens/e;->a:Lcom/questvisual/wordlens/d;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lcom/questvisual/wordlens/LanguagesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    iget-object v1, p0, Lcom/questvisual/wordlens/e;->a:Lcom/questvisual/wordlens/d;

    const/16 v2, 0x108

    invoke-virtual {v1, v0, v2}, Lcom/questvisual/wordlens/d;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method
