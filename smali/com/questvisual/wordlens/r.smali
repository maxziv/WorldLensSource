.class public Lcom/questvisual/wordlens/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/a/h;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/questvisual/wordlens/r;->a:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/questvisual/wordlens/r;->b:Landroid/content/SharedPreferences;

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/questvisual/wordlens/r;->c:I

    .line 16
    iput v2, p0, Lcom/questvisual/wordlens/r;->d:I

    .line 19
    iput-object p1, p0, Lcom/questvisual/wordlens/r;->a:Landroid/content/Context;

    .line 20
    iget-object v0, p0, Lcom/questvisual/wordlens/r;->a:Landroid/content/Context;

    const-string v1, "word.lens"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/r;->b:Landroid/content/SharedPreferences;

    .line 21
    iget-object v0, p0, Lcom/questvisual/wordlens/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/ap;->high_res_interval_count_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/questvisual/wordlens/r;->c:I

    .line 22
    iput v2, p0, Lcom/questvisual/wordlens/r;->d:I

    .line 23
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 28
    const/high16 v0, 0x4000

    mul-float/2addr v0, p2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 29
    iget v0, p0, Lcom/questvisual/wordlens/r;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/questvisual/wordlens/r;->d:I

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/r;->b:Landroid/content/SharedPreferences;

    const-string v1, "key.device.is.high.res.capable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    if-nez v0, :cond_0

    iget v0, p0, Lcom/questvisual/wordlens/r;->d:I

    iget v1, p0, Lcom/questvisual/wordlens/r;->c:I

    if-le v0, v1, :cond_0

    .line 38
    const-string v0, "QV"

    const-string v1, "FPS limiter has consistently dropped frames. Device is likely high-res capable."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/questvisual/wordlens/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.device.is.high.res.capable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    invoke-static {}, Lcom/questvisual/wordlens/e/a;->a()V

    .line 42
    :cond_0
    return-void

    .line 31
    :cond_1
    iput v2, p0, Lcom/questvisual/wordlens/r;->d:I

    goto :goto_0
.end method
