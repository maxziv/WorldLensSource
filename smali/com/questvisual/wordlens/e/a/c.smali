.class Lcom/questvisual/wordlens/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/e/a/a;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/e/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/questvisual/wordlens/e/a/c;->a:Lcom/questvisual/wordlens/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/e/a/c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/e/a/a;Lcom/questvisual/wordlens/e/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/e/a/c;-><init>(Lcom/questvisual/wordlens/e/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/e/a/c;->b:Z

    .line 297
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/questvisual/wordlens/e/a/c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/c;->a:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/questvisual/wordlens/e/a/c;->a:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/e/a/a;->a()V

    .line 304
    :cond_0
    return-void
.end method
