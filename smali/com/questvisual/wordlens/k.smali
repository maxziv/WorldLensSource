.class Lcom/questvisual/wordlens/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/d;)V
    .locals 1
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/questvisual/wordlens/k;->a:Lcom/questvisual/wordlens/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/k;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/d;Lcom/questvisual/wordlens/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/k;-><init>(Lcom/questvisual/wordlens/d;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/questvisual/wordlens/k;->b:Z

    .line 307
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/questvisual/wordlens/k;->b:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/questvisual/wordlens/k;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0, p1}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    return-void
.end method
