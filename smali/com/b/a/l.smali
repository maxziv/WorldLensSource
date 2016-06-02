.class final Lcom/b/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/b/a/aj;


# direct methods
.method constructor <init>(Lcom/b/a/aj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/b/a/l;->b:Lcom/b/a/aj;

    iput-object p2, p0, Lcom/b/a/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Lcom/b/a/d;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/b/a/d;-><init>(I)V

    .line 404
    iget-object v1, p0, Lcom/b/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/b/a/l;->b:Lcom/b/a/aj;

    invoke-static {v1}, Lcom/b/a/aj;->a(Lcom/b/a/aj;)Lcom/b/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/b/a/l;->b:Lcom/b/a/aj;

    invoke-static {v1}, Lcom/b/a/aj;->a(Lcom/b/a/aj;)Lcom/b/a/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/b/a/c;->a(Lcom/b/a/d;)V

    .line 409
    :cond_0
    return-void
.end method
