.class public Lcom/questvisual/wordlens/d;
.super Lcom/questvisual/util/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/messaging/b;


# static fields
.field private static synthetic af:[I


# instance fields
.field private Y:Z

.field private Z:Landroid/widget/Button;

.field private aa:Landroid/widget/EditText;

.field private ab:Lcom/questvisual/wordlens/k;

.field private ac:Lcom/questvisual/wordlens/NativeDictionary;

.field private ad:Z

.field private ae:Lcom/questvisual/wordlens/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/questvisual/util/ui/a;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d;->Y:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d;->ad:Z

    .line 41
    return-void
.end method

.method static synthetic E()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/questvisual/wordlens/d;->af:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/messaging/g;->values()[Lcom/questvisual/wordlens/messaging/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->t:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_16

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->u:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_15

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->v:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_14

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->w:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_13

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->f:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_12

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->e:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_11

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->s:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_10

    :goto_7
    :try_start_7
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->c:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_f

    :goto_8
    :try_start_8
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->d:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_e

    :goto_9
    :try_start_9
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->a:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_d

    :goto_a
    :try_start_a
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->b:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c

    :goto_b
    :try_start_b
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->n:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_c
    :try_start_c
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->m:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_a

    :goto_d
    :try_start_d
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->l:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_9

    :goto_e
    :try_start_e
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->p:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_8

    :goto_f
    :try_start_f
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->j:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_7

    :goto_10
    :try_start_10
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->k:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_6

    :goto_11
    :try_start_11
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->i:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_5

    :goto_12
    :try_start_12
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->o:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_4

    :goto_13
    :try_start_13
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->r:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_3

    :goto_14
    :try_start_14
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->q:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2

    :goto_15
    :try_start_15
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->h:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1

    :goto_16
    :try_start_16
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->g:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_0

    :goto_17
    sput-object v0, Lcom/questvisual/wordlens/d;->af:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_17

    :catch_1
    move-exception v1

    goto :goto_16

    :catch_2
    move-exception v1

    goto :goto_15

    :catch_3
    move-exception v1

    goto :goto_14

    :catch_4
    move-exception v1

    goto :goto_13

    :catch_5
    move-exception v1

    goto :goto_12

    :catch_6
    move-exception v1

    goto :goto_11

    :catch_7
    move-exception v1

    goto :goto_10

    :catch_8
    move-exception v1

    goto :goto_f

    :catch_9
    move-exception v1

    goto :goto_e

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v1

    goto/16 :goto_c

    :catch_c
    move-exception v1

    goto/16 :goto_b

    :catch_d
    move-exception v1

    goto/16 :goto_a

    :catch_e
    move-exception v1

    goto/16 :goto_9

    :catch_f
    move-exception v1

    goto/16 :goto_8

    :catch_10
    move-exception v1

    goto/16 :goto_7

    :catch_11
    move-exception v1

    goto/16 :goto_6

    :catch_12
    move-exception v1

    goto/16 :goto_5

    :catch_13
    move-exception v1

    goto/16 :goto_4

    :catch_14
    move-exception v1

    goto/16 :goto_3

    :catch_15
    move-exception v1

    goto/16 :goto_2

    :catch_16
    move-exception v1

    goto/16 :goto_1
.end method

.method private F()Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 86
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private G()V
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/questvisual/wordlens/messaging/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->m:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->l:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    .line 225
    invoke-static {p0, v0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/b;[Lcom/questvisual/wordlens/messaging/g;)V

    .line 226
    return-void
.end method

.method private H()V
    .locals 0

    .prologue
    .line 229
    invoke-static {p0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/b;)V

    .line 230
    return-void
.end method

.method private I()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/d;->e(Z)V

    .line 253
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/d;->e(Z)V

    .line 262
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/questvisual/wordlens/f;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/f;-><init>(Lcom/questvisual/wordlens/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/questvisual/wordlens/d;->Z:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/questvisual/wordlens/d;->ad:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/questvisual/wordlens/g;

    invoke-direct {v1, p0, p1}, Lcom/questvisual/wordlens/g;-><init>(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "word.lens"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.dict.last.searched.word"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d;->ad:Z

    return v0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/NativeDictionary;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->ac:Lcom/questvisual/wordlens/NativeDictionary;

    return-object v0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d;->ad:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/d;->a(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->ac:Lcom/questvisual/wordlens/NativeDictionary;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/NativeDictionary;->a(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->ae:Lcom/questvisual/wordlens/h;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/h;->notifyDataSetChanged()V

    .line 298
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/h;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->ae:Lcom/questvisual/wordlens/h;

    return-object v0
.end method

.method public static d(Z)Lcom/questvisual/wordlens/d;
    .locals 3
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/questvisual/wordlens/d;

    invoke-direct {v0}, Lcom/questvisual/wordlens/d;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v2, "key.do.init.lookup"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d;->g(Landroid/os/Bundle;)V

    .line 66
    return-object v0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->F()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/questvisual/wordlens/d;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->K()V

    return-void
.end method

.method static synthetic f(Lcom/questvisual/wordlens/d;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/k;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->ab:Lcom/questvisual/wordlens/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 95
    sget v0, Lcom/questvisual/wordlens/aq;->dict_screen:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    sget v0, Lcom/questvisual/wordlens/ao;->switch_language_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/questvisual/wordlens/d;->Z:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->Z:Landroid/widget/Button;

    new-instance v2, Lcom/questvisual/wordlens/e;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/e;-><init>(Lcom/questvisual/wordlens/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/questvisual/wordlens/ao;->dict_search_field:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    .line 117
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    const v2, 0x80090

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 119
    new-instance v0, Lcom/questvisual/wordlens/k;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/questvisual/wordlens/k;-><init>(Lcom/questvisual/wordlens/d;Lcom/questvisual/wordlens/k;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d;->ab:Lcom/questvisual/wordlens/k;

    .line 120
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/questvisual/wordlens/d;->ab:Lcom/questvisual/wordlens/k;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 124
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    new-instance v2, Lcom/questvisual/wordlens/h;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/questvisual/wordlens/h;-><init>(Lcom/questvisual/wordlens/d;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/questvisual/wordlens/d;->ae:Lcom/questvisual/wordlens/h;

    .line 128
    iget-object v2, p0, Lcom/questvisual/wordlens/d;->ae:Lcom/questvisual/wordlens/h;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v2, p0, Lcom/questvisual/wordlens/d;->ae:Lcom/questvisual/wordlens/h;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->ab:Lcom/questvisual/wordlens/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/k;->a(Z)V

    .line 138
    iput-boolean v4, p0, Lcom/questvisual/wordlens/d;->Y:Z

    .line 139
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->i()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->i()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    const-string v2, "key.do.init.lookup"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d;->Y:Z

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->b()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->b()Landroid/app/Dialog;

    move-result-object v0

    sget v2, Lcom/questvisual/wordlens/at;->dict_label:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 149
    :cond_1
    return-object v1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    const/16 v0, 0x108

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/d;->e(Z)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/questvisual/util/ui/a;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/questvisual/util/ui/a;->a(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/questvisual/wordlens/NativeDictionary;->c()Lcom/questvisual/wordlens/NativeDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/d;->ac:Lcom/questvisual/wordlens/NativeDictionary;

    .line 75
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->b()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/questvisual/util/ui/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public a(Lcom/questvisual/wordlens/messaging/a;)V
    .locals 2
    .parameter

    .prologue
    .line 234
    invoke-static {}, Lcom/questvisual/wordlens/d;->E()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/questvisual/wordlens/messaging/a;->a()Lcom/questvisual/wordlens/messaging/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->I()V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->J()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->e()V

    .line 175
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/questvisual/wordlens/d;->ad:Z

    .line 91
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->b(Landroid/content/Context;)V

    .line 181
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->f()V

    .line 182
    return-void
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->p()V

    .line 187
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d;->Y:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/questvisual/wordlens/j;

    invoke-direct {v0, p0, v1}, Lcom/questvisual/wordlens/j;-><init>(Lcom/questvisual/wordlens/d;Lcom/questvisual/wordlens/j;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->G()V

    .line 212
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->K()V

    .line 214
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "word.lens"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    :try_start_0
    const-string v1, "key.dict.last.searched.word"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/d;->a(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/d;->b(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/questvisual/wordlens/d;->aa:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 201
    const-string v1, "QV"

    const-string v2, "Illegal preference found for key key.dict.last.searched.word"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v3, "key.dict.last.searched.word"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public q()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/questvisual/wordlens/d;->H()V

    .line 219
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->q()V

    .line 220
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 80
    invoke-static {}, Lcom/questvisual/wordlens/NativeDictionary;->d()V

    .line 81
    invoke-super {p0}, Lcom/questvisual/util/ui/a;->r()V

    .line 82
    return-void
.end method
