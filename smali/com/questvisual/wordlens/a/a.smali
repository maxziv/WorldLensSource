.class public Lcom/questvisual/wordlens/a/a;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private a:Z

.field private b:Lcom/questvisual/wordlens/a/b;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/a/b;)V
    .locals 7
    .parameter

    .prologue
    const/16 v0, 0x1388

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    iput-boolean v6, p0, Lcom/questvisual/wordlens/a/a;->a:Z

    .line 38
    iput-boolean v5, p0, Lcom/questvisual/wordlens/a/a;->f:Z

    .line 39
    iput v5, p0, Lcom/questvisual/wordlens/a/a;->g:I

    .line 43
    iput v0, p0, Lcom/questvisual/wordlens/a/a;->h:I

    .line 44
    iput v0, p0, Lcom/questvisual/wordlens/a/a;->i:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/questvisual/wordlens/a/a;->j:J

    .line 147
    iput-boolean v5, p0, Lcom/questvisual/wordlens/a/a;->k:Z

    .line 261
    iput-boolean v6, p0, Lcom/questvisual/wordlens/a/a;->l:Z

    .line 262
    iput-boolean v5, p0, Lcom/questvisual/wordlens/a/a;->m:Z

    .line 49
    iput-object p1, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    .line 51
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->d()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_7

    .line 57
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_6

    .line 60
    const-string v0, "camera focus modes = ( "

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "QV"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 74
    const-string v0, "continuous-picture"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->c:Z

    .line 78
    :goto_1
    const-string v0, "auto"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->d:Z

    .line 79
    const-string v0, "infinity"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    const-string v1, "fixed"

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 82
    iget-boolean v2, p0, Lcom/questvisual/wordlens/a/a;->c:Z

    if-eqz v2, :cond_2

    .line 83
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v6}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    .line 116
    :goto_2
    return-void

    .line 61
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 76
    :cond_1
    iput-boolean v5, p0, Lcom/questvisual/wordlens/a/a;->c:Z

    goto :goto_1

    .line 87
    :cond_2
    iget-boolean v2, p0, Lcom/questvisual/wordlens/a/a;->d:Z

    if-eqz v2, :cond_3

    .line 88
    const-string v0, "auto"

    iput-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v6}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    goto :goto_2

    .line 90
    :cond_3
    if-eqz v0, :cond_4

    .line 91
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    .line 93
    const-string v0, "QV"

    const-string v1, "AF handler not needed for infinity."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :cond_4
    if-eqz v1, :cond_5

    .line 95
    const-string v0, "fixed"

    iput-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    .line 97
    const-string v0, "QV"

    const-string v1, "AF handler not needed for fixed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 99
    :cond_5
    const-string v0, "QV"

    const-string v1, "Word Lens unable to determine preferred focus mode. AF Handler thread will not run."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    goto :goto_2

    .line 105
    :cond_6
    const-string v0, "ERROR_WL_BUG"

    const-string v1, "Encountered device without focus modes?"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    goto :goto_2

    .line 112
    :cond_7
    const-string v0, "ERROR_WL_BUG"

    const-string v1, "AutoFocusHandler unable to initialize camera capabilites."

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/a/a;->b(Z)V

    goto :goto_2
.end method

.method private b()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->d:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/a/a;->a(Z)V

    .line 138
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Autofocus Failed? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 265
    iput-boolean v2, p0, Lcom/questvisual/wordlens/a/a;->l:Z

    .line 266
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->f:Z

    if-nez v0, :cond_0

    .line 267
    iget v0, p0, Lcom/questvisual/wordlens/a/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/questvisual/wordlens/a/a;->g:I

    .line 268
    iget v0, p0, Lcom/questvisual/wordlens/a/a;->g:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 269
    const-string v0, "QV"

    const-string v1, "User tapped screen many times. Giving up on continuous AF..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-boolean v2, p0, Lcom/questvisual/wordlens/a/a;->f:Z

    .line 273
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/a/a;->a(Z)V

    .line 274
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/questvisual/wordlens/a/a;->k:Z

    .line 154
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->k:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/questvisual/wordlens/a/a;->interrupt()V

    .line 157
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/questvisual/wordlens/a/a;->a:Z

    .line 305
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/a/a;->a(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 281
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/questvisual/wordlens/a/a;->j:J

    .line 283
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->a:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 284
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->f:Z

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    const-string v1, "continuous-video"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    const-string v1, "continuous-picture"

    if-ne v0, v1, :cond_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    iget-object v1, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/b;->a(Ljava/lang/String;)V

    .line 297
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/a/a;->a(Z)V

    .line 298
    return-void

    .line 281
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 162
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 163
    const-string v0, "AutoFocusHandler"

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/a/a;->setName(Ljava/lang/String;)V

    .line 166
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FocusHandler starting. Setting init focus mode to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    iget-object v1, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/b;->a(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->a:Z

    if-nez v0, :cond_2

    .line 259
    :cond_1
    return-void

    .line 171
    :cond_2
    monitor-enter p0

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->k:Z

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 187
    iget-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->k:Z

    if-nez v0, :cond_0

    .line 205
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 207
    iget-object v2, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/a/b;->h()Ljava/lang/String;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_0

    .line 215
    iget-boolean v3, p0, Lcom/questvisual/wordlens/a/a;->l:Z

    if-eqz v3, :cond_5

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->l:Z

    .line 220
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/a;->b()V

    .line 253
    :cond_3
    :goto_2
    invoke-static {}, Lcom/questvisual/wordlens/a/a;->yield()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "ERROR_WL_BUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to perform autofocus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_4
    const-wide/16 v0, 0x1f4

    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 221
    :cond_5
    :try_start_5
    iget-boolean v3, p0, Lcom/questvisual/wordlens/a/a;->m:Z

    if-eqz v3, :cond_6

    .line 222
    const-string v0, "QV"

    const-string v1, "Performing requested cancel AF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->c()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/a;->m:Z

    goto :goto_2

    .line 225
    :cond_6
    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 226
    iget-wide v2, p0, Lcom/questvisual/wordlens/a/a;->j:J

    sub-long/2addr v0, v2

    .line 228
    iget v2, p0, Lcom/questvisual/wordlens/a/a;->i:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lcom/questvisual/wordlens/a/a;->f:Z

    if-nez v2, :cond_7

    .line 229
    iget-boolean v2, p0, Lcom/questvisual/wordlens/a/a;->c:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/questvisual/wordlens/a/a;->e:Ljava/lang/String;

    const-string v3, "continuous-picture"

    if-ne v2, v3, :cond_7

    .line 234
    iget-object v0, p0, Lcom/questvisual/wordlens/a/a;->b:Lcom/questvisual/wordlens/a/b;

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 235
    :cond_7
    iget v2, p0, Lcom/questvisual/wordlens/a/a;->h:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/questvisual/wordlens/a/a;->b()V

    goto :goto_2

    .line 242
    :cond_8
    const-string v0, "continuous-video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "continuous-picture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled focus mode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method
