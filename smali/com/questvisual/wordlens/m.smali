.class Lcom/questvisual/wordlens/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/l;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/l;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x104000a

    const/4 v4, 0x1

    .line 176
    iget-object v0, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-static {v0}, Lcom/questvisual/wordlens/l;->a(Lcom/questvisual/wordlens/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-static {v0}, Lcom/questvisual/wordlens/l;->a(Lcom/questvisual/wordlens/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 180
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v1, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    sget v2, Lcom/questvisual/wordlens/at;->send_feedback:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    sget v1, Lcom/questvisual/wordlens/at;->feedback_missing_comment:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 207
    :goto_1
    return-void

    .line 176
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-static {v0}, Lcom/questvisual/wordlens/l;->b(Lcom/questvisual/wordlens/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-static {v0}, Lcom/questvisual/wordlens/l;->b(Lcom/questvisual/wordlens/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".+\\@.+\\..+"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 193
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    iget-object v1, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    sget v2, Lcom/questvisual/wordlens/at;->send_feedback:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    sget v1, Lcom/questvisual/wordlens/at;->feedback_missing_email:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 190
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 203
    :cond_5
    const/high16 v4, -0x4080

    .line 204
    iget-object v0, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/b;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 205
    iget-object v6, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    new-instance v0, Lcom/questvisual/wordlens/c/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/c/a;-><init>(Lcom/questvisual/wordlens/l;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/questvisual/wordlens/l;->a(Lcom/questvisual/wordlens/l;Lcom/questvisual/wordlens/c/a;)V

    .line 206
    iget-object v0, p0, Lcom/questvisual/wordlens/m;->a:Lcom/questvisual/wordlens/l;

    invoke-static {v0}, Lcom/questvisual/wordlens/l;->c(Lcom/questvisual/wordlens/l;)Lcom/questvisual/wordlens/c/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method
