.class Lcom/questvisual/wordlens/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/d;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/d;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/h;->c:Ljava/util/List;

    .line 337
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/h;->b:Landroid/view/LayoutInflater;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/h;->c:Ljava/util/List;

    .line 339
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 360
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->c()V

    .line 361
    iget-object v0, p0, Lcom/questvisual/wordlens/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/questvisual/wordlens/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 371
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 385
    if-nez p2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/questvisual/wordlens/h;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->dict_table_cell:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 387
    new-instance v1, Lcom/questvisual/wordlens/i;

    invoke-direct {v1, p0, v4}, Lcom/questvisual/wordlens/i;-><init>(Lcom/questvisual/wordlens/h;Lcom/questvisual/wordlens/i;)V

    .line 388
    sget v0, Lcom/questvisual/wordlens/ao;->source_word_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/questvisual/wordlens/i;->a:Landroid/widget/TextView;

    .line 389
    sget v0, Lcom/questvisual/wordlens/ao;->translated_word_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/questvisual/wordlens/i;->b:Landroid/widget/TextView;

    .line 390
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 397
    :goto_0
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/DictResultEntry;

    .line 398
    if-nez v0, :cond_1

    .line 400
    const-string v0, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null results from NativeDictionary for position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Displaying blank cell."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, v1, Lcom/questvisual/wordlens/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, v1, Lcom/questvisual/wordlens/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_1
    return-object p2

    .line 392
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/i;

    move-object v1, v0

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->b()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v4

    .line 407
    iget-object v2, v4, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-static {v2}, Lcom/questvisual/wordlens/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    :try_start_0
    invoke-static {v2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    new-instance v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/questvisual/wordlens/DictResultEntry;->sourcePhraseStr:[B

    invoke-direct {v3, v5, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 419
    :goto_2
    iget-object v2, v4, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-static {v2}, Lcom/questvisual/wordlens/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {v5}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 421
    new-instance v2, Ljava/lang/String;

    iget-object v6, v0, Lcom/questvisual/wordlens/DictResultEntry;->transPhraseStr:[B

    invoke-direct {v2, v6, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_3
    iget-object v5, v1, Lcom/questvisual/wordlens/i;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v3, v1, Lcom/questvisual/wordlens/i;->b:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/questvisual/wordlens/LangPackInfo;->isEraseWords(Lcom/questvisual/wordlens/LangPackInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, v1, Lcom/questvisual/wordlens/i;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/d;->j()Landroid/support/v4/app/i;

    move-result-object v2

    iget-boolean v0, v0, Lcom/questvisual/wordlens/DictResultEntry;->isBest:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/questvisual/wordlens/au;->Dictionary_Source:I

    :goto_4
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 412
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/String;

    iget-object v2, v0, Lcom/questvisual/wordlens/DictResultEntry;->sourcePhraseStr:[B

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 426
    :catch_0
    move-exception v2

    .line 428
    const-string v3, "QV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported Encoding: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v3, "[Error]"

    .line 430
    const-string v2, "[Error]"

    goto :goto_3

    .line 423
    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/questvisual/wordlens/DictResultEntry;->transPhraseStr:[B

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 438
    :cond_5
    sget v0, Lcom/questvisual/wordlens/au;->Dictionary_Source_NotBest:I

    goto :goto_4
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/questvisual/wordlens/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    iget-object v0, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v0}, Lcom/questvisual/wordlens/d;->b(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/NativeDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeDictionary;->e()I

    move-result v1

    .line 349
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 355
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 356
    return-void

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v2}, Lcom/questvisual/wordlens/d;->b(Lcom/questvisual/wordlens/d;)Lcom/questvisual/wordlens/NativeDictionary;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/questvisual/wordlens/NativeDictionary;->a(I)Lcom/questvisual/wordlens/DictResultEntry;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/questvisual/wordlens/h;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/i;

    .line 461
    iget-boolean v1, v0, Lcom/questvisual/wordlens/i;->c:Z

    if-nez v1, :cond_0

    .line 462
    iget-object v0, v0, Lcom/questvisual/wordlens/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/d;->b(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V

    .line 467
    iget-object v1, p0, Lcom/questvisual/wordlens/h;->a:Lcom/questvisual/wordlens/d;

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/d;->a(Lcom/questvisual/wordlens/d;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 471
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Why did DictionaryListAdapter.onItemClick get a view of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
