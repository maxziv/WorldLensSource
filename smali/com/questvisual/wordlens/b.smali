.class Lcom/questvisual/wordlens/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/a;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/b;->a:Lcom/questvisual/wordlens/a;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/questvisual/wordlens/b;->a:Lcom/questvisual/wordlens/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/a;->a(Lcom/questvisual/wordlens/a;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/questvisual/wordlens/b;->a:Lcom/questvisual/wordlens/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/a;->a(Lcom/questvisual/wordlens/a;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 66
    new-instance v1, Lcom/questvisual/wordlens/LangPackInfo;

    iget-object v2, p0, Lcom/questvisual/wordlens/b;->a:Lcom/questvisual/wordlens/a;

    invoke-static {v2}, Lcom/questvisual/wordlens/a;->b(Lcom/questvisual/wordlens/a;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(ILjava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/questvisual/wordlens/NativeLangMan;->a(Lcom/questvisual/wordlens/LangPackInfo;)Z

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/b;->a:Lcom/questvisual/wordlens/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/a;->c(Lcom/questvisual/wordlens/a;)Lcom/questvisual/wordlens/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/questvisual/wordlens/b;->a:Lcom/questvisual/wordlens/a;

    invoke-static {v0}, Lcom/questvisual/wordlens/a;->c(Lcom/questvisual/wordlens/a;)Lcom/questvisual/wordlens/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/questvisual/wordlens/c;->a_()V

    .line 75
    :cond_0
    return-void

    .line 70
    :cond_1
    const-string v0, "QV"

    const-string v1, "Clicked on language past end of known source languages. BUG!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
