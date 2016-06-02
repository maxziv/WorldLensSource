.class Lcom/questvisual/wordlens/bi;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bi;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/questvisual/wordlens/bi;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1489
    const-string v0, "QV"

    const-string v1, "How did camera controller stop!? Can\'t increment compensation value!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/bi;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->a()I

    move-result v0

    .line 1493
    add-int/lit8 v1, v0, 0x5a

    .line 1494
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "compensation: compValue="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", newValue="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v0, p0, Lcom/questvisual/wordlens/bi;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/b;->a(I)V

    goto :goto_0
.end method
