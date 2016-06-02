.class Lcom/questvisual/util/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/util/ui/d;


# direct methods
.method constructor <init>(Lcom/questvisual/util/ui/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/util/ui/e;->a:Lcom/questvisual/util/ui/d;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/questvisual/util/ui/e;->a:Lcom/questvisual/util/ui/d;

    invoke-static {v0}, Lcom/questvisual/util/ui/d;->a(Lcom/questvisual/util/ui/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 28
    return-void
.end method
