.class final Lcom/b/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/b/a/ah;

.field final synthetic d:Lcom/b/a/aj;


# direct methods
.method constructor <init>(Lcom/b/a/aj;Ljava/lang/String;Landroid/content/Context;Lcom/b/a/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/b/a/r;->d:Lcom/b/a/aj;

    iput-object p2, p0, Lcom/b/a/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/r;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/b/a/r;->c:Lcom/b/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/b/a/r;->d:Lcom/b/a/aj;

    iget-object v1, p0, Lcom/b/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/b/a/ae;

    invoke-direct {v2, p0, v0}, Lcom/b/a/ae;-><init>(Lcom/b/a/r;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method
