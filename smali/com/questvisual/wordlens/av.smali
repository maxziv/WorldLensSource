.class Lcom/questvisual/wordlens/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WLSplashActivity;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WLSplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/questvisual/wordlens/av;->b:[I

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
    sput-object v0, Lcom/questvisual/wordlens/av;->b:[I

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lcom/questvisual/wordlens/av;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v1}, Lcom/questvisual/wordlens/WLSplashActivity;->b(Lcom/questvisual/wordlens/WLSplashActivity;)Lcom/questvisual/wordlens/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error, click should not have been possible for state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v2}, Lcom/questvisual/wordlens/WLSplashActivity;->b(Lcom/questvisual/wordlens/WLSplashActivity;)Lcom/questvisual/wordlens/ay;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WLSplashActivity;->c(Lcom/questvisual/wordlens/WLSplashActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 167
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    sget-object v1, Lcom/questvisual/wordlens/ay;->b:Lcom/questvisual/wordlens/ay;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WLSplashActivity;->a(Lcom/questvisual/wordlens/WLSplashActivity;Lcom/questvisual/wordlens/ay;)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WLSplashActivity;->d(Lcom/questvisual/wordlens/WLSplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WLSplashActivity;->c(Lcom/questvisual/wordlens/WLSplashActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 173
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    sget-object v1, Lcom/questvisual/wordlens/ay;->c:Lcom/questvisual/wordlens/ay;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WLSplashActivity;->a(Lcom/questvisual/wordlens/WLSplashActivity;Lcom/questvisual/wordlens/ay;)V

    .line 175
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WLSplashActivity;->e(Lcom/questvisual/wordlens/WLSplashActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/av;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WLSplashActivity;->a(Lcom/questvisual/wordlens/WLSplashActivity;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
