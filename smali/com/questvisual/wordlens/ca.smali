.class Lcom/questvisual/wordlens/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3209
    iput-object p1, p0, Lcom/questvisual/wordlens/ca;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ca;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3209
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/ca;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/questvisual/wordlens/ca;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->l(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3214
    return-void
.end method
