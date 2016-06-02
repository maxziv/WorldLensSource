.class Lcom/questvisual/wordlens/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/s;


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/s;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/questvisual/wordlens/u;->a:Lcom/questvisual/wordlens/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/s;Lcom/questvisual/wordlens/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/u;-><init>(Lcom/questvisual/wordlens/s;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/questvisual/wordlens/u;->a:Lcom/questvisual/wordlens/s;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/s;->j()Landroid/support/v4/app/i;

    move-result-object v0

    .line 176
    const-string v1, "word.lens"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    const-string v1, "key.camera.orientation.compensation.v2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    iget-object v0, p0, Lcom/questvisual/wordlens/u;->a:Lcom/questvisual/wordlens/s;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/s;->a()V

    .line 185
    return-void
.end method
