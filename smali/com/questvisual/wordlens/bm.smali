.class Lcom/questvisual/wordlens/bm;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 1820
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->n(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->E(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->B(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 1827
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const-string v1, "word.lens"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1828
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.tutorial.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1830
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v1, Lcom/questvisual/wordlens/ao;->welcome_overlay:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1833
    if-eqz v0, :cond_1

    .line 1834
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1835
    iget-object v1, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->F(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v1, Lcom/questvisual/wordlens/ao;->tutorial_overlay_gray:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1840
    if-eqz v0, :cond_2

    .line 1841
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    iget-object v1, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->D(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1845
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->j(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1847
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->setRequestedOrientation(I)V

    .line 1850
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/bm;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget-object v1, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ci;)V

    .line 1851
    return-void
.end method
