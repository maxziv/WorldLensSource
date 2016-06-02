.class Lcom/questvisual/wordlens/cl;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/cl;->a:Lcom/questvisual/wordlens/WordLensSystem;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 550
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cl;->a:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensSystem;->a(Lcom/questvisual/wordlens/WordLensSystem;)V

    .line 550
    monitor-exit v1

    .line 553
    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
