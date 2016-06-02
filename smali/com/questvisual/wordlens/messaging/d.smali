.class public Lcom/questvisual/wordlens/messaging/d;
.super Lcom/questvisual/wordlens/messaging/a;
.source "SourceFile"


# instance fields
.field private b:F


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/messaging/g;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;[B)V

    .line 11
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/questvisual/wordlens/messaging/d;->b:F

    .line 15
    return-void
.end method


# virtual methods
.method public c()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 18
    iget v1, p0, Lcom/questvisual/wordlens/messaging/d;->b:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/d;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/questvisual/util/b;->a([BI)I

    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 23
    iput v1, p0, Lcom/questvisual/wordlens/messaging/d;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    iget v1, p0, Lcom/questvisual/wordlens/messaging/d;->b:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse confidence from payload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/d;->b()[B

    move-result-object v4

    invoke-static {v4}, Lcom/questvisual/util/b;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :cond_1
    iget v0, p0, Lcom/questvisual/wordlens/messaging/d;->b:F

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/d;->c()F

    move-result v0

    const v1, 0x3efae148

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
