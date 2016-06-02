.class Lcom/questvisual/wordlens/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/c/e;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/by;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/questvisual/wordlens/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/questvisual/wordlens/by;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {p1}, Lcom/questvisual/wordlens/a/b;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->b(Lcom/questvisual/wordlens/WordLensActivity;Ljava/lang/Boolean;)V

    .line 3713
    return-void
.end method
