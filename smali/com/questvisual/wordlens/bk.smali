.class Lcom/questvisual/wordlens/bk;
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
    iput-object p1, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1327
    iget-object v0, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    iget-object v0, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1, v7}, Lcom/questvisual/wordlens/NativeLangMan;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V

    .line 1333
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 1334
    const/4 v0, 0x0

    .line 1335
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    sget v2, Lcom/questvisual/wordlens/at;->more_languages:I

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1340
    aput-object v0, v4, v1

    .line 1342
    new-instance v0, Lcom/questvisual/wordlens/cd;

    iget-object v1, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {v0, v1, v3}, Lcom/questvisual/wordlens/cd;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Ljava/util/List;)V

    .line 1344
    iget-object v1, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1345
    sget v3, Lcom/questvisual/wordlens/at;->pick_a_language:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1346
    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1344
    invoke-static {v1, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Landroid/app/AlertDialog;)V

    .line 1348
    iget-object v0, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensActivity;->b(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1350
    iget-object v0, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1351
    iget-object v0, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1352
    const-string v0, "wl_lang_picker_popup"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 1354
    :cond_0
    return-void

    .line 1335
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 1336
    add-int/lit8 v2, v1, 0x1

    iget-object v6, p0, Lcom/questvisual/wordlens/bk;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-virtual {v0, v6}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_0
.end method
