.class Lcom/questvisual/wordlens/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3142
    iget-object v0, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3143
    :goto_0
    iget-object v1, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/a/b;->a(Z)V

    .line 3146
    iget-object v0, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/b;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Ljava/lang/Boolean;)V

    .line 3148
    iget-object v0, p0, Lcom/questvisual/wordlens/bu;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->f(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3149
    const-string v0, "wl_torch"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 3151
    :cond_0
    return-void

    .line 3142
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
