.class Lcom/questvisual/wordlens/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d;

.field private final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/g;->a:Lcom/questvisual/wordlens/d;

    iput-object p2, p0, Lcom/questvisual/wordlens/g;->b:Ljava/lang/CharSequence;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/questvisual/wordlens/g;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->g(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/k;->a(Z)V

    .line 281
    iget-object v0, p0, Lcom/questvisual/wordlens/g;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->f(Lcom/questvisual/wordlens/d;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/questvisual/wordlens/g;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->g(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/k;->a(Z)V

    .line 283
    return-void
.end method
