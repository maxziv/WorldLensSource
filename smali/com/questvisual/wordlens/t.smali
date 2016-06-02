.class Lcom/questvisual/wordlens/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/s;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/s;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/t;->a:Lcom/questvisual/wordlens/s;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    const-string v0, "info_visit_website"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/questvisual/wordlens/t;->a:Lcom/questvisual/wordlens/s;

    sget v1, Lcom/questvisual/wordlens/at;->info_url:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/s;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/questvisual/wordlens/t;->a:Lcom/questvisual/wordlens/s;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/s;->a(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
