.class Lcom/questvisual/wordlens/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/questvisual/wordlens/cd;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/cd;->b:Ljava/util/List;

    .line 1296
    iput-object p2, p0, Lcom/questvisual/wordlens/cd;->b:Ljava/util/List;

    .line 1297
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/questvisual/wordlens/cd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/questvisual/wordlens/cd;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 1303
    iget-object v1, p0, Lcom/questvisual/wordlens/cd;->a:Lcom/questvisual/wordlens/WordLensActivity;

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/LangPackInfo;)V

    .line 1308
    :goto_0
    return-void

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/cd;->a:Lcom/questvisual/wordlens/WordLensActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Z)V

    goto :goto_0
.end method
