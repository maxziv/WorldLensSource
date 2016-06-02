.class final Lcom/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/b/a/aj;


# direct methods
.method constructor <init>(Lcom/b/a/aj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/b/a/k;->b:Lcom/b/a/aj;

    iput p2, p0, Lcom/b/a/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 837
    new-instance v0, Lcom/b/a/d;

    iget v1, p0, Lcom/b/a/k;->a:I

    invoke-direct {v0, v1}, Lcom/b/a/d;-><init>(I)V

    .line 838
    iget-object v1, p0, Lcom/b/a/k;->b:Lcom/b/a/aj;

    invoke-static {v1}, Lcom/b/a/aj;->a(Lcom/b/a/aj;)Lcom/b/a/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/b/a/c;->b(Lcom/b/a/d;)V

    .line 839
    return-void
.end method
