.class final Lcom/b/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/b/a/t;


# direct methods
.method constructor <init>(Lcom/b/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/b/a/ad;->a:Lcom/b/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/b/a/ad;->a:Lcom/b/a/t;

    iget-object v0, v0, Lcom/b/a/t;->b:Lcom/b/a/f;

    iget-object v1, p0, Lcom/b/a/ad;->a:Lcom/b/a/t;

    iget-object v1, v1, Lcom/b/a/t;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/b/a/f;->b(Lcom/b/a/f;Landroid/content/Context;)V

    .line 1234
    return-void
.end method
