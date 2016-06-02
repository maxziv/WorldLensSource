.class final Lcom/b/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/b/a/r;


# direct methods
.method constructor <init>(Lcom/b/a/r;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iput-object p2, p0, Lcom/b/a/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 330
    iget-object v0, p0, Lcom/b/a/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iget-object v0, v0, Lcom/b/a/r;->d:Lcom/b/a/aj;

    iget-object v1, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iget-object v1, v1, Lcom/b/a/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/b/a/ae;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iget-object v0, v0, Lcom/b/a/r;->c:Lcom/b/a/ah;

    new-instance v1, Lcom/b/a/x;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iget-object v3, v3, Lcom/b/a/r;->d:Lcom/b/a/aj;

    invoke-virtual {v3}, Lcom/b/a/aj;->g()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/b/a/x;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/b/a/ah;->a(Lcom/b/a/x;)V

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch in app market: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iget-object v1, v1, Lcom/b/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    sget-object v1, Lcom/b/a/aj;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/b/a/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/b/a/ae;->b:Lcom/b/a/r;

    iget-object v1, v1, Lcom/b/a/r;->d:Lcom/b/a/aj;

    invoke-static {v1, v0}, Lcom/b/a/aj;->b(Lcom/b/a/aj;Ljava/lang/String;)V

    goto :goto_0
.end method
