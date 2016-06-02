.class Lcom/questvisual/wordlens/cm;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensSystem;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WordLensSystem;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/questvisual/wordlens/cm;->a:Lcom/questvisual/wordlens/WordLensSystem;

    .line 77
    const-class v0, Lcom/questvisual/wordlens/cm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/cm;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/questvisual/wordlens/cm;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/questvisual/wordlens/cm;->a:Lcom/questvisual/wordlens/WordLensSystem;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensSystem;->b(Lcom/questvisual/wordlens/WordLensSystem;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/cm;->b:Landroid/os/Handler;

    .line 85
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 86
    return-void
.end method
