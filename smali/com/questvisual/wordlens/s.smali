.class public Lcom/questvisual/wordlens/s;
.super Lcom/questvisual/util/ui/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/questvisual/util/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 40
    sget v0, Lcom/questvisual/wordlens/aq;->info_screen:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 42
    sget v0, Lcom/questvisual/wordlens/ao;->info_url:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/questvisual/wordlens/t;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/t;-><init>(Lcom/questvisual/wordlens/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/questvisual/wordlens/ao;->info_version:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    sget v1, Lcom/questvisual/wordlens/ao;->debug_button:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/s;->j()Landroid/support/v4/app/i;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 106
    sget v3, Lcom/questvisual/wordlens/at;->info_version_label:I

    invoke-virtual {p0, v3}, Lcom/questvisual/wordlens/s;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    sget v0, Lcom/questvisual/wordlens/ao;->info_mailto:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/questvisual/wordlens/v;

    invoke-direct {v1, p0, v6}, Lcom/questvisual/wordlens/v;-><init>(Lcom/questvisual/wordlens/s;Lcom/questvisual/wordlens/v;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcom/questvisual/wordlens/ao;->reset_screen_compensation_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    new-instance v1, Lcom/questvisual/wordlens/u;

    invoke-direct {v1, p0, v6}, Lcom/questvisual/wordlens/u;-><init>(Lcom/questvisual/wordlens/s;Lcom/questvisual/wordlens/u;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/questvisual/wordlens/s;->b()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/questvisual/wordlens/s;->b()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/at;->info_label:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 129
    :cond_0
    return-object v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-string v3, "QV"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find application version. ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") Clearing version field."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/questvisual/util/ui/a;->a(IILandroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->e()V

    .line 147
    invoke-virtual {p0}, Lcom/questvisual/wordlens/s;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/questvisual/wordlens/s;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->b(Landroid/content/Context;)V

    .line 153
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->f()V

    .line 154
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->p()V

    .line 159
    const-string v0, "info_screen"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "info_screen"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->b(Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->q()V

    .line 166
    return-void
.end method
