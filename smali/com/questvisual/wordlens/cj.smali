.class Lcom/questvisual/wordlens/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensSystem;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/cj;->a:Lcom/questvisual/wordlens/WordLensSystem;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 101
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    monitor-exit v1

    .line 108
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cj;->a:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensSystem;->a(Lcom/questvisual/wordlens/WordLensSystem;)V

    .line 105
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
