.class Lcom/questvisual/wordlens/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bb;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/questvisual/wordlens/bb;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensActivity;->finish()V

    .line 566
    return-void
.end method
