.class Lcom/questvisual/wordlens/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/f;->a:Lcom/questvisual/wordlens/d;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/questvisual/wordlens/f;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->e(Lcom/questvisual/wordlens/d;)V

    .line 266
    iget-object v0, p0, Lcom/questvisual/wordlens/f;->a:Lcom/questvisual/wordlens/d;

    iget-object v1, p0, Lcom/questvisual/wordlens/f;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v1}, Lcom/questvisual/wordlens/d;->f(Lcom/questvisual/wordlens/d;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method
