.class public Lcom/questvisual/wordlens/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private a:Lcom/questvisual/wordlens/a/i;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:[[B

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcom/questvisual/wordlens/a/h;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/questvisual/wordlens/a/g;->c:I

    .line 61
    iput v2, p0, Lcom/questvisual/wordlens/a/g;->d:I

    .line 62
    iput v2, p0, Lcom/questvisual/wordlens/a/g;->e:I

    .line 64
    iput-wide v3, p0, Lcom/questvisual/wordlens/a/g;->g:J

    .line 208
    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->h:J

    .line 212
    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->i:J

    .line 216
    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->j:J

    .line 221
    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->k:J

    .line 223
    iput-object v5, p0, Lcom/questvisual/wordlens/a/g;->l:Lcom/questvisual/wordlens/a/h;

    .line 348
    iput-boolean v2, p0, Lcom/questvisual/wordlens/a/g;->m:Z

    .line 67
    iput-object v5, p0, Lcom/questvisual/wordlens/a/g;->a:Lcom/questvisual/wordlens/a/i;

    .line 68
    iput-object p1, p0, Lcom/questvisual/wordlens/a/g;->b:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v0

    iget-object v0, v0, Lcom/questvisual/wordlens/WordLensSystem;->mDefaultSharedPrefs:Landroid/content/SharedPreferences;

    sget v1, Lcom/questvisual/wordlens/at;->KEY_DEV_SHOW_FPS_STATS:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iput-wide v3, p0, Lcom/questvisual/wordlens/a/g;->g:J

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v0

    const-string v1, "app.maximum.fps"

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/WordLensSystem;->a(Ljava/lang/String;)I

    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 79
    iput-wide v3, p0, Lcom/questvisual/wordlens/a/g;->g:J

    goto :goto_0

    .line 81
    :cond_1
    const/16 v1, 0x3e8

    div-int v0, v1, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->g:J

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)I
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0x11

    const/16 v2, 0x10

    .line 122
    const/4 v0, -0x1

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :goto_1
    return v1

    .line 124
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 130
    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/g;->f:[[B

    .line 190
    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/questvisual/wordlens/a/g;->a:Lcom/questvisual/wordlens/a/i;

    if-eqz v1, :cond_1

    .line 104
    iget v1, p0, Lcom/questvisual/wordlens/a/g;->c:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    .line 105
    iget v1, p0, Lcom/questvisual/wordlens/a/g;->d:I

    mul-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/questvisual/wordlens/a/g;->e:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/questvisual/wordlens/a/g;->d:I

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/questvisual/wordlens/a/g;->e:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x80

    .line 107
    :goto_0
    if-lez v1, :cond_0

    .line 109
    const/4 v2, 0x2

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/questvisual/wordlens/a/g;->f:[[B

    .line 110
    :goto_1
    if-lt v0, v4, :cond_2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/g;->a:Lcom/questvisual/wordlens/a/i;

    iget v1, p0, Lcom/questvisual/wordlens/a/g;->c:I

    iget v2, p0, Lcom/questvisual/wordlens/a/g;->d:I

    iget v3, p0, Lcom/questvisual/wordlens/a/g;->e:I

    invoke-interface {v0, v1, v2, v3}, Lcom/questvisual/wordlens/a/i;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    .line 111
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/questvisual/wordlens/a/g;->f:[[B

    new-array v3, v1, [B

    aput-object v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/questvisual/wordlens/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/questvisual/wordlens/a/e;->d()V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/g;->b()V

    .line 182
    return-void
.end method

.method protected declared-synchronized a(Lcom/questvisual/wordlens/a/e;Lcom/questvisual/wordlens/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/questvisual/wordlens/a/e;->f()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    iput v1, p0, Lcom/questvisual/wordlens/a/g;->c:I

    .line 154
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 155
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/questvisual/wordlens/a/g;->d:I

    .line 156
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/questvisual/wordlens/a/g;->e:I

    .line 159
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/g;->a()V

    .line 160
    invoke-virtual {p1, p0}, Lcom/questvisual/wordlens/a/e;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 161
    iget-object v0, p0, Lcom/questvisual/wordlens/a/g;->f:[[B

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/questvisual/wordlens/a/g;->f:[[B

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    aget-object v3, v1, v0

    .line 163
    invoke-virtual {p1, v3}, Lcom/questvisual/wordlens/a/e;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/questvisual/wordlens/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/questvisual/wordlens/a/g;->l:Lcom/questvisual/wordlens/a/h;

    .line 227
    return-void
.end method

.method public declared-synchronized a(Lcom/questvisual/wordlens/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/questvisual/wordlens/a/g;->a:Lcom/questvisual/wordlens/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x1

    const/high16 v5, 0x447a

    .line 240
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/questvisual/wordlens/a/g;->h:J

    sub-long/2addr v0, v2

    .line 241
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 242
    iget-wide v2, p0, Lcom/questvisual/wordlens/a/g;->i:J

    long-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    .line 243
    iget-wide v3, p0, Lcom/questvisual/wordlens/a/g;->j:J

    long-to-float v3, v3

    long-to-float v0, v0

    div-float v0, v3, v0

    mul-float/2addr v0, v5

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/questvisual/wordlens/a/g;->h:J

    .line 248
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/questvisual/wordlens/a/g;->i:J

    .line 249
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/questvisual/wordlens/a/g;->j:J

    .line 252
    iget-object v1, p0, Lcom/questvisual/wordlens/a/g;->l:Lcom/questvisual/wordlens/a/h;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/questvisual/wordlens/a/g;->l:Lcom/questvisual/wordlens/a/h;

    invoke-interface {v1, v2, v0}, Lcom/questvisual/wordlens/a/h;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    .line 346
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 257
    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/questvisual/wordlens/a/g;->i:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/questvisual/wordlens/a/g;->a:Lcom/questvisual/wordlens/a/i;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 328
    iget-wide v2, p0, Lcom/questvisual/wordlens/a/g;->k:J

    sub-long v2, v0, v2

    .line 329
    iget-wide v4, p0, Lcom/questvisual/wordlens/a/g;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/questvisual/wordlens/a/g;->g:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 333
    :cond_4
    iget-object v2, p0, Lcom/questvisual/wordlens/a/g;->a:Lcom/questvisual/wordlens/a/i;

    invoke-interface {v2, p1}, Lcom/questvisual/wordlens/a/i;->a([B)V

    .line 334
    iget-wide v2, p0, Lcom/questvisual/wordlens/a/g;->j:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/questvisual/wordlens/a/g;->j:J

    .line 335
    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->k:J

    .line 342
    :cond_5
    :goto_2
    if-eqz p2, :cond_1

    .line 344
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_1

    .line 339
    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/questvisual/wordlens/a/g;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
