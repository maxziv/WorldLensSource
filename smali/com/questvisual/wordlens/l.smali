.class public Lcom/questvisual/wordlens/l;
.super Lcom/questvisual/util/ui/a;
.source "SourceFile"


# instance fields
.field private Y:Landroid/widget/EditText;

.field private Z:Landroid/widget/EditText;

.field private aa:Lcom/questvisual/wordlens/c/a;

.field private ab:Z

.field private ac:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/questvisual/util/ui/a;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/l;->ab:Z

    .line 171
    new-instance v0, Lcom/questvisual/wordlens/m;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/m;-><init>(Lcom/questvisual/wordlens/l;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/l;->ac:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/l;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->Z:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/questvisual/wordlens/l;Lcom/questvisual/wordlens/c/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    return-void
.end method

.method static synthetic b(Lcom/questvisual/wordlens/l;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->Y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/questvisual/wordlens/l;)Lcom/questvisual/wordlens/c/a;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    return-object v0
.end method


# virtual methods
.method public E()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.saved.user.email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.saved.user.rating"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.saved.user.comments"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/l;->ab:Z

    .line 148
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->Z:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->Y:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->a()V

    .line 152
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    sget v0, Lcom/questvisual/wordlens/aq;->fragment_feedback:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    sget v0, Lcom/questvisual/wordlens/ao;->text_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/questvisual/wordlens/l;->Y:Landroid/widget/EditText;

    .line 49
    sget v0, Lcom/questvisual/wordlens/ao;->text_comments:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/questvisual/wordlens/l;->Z:Landroid/widget/EditText;

    .line 51
    sget v0, Lcom/questvisual/wordlens/ao;->button_send:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    iget-object v2, p0, Lcom/questvisual/wordlens/l;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->b()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->b()Landroid/app/Dialog;

    move-result-object v0

    sget v2, Lcom/questvisual/wordlens/at;->send_feedback:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 81
    :cond_0
    return-object v1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/questvisual/util/ui/a;->a(Landroid/app/Activity;)V

    .line 166
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    invoke-virtual {v0, p0}, Lcom/questvisual/wordlens/c/a;->a(Lcom/questvisual/wordlens/l;)V

    .line 169
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/questvisual/util/ui/a;->a(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/l;->c(Z)V

    .line 41
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->b()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/questvisual/util/ui/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/questvisual/wordlens/l;->aa:Lcom/questvisual/wordlens/c/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/c/a;->a()V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->d()V

    .line 161
    return-void
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->p()V

    .line 99
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    const-string v1, "key.saved.user.email"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/questvisual/wordlens/l;->Y:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    const-string v1, "key.saved.user.comments"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/questvisual/wordlens/l;->Z:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/l;->ab:Z

    .line 119
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/questvisual/wordlens/l;->ab:Z

    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/questvisual/wordlens/l;->Y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    const-string v2, "key.saved.user.email"

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/questvisual/wordlens/l;->Z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 135
    const-string v2, "key.saved.user.comments"

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    :cond_2
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->q()V

    .line 142
    return-void
.end method
