.class Lcom/questvisual/wordlens/ba;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/ba;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/questvisual/wordlens/ba;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v2, Lcom/questvisual/wordlens/at;->unsupported_device_email_text:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mailto:help@questvisual.com?subject=UNSUPPORTED_DEVICE&body="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nDetails:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    invoke-static {}, Lcom/questvisual/wordlens/e/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 556
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Lcom/questvisual/wordlens/ba;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v2, p0, Lcom/questvisual/wordlens/ba;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v3, Lcom/questvisual/wordlens/at;->send_email:I

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/WordLensActivity;->startActivity(Landroid/content/Intent;)V

    .line 559
    iget-object v0, p0, Lcom/questvisual/wordlens/ba;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensActivity;->finish()V

    .line 560
    return-void
.end method
