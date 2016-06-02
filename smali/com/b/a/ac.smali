.class final Lcom/b/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/b/a/n;


# direct methods
.method constructor <init>(Lcom/b/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/b/a/ac;->a:Lcom/b/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/b/a/ac;->a:Lcom/b/a/n;

    invoke-static {v0}, Lcom/b/a/n;->a(Lcom/b/a/n;)V

    .line 32
    return-void
.end method
