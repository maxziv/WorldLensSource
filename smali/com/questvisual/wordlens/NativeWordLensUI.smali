.class public Lcom/questvisual/wordlens/NativeWordLensUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/questvisual/wordlens/NativeWordLensUI;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a()Lcom/questvisual/wordlens/NativeWordLensUI;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/questvisual/wordlens/NativeWordLensUI;->a:Lcom/questvisual/wordlens/NativeWordLensUI;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/questvisual/wordlens/NativeWordLensUI;

    invoke-direct {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/NativeWordLensUI;->a:Lcom/questvisual/wordlens/NativeWordLensUI;

    .line 50
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/NativeWordLensUI;->a:Lcom/questvisual/wordlens/NativeWordLensUI;

    return-object v0
.end method

.method private static native isAvailableNative()Z
.end method


# virtual methods
.method native GetUIModeNative()I
.end method

.method native SetUIModeNative(I)V
.end method

.method public a(Lcom/questvisual/wordlens/ag;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_0
    iget v0, p1, Lcom/questvisual/wordlens/ag;->d:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->SetUIModeNative(I)V

    .line 54
    monitor-exit v1

    .line 57
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/questvisual/wordlens/ag;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/questvisual/wordlens/NativeWordLensUI;->GetUIModeNative()I

    move-result v0

    .line 61
    invoke-static {v0}, Lcom/questvisual/wordlens/ag;->a(I)Lcom/questvisual/wordlens/ag;

    move-result-object v0

    return-object v0
.end method
