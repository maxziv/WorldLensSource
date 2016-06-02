.class Lcom/questvisual/wordlens/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bn;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iput-object p2, p0, Lcom/questvisual/wordlens/bn;->b:Landroid/content/SharedPreferences;

    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2314
    iget-object v0, p0, Lcom/questvisual/wordlens/bn;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.user.approve.flurry"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2315
    iget-object v0, p0, Lcom/questvisual/wordlens/bn;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v0, v2}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/content/Context;Z)V

    .line 2318
    iget-object v0, p0, Lcom/questvisual/wordlens/bn;->b:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Landroid/content/SharedPreferences;)V

    .line 2319
    return-void
.end method
