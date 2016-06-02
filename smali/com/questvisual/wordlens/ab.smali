.class Lcom/questvisual/wordlens/ab;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/y;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/y;)V
    .locals 1
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 530
    invoke-virtual {p1}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/ab;->b:Landroid/view/LayoutInflater;

    .line 531
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 1
    .parameter

    .prologue
    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    .line 535
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 538
    if-eqz p1, :cond_0

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 558
    add-int/lit8 v0, v0, 0x1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 565
    :goto_0
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->c()V

    .line 567
    return v0

    .line 563
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 601
    .line 602
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 604
    if-nez p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v1, Lcom/questvisual/wordlens/at;->store_category_installed:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 615
    :cond_2
    if-nez p1, :cond_3

    .line 616
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v1, Lcom/questvisual/wordlens/at;->store_category_available:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 619
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 620
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->getAllInstalledLangPack()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_5

    .line 622
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->getRestorePurchasesLangPack()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_5
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->d:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_6
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->getDisabledLangPack()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 633
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 582
    .line 583
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 584
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_2

    .line 585
    if-nez p1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    .line 596
    :cond_3
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x1020014

    const/4 v2, 0x0

    .line 646
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/ab;->getItemViewType(I)I

    move-result v4

    .line 648
    if-nez p2, :cond_0

    .line 649
    new-instance v3, Lcom/questvisual/wordlens/ac;

    invoke-direct {v3, p0}, Lcom/questvisual/wordlens/ac;-><init>(Lcom/questvisual/wordlens/ab;)V

    .line 650
    packed-switch v4, :pswitch_data_0

    .line 665
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown viewType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 718
    :goto_0
    return-object v0

    .line 652
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->b:Landroid/view/LayoutInflater;

    const v1, 0x1090002

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 653
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;Landroid/widget/TextView;)V

    move-object v0, v1

    .line 668
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 676
    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 717
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown viewType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 718
    goto :goto_0

    .line 656
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->b:Landroid/view/LayoutInflater;

    const v1, 0x109000f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 657
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;Landroid/widget/TextView;)V

    move-object v0, v1

    .line 658
    goto :goto_1

    .line 660
    :pswitch_2
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->b:Landroid/view/LayoutInflater;

    const v1, 0x1090004

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 661
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;Landroid/widget/TextView;)V

    .line 662
    const v0, 0x1020015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/questvisual/wordlens/ac;->b(Lcom/questvisual/wordlens/ac;Landroid/widget/TextView;)V

    move-object v0, v1

    .line 663
    goto :goto_1

    .line 671
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ac;

    move-object v3, v0

    move-object v1, p2

    goto :goto_2

    .line 678
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 680
    goto :goto_0

    .line 682
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 683
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->b()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v2

    .line 688
    invoke-virtual {v2}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/questvisual/wordlens/LangPackInfo;->equals(Lcom/questvisual/wordlens/LangPackInfo;Z)Z

    move-result v0

    .line 693
    :goto_3
    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v2}, Lcom/questvisual/wordlens/y;->c(Lcom/questvisual/wordlens/y;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object v0, v1

    .line 694
    goto/16 :goto_0

    .line 691
    :cond_1
    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/LangPackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 696
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 697
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isStoreDisabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 698
    :cond_2
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v4, Lcom/questvisual/wordlens/at;->store_is_disabled:I

    invoke-virtual {v2, v4}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->b(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :goto_4
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->c(Lcom/questvisual/wordlens/y;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object v0, v1

    .line 715
    goto/16 :goto_0

    .line 700
    :cond_3
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isStoreEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 701
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v4, Lcom/questvisual/wordlens/at;->store_empty:I

    invoke-virtual {v2, v4}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->b(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v3, Lcom/questvisual/wordlens/at;->store_empty_detail:I

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 703
    :cond_4
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isRestorePurchases()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 704
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v4, Lcom/questvisual/wordlens/at;->store_restore_purchases:I

    invoke-virtual {v2, v4}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->b(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 707
    :cond_5
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->a(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v4}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/questvisual/wordlens/LangPackInfo;->generateBidirectionalDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->d(Lcom/questvisual/wordlens/y;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 709
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->b(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v3, Lcom/questvisual/wordlens/at;->store_purchase_paid_app:I

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 711
    :cond_6
    invoke-static {v3}, Lcom/questvisual/wordlens/ac;->b(Lcom/questvisual/wordlens/ac;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v3, Lcom/questvisual/wordlens/at;->store_purchase_note:I

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 676
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/ab;->getItemViewType(I)I

    move-result v0

    .line 725
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 734
    invoke-virtual {p0, p3}, Lcom/questvisual/wordlens/ab;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/questvisual/wordlens/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 739
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 740
    const-string v2, "lang_pack_abbreviation"

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v2, "lang_pick_lang"

    invoke-static {v2, v1}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 745
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    new-instance v1, Lcom/questvisual/wordlens/a;

    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v3, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-direct {v1, v2, v0, v3}, Lcom/questvisual/wordlens/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;Lcom/questvisual/wordlens/c;)V

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a;->a()V

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {v0}, Lcom/questvisual/wordlens/NativeLangMan;->a(Lcom/questvisual/wordlens/LangPackInfo;)Z

    .line 750
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0}, Lcom/questvisual/wordlens/y;->e(Lcom/questvisual/wordlens/y;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/y;->j()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 755
    :goto_1
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/y;->a()V

    goto :goto_0

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0, v4}, Lcom/questvisual/wordlens/y;->b(Lcom/questvisual/wordlens/y;Z)V

    goto :goto_1

    .line 759
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/questvisual/wordlens/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 760
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isStoreDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isStoreEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isRestorePurchases()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 763
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v0, v4}, Lcom/questvisual/wordlens/y;->a(Lcom/questvisual/wordlens/y;Z)V

    goto :goto_0

    .line 765
    :cond_3
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v1}, Lcom/questvisual/wordlens/y;->f(Lcom/questvisual/wordlens/y;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 766
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v1}, Lcom/questvisual/wordlens/y;->d(Lcom/questvisual/wordlens/y;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    sget v2, Lcom/questvisual/wordlens/at;->redirect_iap_paid_app_package_name:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/y;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 771
    iget-object v1, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/y;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 773
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 774
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    .line 775
    const-string v3, "lang_pack_abbreviation"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v3, "lang_pick_store"

    invoke-static {v3, v1}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 778
    invoke-static {v2}, Lcom/questvisual/wordlens/LangPackInfo;->normalizeAbbrev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 781
    iget-object v2, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-static {v2}, Lcom/questvisual/wordlens/y;->g(Lcom/questvisual/wordlens/y;)Lcom/questvisual/wordlens/billing/IAPService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/questvisual/wordlens/LangPackInfo;->packageName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/questvisual/wordlens/billing/IAPService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 785
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/questvisual/wordlens/LangPackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 787
    iget-object v0, p0, Lcom/questvisual/wordlens/ab;->a:Lcom/questvisual/wordlens/y;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/y;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
