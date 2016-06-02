.class public Lcom/questvisual/wordlens/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/questvisual/wordlens/e/a;->b()Ljava/util/Map;

    move-result-object v0

    .line 111
    const-string v1, "DEVICE_HIGH_RES_CANDIDATE"

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 3
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "rotation_compensation_mapping"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "CAMERA_ROTATION_COMPENSATION_NEEDED"

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const-string v0, "QV"

    const-string v1, "FlurryHelper.onEndSession called with null context?"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/f;->b(Z)V

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/b/a/f;->c(Z)V

    .line 37
    sget v0, Lcom/questvisual/wordlens/at;->flurry_key:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/b/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    if-eqz p0, :cond_1

    .line 94
    const-string v0, "key.camera.orientation.compensation.v2"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(I)V

    .line 100
    :cond_0
    const-string v0, "key.device.is.high.res.capable"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/questvisual/wordlens/e/a;->a()V

    .line 105
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/b/a/f;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0, p1}, Lcom/b/a/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Lcom/b/a/f;->a(Ljava/lang/String;Z)V

    .line 65
    :cond_0
    return-void
.end method

.method private static b()Ljava/util/Map;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v1, "build.product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "build.device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "build.board"

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "build.model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "build.manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "build.id"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v0, "QV"

    const-string v1, "FlurryHelper.onEndSession called with null context?"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/b/a/f;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/b/a/f;->b(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 133
    const-string v0, "word.lens"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    const-string v1, "key.camera.orientation.compensation.v2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(I)V

    .line 140
    :cond_0
    return-void
.end method
