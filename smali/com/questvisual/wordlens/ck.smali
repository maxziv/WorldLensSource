.class Lcom/questvisual/wordlens/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensSystem;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/ck;->a:Lcom/questvisual/wordlens/WordLensSystem;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/questvisual/wordlens/ck;->a:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensSystem;->c(Lcom/questvisual/wordlens/WordLensSystem;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/ck;->a:Lcom/questvisual/wordlens/WordLensSystem;

    iget-object v2, p0, Lcom/questvisual/wordlens/ck;->a:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-static {v2}, Lcom/questvisual/wordlens/WordLensSystem;->d(Lcom/questvisual/wordlens/WordLensSystem;)Lcom/questvisual/wordlens/NativeBitmapInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/questvisual/wordlens/WordLensSystem;->a(Lcom/questvisual/wordlens/WordLensSystem;Lcom/questvisual/wordlens/NativeBitmapInfo;)V

    .line 309
    iget-object v0, p0, Lcom/questvisual/wordlens/ck;->a:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensSystem;->c(Lcom/questvisual/wordlens/WordLensSystem;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit v1

    .line 311
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
