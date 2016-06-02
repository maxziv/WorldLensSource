.class final Lcom/b/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Z

.field private synthetic c:Lcom/b/a/f;


# direct methods
.method constructor <init>(Lcom/b/a/f;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/b/a/v;->c:Lcom/b/a/f;

    iput-object p2, p0, Lcom/b/a/v;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/b/a/v;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/b/a/v;->c:Lcom/b/a/f;

    invoke-static {v0}, Lcom/b/a/f;->a(Lcom/b/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/b/a/v;->c:Lcom/b/a/f;

    iget-object v1, p0, Lcom/b/a/v;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/b/a/f;->a(Lcom/b/a/f;Landroid/content/Context;)V

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/b/a/v;->c:Lcom/b/a/f;

    iget-object v1, p0, Lcom/b/a/v;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/b/a/v;->b:Z

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->a(Lcom/b/a/f;Landroid/content/Context;Z)V

    .line 1155
    return-void
.end method
