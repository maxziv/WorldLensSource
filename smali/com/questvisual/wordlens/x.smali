.class Lcom/questvisual/wordlens/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/w;

.field private final synthetic b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/w;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/x;->a:Lcom/questvisual/wordlens/w;

    iput-object p2, p0, Lcom/questvisual/wordlens/x;->b:Landroid/net/Uri;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/questvisual/wordlens/x;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    iget-object v1, p0, Lcom/questvisual/wordlens/x;->a:Lcom/questvisual/wordlens/w;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/w;->a(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
