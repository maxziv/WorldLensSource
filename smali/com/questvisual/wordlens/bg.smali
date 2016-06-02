.class Lcom/questvisual/wordlens/bg;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1448
    iget-object v0, p0, Lcom/questvisual/wordlens/bg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1449
    const-string v0, "QV"

    const-string v1, "How did camera controller stop!? Can\'t save compensation value!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/bg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const-string v1, "word.lens"

    invoke-virtual {v0, v1, v4}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1455
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key.camera.orientation.compensation.v2"

    iget-object v3, p0, Lcom/questvisual/wordlens/bg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v3}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/questvisual/wordlens/a/b;->a()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1458
    iget-object v1, p0, Lcom/questvisual/wordlens/bg;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget-object v2, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    invoke-static {v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ci;)V

    .line 1461
    const-string v1, "key.camera.orientation.compensation.v2"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1462
    if-eqz v0, :cond_0

    .line 1463
    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(I)V

    goto :goto_0
.end method
