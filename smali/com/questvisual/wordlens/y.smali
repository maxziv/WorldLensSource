.class public Lcom/questvisual/wordlens/y;
.super Lcom/questvisual/util/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/c;
.implements Lcom/questvisual/wordlens/messaging/b;


# instance fields
.field private Y:Lcom/questvisual/wordlens/ab;

.field private Z:Lcom/questvisual/wordlens/billing/IAPService;

.field private aa:Landroid/os/Handler;

.field private ab:Lcom/questvisual/wordlens/ad;

.field private ac:Lcom/questvisual/wordlens/b/a;

.field private ad:Z

.field private ae:Z

.field private af:Landroid/widget/ListView;

.field private ag:Lcom/questvisual/wordlens/aa;

.field private ah:Z

.field private ai:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/questvisual/util/ui/a;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/questvisual/wordlens/y;->ac:Lcom/questvisual/wordlens/b/a;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    .line 105
    iput-boolean v2, p0, Lcom/questvisual/wordlens/y;->ae:Z

    .line 108
    iput-object v1, p0, Lcom/questvisual/wordlens/y;->ag:Lcom/questvisual/wordlens/aa;

    .line 109
    iput-boolean v2, p0, Lcom/questvisual/wordlens/y;->ah:Z

    .line 111
    iput-object v1, p0, Lcom/questvisual/wordlens/y;->ai:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method private E()Z
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ai:Landroid/content/SharedPreferences;

    const-string v1, "device.in.app.billing.supported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private F()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    if-eqz v0, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/questvisual/wordlens/y;->G()V

    .line 415
    :goto_1
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/ab;->notifyDataSetChanged()V

    goto :goto_0

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/questvisual/wordlens/y;->H()V

    .line 413
    invoke-direct {p0}, Lcom/questvisual/wordlens/y;->I()V

    goto :goto_1
.end method

.method private G()V
    .locals 4

    .prologue
    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/questvisual/wordlens/NativeLangMan;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V

    .line 423
    iget-object v2, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    invoke-virtual {v2, v0}, Lcom/questvisual/wordlens/ab;->a(Ljava/util/Collection;)V

    .line 424
    invoke-direct {p0}, Lcom/questvisual/wordlens/y;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/ab;->a(Ljava/util/List;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/ab;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/questvisual/wordlens/NativeLangMan;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V

    .line 437
    iget-object v1, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/ab;->a(Ljava/util/Collection;)V

    .line 438
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/ab;->a(Ljava/util/List;)V

    .line 488
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/y;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ai:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/y;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/y;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/y;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/y;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/y;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/y;->d(Z)V

    return-void
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->m()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "iap_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/w;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void

    .line 199
    :pswitch_0
    sget v0, Lcom/questvisual/wordlens/at;->cannot_connect_title:I

    sget v1, Lcom/questvisual/wordlens/at;->cannot_connect_message:I

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/w;->a(II)Lcom/questvisual/wordlens/w;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_1
    sget v0, Lcom/questvisual/wordlens/at;->billing_not_supported_title:I

    sget v1, Lcom/questvisual/wordlens/at;->billing_not_supported_message:I

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/w;->a(II)Lcom/questvisual/wordlens/w;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/questvisual/wordlens/y;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/questvisual/wordlens/y;->F()V

    return-void
.end method

.method static synthetic b(Lcom/questvisual/wordlens/y;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/questvisual/wordlens/y;->ah:Z

    return-void
.end method

.method static synthetic c(Lcom/questvisual/wordlens/y;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->af:Landroid/widget/ListView;

    return-object v0
.end method

.method private d(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    if-nez v0, :cond_1

    .line 264
    const-string v0, "QV"

    const-string v1, "This should not have been called. Cannot restoreDatabase when not using IAP."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "ERROR_WL_BUG"

    const-string v1, "restoreDatabase called when not in IAP build. Error!"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ai:Landroid/content/SharedPreferences;

    const-string v1, "db_initialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 269
    if-nez p1, :cond_2

    if-nez v0, :cond_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Z:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/IAPService;->b()Z

    .line 271
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/at;->store_restoring_purchases:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/y;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ae:Z

    return v0
.end method

.method static synthetic e(Lcom/questvisual/wordlens/y;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->D()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/questvisual/wordlens/y;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    return v0
.end method

.method static synthetic g(Lcom/questvisual/wordlens/y;)Lcom/questvisual/wordlens/billing/IAPService;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Z:Lcom/questvisual/wordlens/billing/IAPService;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    sget v0, Lcom/questvisual/wordlens/aq;->list_content_simple:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 178
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/questvisual/wordlens/y;->af:Landroid/widget/ListView;

    .line 180
    new-instance v0, Lcom/questvisual/wordlens/ab;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/ab;-><init>(Lcom/questvisual/wordlens/y;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    .line 181
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->af:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->af:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/questvisual/wordlens/y;->Y:Lcom/questvisual/wordlens/ab;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->af:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 185
    invoke-direct {p0}, Lcom/questvisual/wordlens/y;->F()V

    .line 188
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->b()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->b()Landroid/app/Dialog;

    move-result-object v0

    sget v2, Lcom/questvisual/wordlens/at;->languages:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 192
    :cond_0
    return-object v1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/questvisual/util/ui/a;->a(Landroid/app/Activity;)V

    .line 117
    const-class v0, Lcom/questvisual/wordlens/aa;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/questvisual/wordlens/aa;

    iput-object p1, p0, Lcom/questvisual/wordlens/y;->ag:Lcom/questvisual/wordlens/aa;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ai:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "word.lens"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/y;->ai:Landroid/content/SharedPreferences;

    .line 128
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-super {p0, p1}, Lcom/questvisual/util/ui/a;->a(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->k()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/al;->use_iap_langpacks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    .line 148
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->k()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/al;->redirect_iap_to_paid_app:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/y;->ae:Z

    .line 150
    invoke-virtual {p0, v2}, Lcom/questvisual/wordlens/y;->c(Z)V

    .line 152
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "QV"

    const-string v1, "Starting IAP service and checking..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/y;->aa:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/questvisual/wordlens/ad;

    iget-object v1, p0, Lcom/questvisual/wordlens/y;->aa:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/questvisual/wordlens/ad;-><init>(Lcom/questvisual/wordlens/y;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/y;->ab:Lcom/questvisual/wordlens/ad;

    .line 159
    new-instance v0, Lcom/questvisual/wordlens/billing/IAPService;

    invoke-direct {v0}, Lcom/questvisual/wordlens/billing/IAPService;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/y;->Z:Lcom/questvisual/wordlens/billing/IAPService;

    .line 161
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Z:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/billing/IAPService;->a(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ab:Lcom/questvisual/wordlens/ad;

    invoke-static {v0}, Lcom/questvisual/wordlens/billing/a;->a(Lcom/questvisual/wordlens/billing/i;)V

    .line 164
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Z:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/IAPService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0, v2}, Lcom/questvisual/wordlens/y;->b(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public a(Lcom/questvisual/wordlens/messaging/a;)V
    .locals 2
    .parameter

    .prologue
    .line 493
    sget-object v0, Lcom/questvisual/wordlens/messaging/g;->w:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {p1}, Lcom/questvisual/wordlens/messaging/a;->a()Lcom/questvisual/wordlens/messaging/g;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Lcom/questvisual/wordlens/z;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/z;-><init>(Lcom/questvisual/wordlens/y;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 501
    :cond_0
    return-void
.end method

.method public a_()V
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 814
    :goto_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->a()V

    .line 815
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/y;->ah:Z

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->d()V

    .line 136
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->e()V

    .line 232
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Landroid/content/Context;)V

    .line 233
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ab:Lcom/questvisual/wordlens/ad;

    invoke-static {v0}, Lcom/questvisual/wordlens/billing/a;->a(Lcom/questvisual/wordlens/billing/i;)V

    .line 236
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ab:Lcom/questvisual/wordlens/ad;

    invoke-static {v0}, Lcom/questvisual/wordlens/billing/a;->b(Lcom/questvisual/wordlens/billing/i;)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->b(Landroid/content/Context;)V

    .line 244
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->f()V

    .line 245
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ag:Lcom/questvisual/wordlens/aa;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ah:Z

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ag:Lcom/questvisual/wordlens/aa;

    invoke-interface {v0}, Lcom/questvisual/wordlens/aa;->a()V

    .line 511
    :cond_0
    invoke-super {p0, p1}, Lcom/questvisual/util/ui/a;->onDismiss(Landroid/content/DialogInterface;)V

    .line 512
    return-void
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->p()V

    .line 217
    new-array v0, v3, [Lcom/questvisual/wordlens/messaging/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->w:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    .line 218
    invoke-static {p0, v0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/b;[Lcom/questvisual/wordlens/messaging/g;)V

    .line 220
    const-string v0, "lang_screen"

    invoke-static {v0, v3}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Z)V

    .line 221
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 225
    const-string v0, "lang_screen"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->b(Ljava/lang/String;)V

    .line 226
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->q()V

    .line 227
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/questvisual/wordlens/y;->ad:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->Z:Lcom/questvisual/wordlens/billing/IAPService;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/IAPService;->c()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ac:Lcom/questvisual/wordlens/b/a;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/questvisual/wordlens/y;->ac:Lcom/questvisual/wordlens/b/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/b/a;->a()V

    .line 258
    :cond_1
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->r()V

    .line 259
    return-void
.end method
