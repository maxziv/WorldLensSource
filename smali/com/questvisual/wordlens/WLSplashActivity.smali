.class public Lcom/questvisual/wordlens/WLSplashActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/questvisual/wordlens/aw;

.field private c:Z

.field private d:Lcom/questvisual/wordlens/ay;

.field private e:Landroid/widget/ViewFlipper;

.field private f:Landroid/widget/Button;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->c:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->g:Z

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WLSplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WLSplashActivity;Lcom/questvisual/wordlens/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/questvisual/wordlens/WLSplashActivity;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/ay;->values()[Lcom/questvisual/wordlens/ay;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/ay;->c:Lcom/questvisual/wordlens/ay;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/ay;->a:Lcom/questvisual/wordlens/ay;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/ay;->b:Lcom/questvisual/wordlens/ay;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/questvisual/wordlens/WLSplashActivity;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/questvisual/wordlens/WLSplashActivity;)Lcom/questvisual/wordlens/ay;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "key.splash.was.first.init"

    iget-boolean v2, p0, Lcom/questvisual/wordlens/WLSplashActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 359
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->finish()V

    .line 360
    return-void
.end method

.method static synthetic c(Lcom/questvisual/wordlens/WLSplashActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/WLSplashActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/questvisual/wordlens/WLSplashActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->f:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcom/questvisual/wordlens/WLSplashActivity;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 57
    sget-object v0, Lcom/questvisual/wordlens/ay;->b:Lcom/questvisual/wordlens/ay;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    .line 59
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 63
    sget-object v0, Lcom/questvisual/wordlens/ay;->a:Lcom/questvisual/wordlens/ay;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    .line 65
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->c:Z

    .line 93
    const-string v1, "word.lens"

    invoke-virtual {p0, v1, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    const-string v2, "key.first.start.of.wordlens.plus"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, "key.tutorial.shown"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 100
    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->g:Z

    .line 103
    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->g:Z

    if-eqz v0, :cond_6

    .line 105
    :cond_1
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->setContentView(I)V

    .line 109
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/angelina.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_2
    :goto_0
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    .line 121
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->f:Landroid/widget/Button;

    .line 126
    if-eqz p1, :cond_3

    .line 127
    const-string v0, "key.splash.state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    invoke-static {v0}, Lcom/questvisual/wordlens/ay;->valueOf(Ljava/lang/String;)Lcom/questvisual/wordlens/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    .line 131
    invoke-static {}, Lcom/questvisual/wordlens/WLSplashActivity;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    if-nez v0, :cond_4

    .line 156
    sget-object v0, Lcom/questvisual/wordlens/ay;->a:Lcom/questvisual/wordlens/ay;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/questvisual/wordlens/av;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/av;-><init>(Lcom/questvisual/wordlens/WLSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->a:Landroid/widget/ListView;

    .line 191
    new-instance v0, Lcom/questvisual/wordlens/aw;

    invoke-direct {v0, p0, p0}, Lcom/questvisual/wordlens/aw;-><init>(Lcom/questvisual/wordlens/WLSplashActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->b:Lcom/questvisual/wordlens/aw;

    .line 193
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->b:Lcom/questvisual/wordlens/aw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->b:Lcom/questvisual/wordlens/aw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    :goto_2
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    const-string v0, "QV"

    const-string v1, "Unable to load desired font for stylized text."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_1

    .line 140
    :pswitch_2
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->g:Z

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 143
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 144
    sget-object v0, Lcom/questvisual/wordlens/ay;->c:Lcom/questvisual/wordlens/ay;

    iput-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    .line 146
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 149
    :cond_5
    invoke-direct {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->b()V

    goto :goto_1

    .line 198
    :cond_6
    invoke-direct {p0}, Lcom/questvisual/wordlens/WLSplashActivity;->b()V

    goto :goto_2

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "key.splash.state"

    iget-object v1, p0, Lcom/questvisual/wordlens/WLSplashActivity;->d:Lcom/questvisual/wordlens/ay;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
