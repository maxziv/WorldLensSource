.class Lcom/questvisual/wordlens/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/bc;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bd;->a:Lcom/questvisual/wordlens/bc;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/questvisual/wordlens/bd;->a:Lcom/questvisual/wordlens/bc;

    invoke-static {v0}, Lcom/questvisual/wordlens/bc;->a(Lcom/questvisual/wordlens/bc;)Lcom/questvisual/wordlens/WordLensActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->A(Lcom/questvisual/wordlens/WordLensActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/questvisual/wordlens/bd;->a:Lcom/questvisual/wordlens/bc;

    invoke-static {v0}, Lcom/questvisual/wordlens/bc;->a(Lcom/questvisual/wordlens/bc;)Lcom/questvisual/wordlens/WordLensActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->B(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 679
    iget-object v0, p0, Lcom/questvisual/wordlens/bd;->a:Lcom/questvisual/wordlens/bc;

    invoke-static {v0}, Lcom/questvisual/wordlens/bc;->a(Lcom/questvisual/wordlens/bc;)Lcom/questvisual/wordlens/WordLensActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->C(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 681
    :cond_0
    return-void
.end method
