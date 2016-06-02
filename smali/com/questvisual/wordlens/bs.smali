.class Lcom/questvisual/wordlens/bs;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bs;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/questvisual/wordlens/bs;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v1, Lcom/questvisual/wordlens/at;->tap_to_focus:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3658
    return-void
.end method
