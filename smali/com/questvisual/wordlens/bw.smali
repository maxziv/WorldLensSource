.class Lcom/questvisual/wordlens/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bw;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 3679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/questvisual/wordlens/bw;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->b(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    .line 3683
    return-void
.end method
