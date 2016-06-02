.class public Lcom/questvisual/wordlens/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Landroid/app/AlertDialog$Builder;

.field private e:Lcom/questvisual/wordlens/c;

.field private f:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;Lcom/questvisual/wordlens/c;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/a;->e:Lcom/questvisual/wordlens/c;

    .line 61
    new-instance v0, Lcom/questvisual/wordlens/b;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/b;-><init>(Lcom/questvisual/wordlens/a;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/a;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 26
    iget v0, p2, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    iput v0, p0, Lcom/questvisual/wordlens/a;->c:I

    .line 27
    iput-object p3, p0, Lcom/questvisual/wordlens/a;->e:Lcom/questvisual/wordlens/c;

    .line 30
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->d()Ljava/util/List;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/questvisual/wordlens/a;->a:[Ljava/lang/String;

    .line 39
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/questvisual/wordlens/a;->b:[Ljava/lang/String;

    .line 42
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2, p1, v2}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/questvisual/wordlens/a;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/questvisual/wordlens/a;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/questvisual/wordlens/a;->d:Landroid/app/AlertDialog$Builder;

    .line 53
    return-void

    .line 33
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 34
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getSourceLangName()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-interface {v1, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 43
    iget-object v4, p0, Lcom/questvisual/wordlens/a;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getSourceLangName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 44
    iget-object v4, p0, Lcom/questvisual/wordlens/a;->b:[Ljava/lang/String;

    iget-object v0, v0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/questvisual/wordlens/a;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/questvisual/wordlens/a;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/a;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/questvisual/wordlens/a;->c:I

    return v0
.end method

.method static synthetic c(Lcom/questvisual/wordlens/a;)Lcom/questvisual/wordlens/c;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/questvisual/wordlens/a;->e:Lcom/questvisual/wordlens/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/questvisual/wordlens/a;->d:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 59
    return-void
.end method
