.class public Lcom/questvisual/wordlens/WordLensSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Z

.field private static i:Z

.field private static final j:Ljava/lang/Object;

.field private static sys:Lcom/questvisual/wordlens/WordLensSystem;


# instance fields
.field private a:Landroid/opengl/GLSurfaceView;

.field public assetManagers:[Landroid/content/res/AssetManager;

.field private b:Lcom/questvisual/wordlens/cm;

.field private c:Landroid/os/Handler$Callback;

.field private e:Lcom/questvisual/wordlens/d/f;

.field private f:Landroid/content/Context;

.field private g:Lcom/questvisual/wordlens/NativeBitmapInfo;

.field private h:Ljava/lang/Object;

.field private k:Z

.field public mDefaultSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    sput-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    .line 123
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->k()V

    .line 360
    sput-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->i:Z

    .line 482
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/WordLensSystem;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/questvisual/wordlens/cj;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/cj;-><init>(Lcom/questvisual/wordlens/WordLensSystem;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->c:Landroid/os/Handler$Callback;

    .line 247
    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    .line 248
    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->f:Landroid/content/Context;

    .line 293
    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->g:Lcom/questvisual/wordlens/NativeBitmapInfo;

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->h:Ljava/lang/Object;

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->k:Z

    .line 368
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensSystem;->b(Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method private static native CheckCPUHasNeonNative()Z
.end method

.method private native InitNative()V
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 342
    if-eqz p1, :cond_3

    .line 343
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 344
    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->i:Z

    .line 358
    :goto_1
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->i:Z

    goto :goto_1

    .line 353
    :cond_2
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->i:Z

    goto :goto_1

    .line 356
    :cond_3
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->i:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensSystem;->updateActionQueuesNative()V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensSystem;Lcom/questvisual/wordlens/NativeBitmapInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensSystem;->g:Lcom/questvisual/wordlens/NativeBitmapInfo;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    .line 187
    sget-object v2, Lcom/questvisual/wordlens/WordLensSystem;->sys:Lcom/questvisual/wordlens/WordLensSystem;

    if-nez v2, :cond_2

    .line 189
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 190
    :try_start_0
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->k()V

    .line 192
    new-instance v2, Lcom/questvisual/wordlens/WordLensSystem;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/WordLensSystem;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/questvisual/wordlens/WordLensSystem;->sys:Lcom/questvisual/wordlens/WordLensSystem;

    .line 194
    sget-object v2, Lcom/questvisual/wordlens/WordLensSystem;->sys:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/WordLensSystem;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 199
    const-string v4, "QV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Word Lens Build number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/questvisual/wordlens/NativeLangMan;->a(Landroid/content/Context;)V

    .line 209
    invoke-static {}, Lcom/questvisual/wordlens/messaging/MessageManager;->a()V

    .line 189
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    const-string v2, "word.lens"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 216
    const-string v3, "key.user.approve.flurry"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 217
    const-string v4, "key.user.prompted.flurry"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 219
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 221
    const-string v4, "key.init.count"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 223
    if-ne v0, v4, :cond_1

    .line 225
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "key.user.should.prompt.flurry"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    :cond_0
    :goto_1
    invoke-static {p0, v3}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/content/Context;Z)V

    .line 238
    :goto_2
    invoke-static {v1}, Lcom/b/a/f;->a(Z)V

    .line 241
    invoke-static {v1}, Lcom/b/a/f;->c(Z)V

    .line 244
    return v0

    .line 200
    :catch_0
    move-exception v2

    .line 201
    :try_start_3
    const-string v4, "QV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to extract Word Lens build number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 227
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "key.init.count"

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 234
    goto :goto_2
.end method

.method static synthetic b(Lcom/questvisual/wordlens/WordLensSystem;)Landroid/os/Handler$Callback;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->c:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensSystem;->f:Landroid/content/Context;

    .line 258
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 260
    sget v1, Lcom/questvisual/wordlens/aq;->snapshot_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/questvisual/wordlens/d/f;

    sget v2, Lcom/questvisual/wordlens/ao;->snapshot_header_text:I

    invoke-direct {v1, v0, v2}, Lcom/questvisual/wordlens/d/f;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    .line 263
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/questvisual/wordlens/WordLensSystem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 419
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->assetManagers:[Landroid/content/res/AssetManager;

    .line 420
    :goto_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->assetManagers:[Landroid/content/res/AssetManager;

    array-length v0, v0

    if-lt v1, v0, :cond_4

    .line 437
    new-instance v0, Lcom/questvisual/wordlens/cm;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/cm;-><init>(Lcom/questvisual/wordlens/WordLensSystem;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->b:Lcom/questvisual/wordlens/cm;

    .line 438
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->b:Lcom/questvisual/wordlens/cm;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cm;->start()V

    .line 441
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->mDefaultSharedPrefs:Landroid/content/SharedPreferences;

    .line 444
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 445
    const-string v0, "QV"

    const-string v1, "WordLensSystem init not called from UI Thread. Weirdness may occur."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 449
    :try_start_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensSystem;->InitNative()V

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    return-void

    .line 399
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 400
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 401
    const-string v5, "com.questvisual.wordlens"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 402
    const-string v5, "QV"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found match: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 412
    :catch_0
    move-exception v2

    .line 413
    const-string v5, "QV"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Warning. Retrieved package name ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") from package manager, but then it was not found: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensSystem;->assetManagers:[Landroid/content/res/AssetManager;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    aput-object v0, v2, v1

    .line 420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 448
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/WordLensSystem;)Lcom/questvisual/wordlens/NativeBitmapInfo;
    .locals 1
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensSystem;->wlSnapShareRenderImageNative()Lcom/questvisual/wordlens/NativeBitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 363
    sget-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->i:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->CheckCPUHasNeonNative()Z

    move-result v0

    return v0
.end method

.method public static f()Lcom/questvisual/wordlens/WordLensSystem;
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcom/questvisual/wordlens/WordLensSystem;->sys:Lcom/questvisual/wordlens/WordLensSystem;

    if-nez v0, :cond_0

    .line 380
    const-string v0, "WordLens"

    const-string v1, "Call WordLensSystem.init before doing stuff!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call WordLensSystem.init() before attempting to use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/WordLensSystem;->sys:Lcom/questvisual/wordlens/WordLensSystem;

    return-object v0
.end method

.method public static g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/questvisual/wordlens/WordLensSystem;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private native getAppPropsIntForKeyNative(Ljava/lang/String;)I
.end method

.method private static k()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "v7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v3, "v7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    :cond_0
    const-string v2, "QV"

    const-string v3, "Compatibility check: ARMv7a found. Checking for "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    const-string v2, "wordlens-detector"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    .line 145
    :try_start_1
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    const-string v0, "QV"

    const-string v2, "This device does not support NEON extensions. Loading non-NEON WordLens..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "wordlens-slow"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->d:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native library wordlens-detector. Cannot continue! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    move v0, v1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native library wordlens-detector. Cannot continue! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    move v0, v1

    goto :goto_0

    .line 152
    :cond_2
    :try_start_2
    const-string v0, "QV"

    const-string v2, "Compatibility check: NEON extensions found. Loading NEON-enabled WordLens..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "wordlens-neon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->d:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native library wordlens. Cannot continue! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    goto :goto_1

    .line 159
    :catch_3
    move-exception v0

    .line 160
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native library wordlens. Cannot continue! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    goto/16 :goto_1

    .line 164
    :cond_3
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    :cond_4
    const-string v0, "QV"

    const-string v2, "Compatibility check: x86 found."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_3
    const-string v0, "wordlens-slow"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/questvisual/wordlens/WordLensSystem;->d:Z
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 170
    :catch_4
    move-exception v0

    .line 171
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native library wordlens for x86. Cannot continue! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    goto/16 :goto_1

    .line 173
    :catch_5
    move-exception v0

    .line 174
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native library wordlens for x86. Cannot continue! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    goto/16 :goto_1

    .line 179
    :cond_5
    const-string v0, "QV"

    const-string v2, "Compatibility check: No supported CPU found."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sput-boolean v1, Lcom/questvisual/wordlens/WordLensSystem;->d:Z

    goto/16 :goto_1
.end method

.method private native onMagicAppletPauseNative()V
.end method

.method private native setAutoZoomDimsNative(II)V
.end method

.method private native updateActionQueuesNative()V
.end method

.method private native wlSnapShareRenderImageNative()Lcom/questvisual/wordlens/NativeBitmapInfo;
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensSystem;->getAppPropsIntForKeyNative(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->b:Lcom/questvisual/wordlens/cm;

    invoke-static {v0}, Lcom/questvisual/wordlens/cm;->a(Lcom/questvisual/wordlens/cm;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 463
    div-int/lit8 v0, p1, 0x20

    mul-int/lit8 v0, v0, 0x20

    .line 464
    div-int/lit8 v1, p2, 0x20

    mul-int/lit8 v1, v1, 0x20

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/questvisual/wordlens/WordLensSystem;->setAutoZoomDimsNative(II)V

    .line 466
    return-void
.end method

.method public a(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensSystem;->a:Landroid/opengl/GLSurfaceView;

    .line 459
    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->a:Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_1

    .line 299
    const-string v1, "QV"

    const-string v2, "Uh oh! Need to get at GL thread so we have GL context to render with... why is renderView null?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensSystem;->a:Landroid/opengl/GLSurfaceView;

    new-instance v3, Lcom/questvisual/wordlens/ck;

    invoke-direct {v3, p0}, Lcom/questvisual/wordlens/ck;-><init>(Lcom/questvisual/wordlens/WordLensSystem;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensSystem;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->g:Lcom/questvisual/wordlens/NativeBitmapInfo;

    if-eqz v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->g:Lcom/questvisual/wordlens/NativeBitmapInfo;

    iget v0, v0, Lcom/questvisual/wordlens/NativeBitmapInfo;->width:I

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->g:Lcom/questvisual/wordlens/NativeBitmapInfo;

    iget v1, v1, Lcom/questvisual/wordlens/NativeBitmapInfo;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensSystem;->g:Lcom/questvisual/wordlens/NativeBitmapInfo;

    iget-object v1, v1, Lcom/questvisual/wordlens/NativeBitmapInfo;->rawData:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 315
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public drawTextToImage(Ljava/lang/String;[IIILjava/lang/String;)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawTextToImage: fontName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", argb=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alignment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    invoke-static {p4}, Lcom/questvisual/wordlens/ah;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/f;->c(I)V

    .line 272
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v0, p3}, Lcom/questvisual/wordlens/d/f;->b(I)V

    .line 273
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/d/f;->a(II)V

    .line 274
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v0, p5}, Lcom/questvisual/wordlens/d/f;->a(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->e:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/f;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 281
    new-array v0, v0, [B

    .line 282
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 284
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-object v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    const-string v1, "QV"

    const-string v2, "Exception rendering text to image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguageNameUTF8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 488
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 489
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v1, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getLatestOCRNuggets()[B
.end method

.method public native getLatestOCRWords()[B
.end method

.method public getLocalizedStringUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    const-string v0, ""

    .line 508
    :goto_0
    return-object v0

    .line 502
    :cond_0
    const-string v0, "Lang.Demo.EraseWords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->f:Landroid/content/Context;

    sget v1, Lcom/questvisual/wordlens/at;->lang_demo_erasewords:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_1
    const-string v0, "Lang.Demo.ReverseWords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->f:Landroid/content/Context;

    sget v1, Lcom/questvisual/wordlens/at;->lang_demo_reversewords:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 507
    :cond_2
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QVLocale_android requestd unknown string key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized h()V
    .locals 1

    .prologue
    .line 523
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 528
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->k:Z

    .line 529
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensSystem;->scheduleDrainMainQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    monitor-exit p0

    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 599
    :try_start_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensSystem;->onMagicAppletPauseNative()V

    .line 598
    monitor-exit v1

    .line 601
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleDrainMainQueue()V
    .locals 2

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 562
    :goto_0
    monitor-exit p0

    return-void

    .line 542
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->a:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensSystem;->a:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/questvisual/wordlens/cl;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/cl;-><init>(Lcom/questvisual/wordlens/WordLensSystem;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 560
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensSystem;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
