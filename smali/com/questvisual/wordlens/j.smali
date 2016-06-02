.class Lcom/questvisual/wordlens/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/ae;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/d;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/j;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/d;Lcom/questvisual/wordlens/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/j;-><init>(Lcom/questvisual/wordlens/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 482
    iput-object v3, p0, Lcom/questvisual/wordlens/j;->b:Ljava/lang/String;

    .line 483
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v1}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v1}, Lcom/questvisual/wordlens/d;->b(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/NativeDictionary;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/questvisual/wordlens/NativeDictionary;->a(Lcom/questvisual/wordlens/ae;)V

    .line 488
    iget-object v1, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v1}, Lcom/questvisual/wordlens/d;->b(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/NativeDictionary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/NativeDictionary;->a()V

    .line 491
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 492
    return-object v3
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/questvisual/wordlens/j;->b:Ljava/lang/String;

    .line 512
    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/questvisual/wordlens/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    iget-object v1, p0, Lcom/questvisual/wordlens/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/d;->b(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    iget-object v1, p0, Lcom/questvisual/wordlens/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/j;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->c(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/h;->notifyDataSetChanged()V

    .line 507
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/j;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/j;->a(Ljava/lang/Void;)V

    return-void
.end method
