.class public Lcom/questvisual/wordlens/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/questvisual/wordlens/a/c;


# instance fields
.field public a:Z

.field public b:Z

.field private d:Landroid/os/ConditionVariable;

.field private e:Landroid/hardware/Camera$Parameters;

.field private f:Ljava/io/IOException;

.field private g:Ljava/lang/RuntimeException;

.field private h:Landroid/os/Handler;

.field private i:Lcom/questvisual/wordlens/a/e;

.field private j:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/a/c;->d:Landroid/os/ConditionVariable;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a/c;->g:Ljava/lang/RuntimeException;

    .line 108
    const-string v0, "key.device.needs.samsungs.hd.cam.mode.one.hack"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/c;->a:Z

    .line 109
    const-string v0, "key.device.needs.htc.cam.mode.hack"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/a/c;->b:Z

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Lcom/questvisual/wordlens/a/d;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/questvisual/wordlens/a/d;-><init>(Lcom/questvisual/wordlens/a/c;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/a/c;->h:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/questvisual/wordlens/a/c;->j:Landroid/hardware/Camera;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/questvisual/wordlens/a/c;
    .locals 2
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/questvisual/wordlens/a/c;->c:Lcom/questvisual/wordlens/a/c;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "word.lens"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/questvisual/wordlens/a/c;

    invoke-direct {v1, v0}, Lcom/questvisual/wordlens/a/c;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/questvisual/wordlens/a/c;->c:Lcom/questvisual/wordlens/a/c;

    .line 103
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/a/c;->c:Lcom/questvisual/wordlens/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a/c;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/questvisual/wordlens/a/c;->e:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a/c;Landroid/hardware/Camera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/questvisual/wordlens/a/c;->j:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a/c;Lcom/questvisual/wordlens/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/questvisual/wordlens/a/c;->i:Lcom/questvisual/wordlens/a/e;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a/c;Ljava/io/IOException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/questvisual/wordlens/a/c;->f:Ljava/io/IOException;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a/c;Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/questvisual/wordlens/a/c;->g:Ljava/lang/RuntimeException;

    return-void
.end method

.method static synthetic b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/questvisual/wordlens/a/c;->d:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic c(Lcom/questvisual/wordlens/a/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/questvisual/wordlens/a/c;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/a/c;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/questvisual/wordlens/a/c;->g:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static synthetic e(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/questvisual/wordlens/a/c;->e:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/questvisual/wordlens/a/e;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 273
    if-gez p1, :cond_1

    .line 274
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/questvisual/wordlens/a/c;->j:Landroid/hardware/Camera;

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/questvisual/wordlens/a/c;->j:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Lcom/questvisual/wordlens/a/e;

    invoke-direct {v1, p0, v0}, Lcom/questvisual/wordlens/a/e;-><init>(Lcom/questvisual/wordlens/a/c;Lcom/questvisual/wordlens/a/e;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/a/c;->i:Lcom/questvisual/wordlens/a/e;

    .line 280
    iget-object v0, p0, Lcom/questvisual/wordlens/a/c;->i:Lcom/questvisual/wordlens/a/e;

    .line 282
    :cond_0
    return-object v0

    .line 276
    :cond_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/questvisual/wordlens/a/c;->j:Landroid/hardware/Camera;

    goto :goto_0
.end method
