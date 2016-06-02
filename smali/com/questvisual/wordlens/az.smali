.class Lcom/questvisual/wordlens/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/az;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/questvisual/wordlens/az;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Landroid/app/AlertDialog;)V

    .line 169
    return-void
.end method
