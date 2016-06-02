.class Lcom/questvisual/wordlens/bt;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bt;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3106
    iget-object v0, p0, Lcom/questvisual/wordlens/bt;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->c(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3108
    const-string v0, "wl_zoom"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 3111
    iget-object v0, p0, Lcom/questvisual/wordlens/bt;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/bt;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->e(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/questvisual/wordlens/bt;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->c(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/questvisual/wordlens/c/d;->a(Lcom/questvisual/wordlens/a/b;Landroid/widget/ImageView;Lcom/questvisual/wordlens/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/questvisual/wordlens/c/d;

    move-result-object v0

    .line 3112
    if-eqz v0, :cond_1

    .line 3113
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/c/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3123
    :cond_0
    :goto_0
    return-void

    .line 3116
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/bt;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->c(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
