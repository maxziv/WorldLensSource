.class Lcom/questvisual/wordlens/bx;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bx;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3689
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    .line 3691
    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v0

    .line 3693
    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    if-ne v0, v1, :cond_0

    .line 3696
    iget-object v0, p0, Lcom/questvisual/wordlens/bx;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/bx;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/b;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Ljava/lang/Boolean;)V

    .line 3697
    iget-object v0, p0, Lcom/questvisual/wordlens/bx;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget-object v1, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;Z)V

    .line 3698
    const-string v0, "wl_lang_pause"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 3705
    :goto_0
    return-void

    .line 3701
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/bx;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;Z)V

    .line 3702
    const-string v0, "wl_lang_play"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
