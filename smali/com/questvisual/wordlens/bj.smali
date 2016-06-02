.class Lcom/questvisual/wordlens/bj;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bj;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 1706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1710
    iget-object v0, p0, Lcom/questvisual/wordlens/bj;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const-string v1, "word.lens"

    invoke-virtual {v0, v1, v3}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1711
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key.camera.orientation.compensation.v2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1712
    iget-object v1, p0, Lcom/questvisual/wordlens/bj;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->D(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/questvisual/wordlens/bj;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensActivity;->o(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1713
    iget-object v1, p0, Lcom/questvisual/wordlens/bj;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Landroid/widget/RelativeLayout;)V

    .line 1715
    iget-object v1, p0, Lcom/questvisual/wordlens/bj;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget-object v2, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    invoke-static {v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ci;)V

    .line 1718
    const-string v1, "key.camera.orientation.compensation.v2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1719
    if-eqz v0, :cond_0

    .line 1720
    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(I)V

    .line 1722
    :cond_0
    return-void
.end method
