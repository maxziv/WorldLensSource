.class Lcom/questvisual/wordlens/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d/a;

.field private final synthetic b:Lcom/questvisual/wordlens/a/b;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/d/a;Lcom/questvisual/wordlens/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/d/c;->a:Lcom/questvisual/wordlens/d/a;

    iput-object p2, p0, Lcom/questvisual/wordlens/d/c;->b:Lcom/questvisual/wordlens/a/b;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/questvisual/wordlens/d/c;->a:Lcom/questvisual/wordlens/d/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/a;->b(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/questvisual/wordlens/d/c;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/questvisual/wordlens/d/c;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/questvisual/wordlens/d/c;->a:Lcom/questvisual/wordlens/d/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/a;->c(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/questvisual/wordlens/d/c;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->i()Z

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/questvisual/wordlens/d/c;->a:Lcom/questvisual/wordlens/d/a;

    invoke-static {v1}, Lcom/questvisual/wordlens/d/a;->c(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 254
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 244
    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/d/c;->a:Lcom/questvisual/wordlens/d/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/a;->c(Lcom/questvisual/wordlens/d/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
