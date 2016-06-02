.class final Lcom/b/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/b/a/f;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/b/a/f;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/b/a/t;->b:Lcom/b/a/f;

    iput-boolean p2, p0, Lcom/b/a/t;->c:Z

    iput-object p3, p0, Lcom/b/a/t;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/b/a/t;->b:Lcom/b/a/f;

    invoke-static {v0}, Lcom/b/a/f;->b(Lcom/b/a/f;)V

    .line 1225
    iget-object v0, p0, Lcom/b/a/t;->b:Lcom/b/a/f;

    invoke-static {v0}, Lcom/b/a/f;->c(Lcom/b/a/f;)V

    .line 1226
    iget-boolean v0, p0, Lcom/b/a/t;->c:Z

    if-nez v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/b/a/t;->b:Lcom/b/a/f;

    invoke-static {v0}, Lcom/b/a/f;->d(Lcom/b/a/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/b/a/ad;

    invoke-direct {v1, p0}, Lcom/b/a/ad;-><init>(Lcom/b/a/t;)V

    invoke-static {}, Lcom/b/a/f;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1238
    :cond_0
    invoke-static {}, Lcom/b/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/b/a/t;->b:Lcom/b/a/f;

    invoke-static {v0}, Lcom/b/a/f;->e(Lcom/b/a/f;)Lcom/b/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aj;->c()V

    .line 1242
    :cond_1
    return-void
.end method
