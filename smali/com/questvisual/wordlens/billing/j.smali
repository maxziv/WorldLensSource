.class Lcom/questvisual/wordlens/billing/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/billing/i;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/billing/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/j;->a:Lcom/questvisual/wordlens/billing/i;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/j;->a:Lcom/questvisual/wordlens/billing/i;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/i;->a()V

    .line 155
    return-void
.end method
