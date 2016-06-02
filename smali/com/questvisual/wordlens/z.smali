.class Lcom/questvisual/wordlens/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/y;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/y;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/z;->a:Lcom/questvisual/wordlens/y;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/questvisual/wordlens/z;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->b(Lcom/questvisual/wordlens/y;)V

    .line 498
    return-void
.end method
