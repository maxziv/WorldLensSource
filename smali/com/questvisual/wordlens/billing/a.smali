.class public Lcom/questvisual/wordlens/billing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/questvisual/wordlens/billing/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/questvisual/wordlens/billing/i;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    return-object v0
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    invoke-virtual {v0, p0, p1}, Lcom/questvisual/wordlens/billing/i;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    invoke-virtual {v0, p1, p2}, Lcom/questvisual/wordlens/billing/i;->a(Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V

    .line 168
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/h;Lcom/questvisual/wordlens/billing/l;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    invoke-virtual {v0, p1, p2}, Lcom/questvisual/wordlens/billing/i;->a(Lcom/questvisual/wordlens/billing/h;Lcom/questvisual/wordlens/billing/l;)V

    .line 184
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/k;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/questvisual/wordlens/billing/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/questvisual/wordlens/billing/b;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/billing/k;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public static declared-synchronized a(Lcom/questvisual/wordlens/billing/i;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/questvisual/wordlens/billing/a;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 61
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;

    invoke-virtual {v0, p0}, Lcom/questvisual/wordlens/billing/i;->a(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Lcom/questvisual/wordlens/billing/i;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/questvisual/wordlens/billing/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/questvisual/wordlens/billing/a;->a:Lcom/questvisual/wordlens/billing/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
