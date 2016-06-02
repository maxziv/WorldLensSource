.class Lcom/questvisual/wordlens/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bp;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 2919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/questvisual/wordlens/bp;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->i(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 2923
    return-void
.end method
