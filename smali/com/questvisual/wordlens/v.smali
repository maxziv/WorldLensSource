.class Lcom/questvisual/wordlens/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/s;


# direct methods
.method private constructor <init>(Lcom/questvisual/wordlens/s;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/questvisual/wordlens/v;->a:Lcom/questvisual/wordlens/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/questvisual/wordlens/s;Lcom/questvisual/wordlens/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/v;-><init>(Lcom/questvisual/wordlens/s;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    const-string v0, "info_send_feedback"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:help@questvisual.com?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v2, "subject=Word Lens Feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&body="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/questvisual/wordlens/v;->a:Lcom/questvisual/wordlens/s;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/s;->j()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-static {v3}, Lcom/questvisual/wordlens/e/b;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/questvisual/wordlens/v;->a:Lcom/questvisual/wordlens/s;

    iget-object v2, p0, Lcom/questvisual/wordlens/v;->a:Lcom/questvisual/wordlens/s;

    sget v3, Lcom/questvisual/wordlens/at;->send_email:I

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/s;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/s;->a(Landroid/content/Intent;)V

    .line 227
    return-void
.end method
