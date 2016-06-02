.class public abstract Lcom/questvisual/wordlens/d/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/questvisual/wordlens/d/g;->e:I

    .line 41
    iput-object p1, p0, Lcom/questvisual/wordlens/d/g;->c:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/g;->d:Landroid/view/LayoutInflater;

    .line 43
    iput-boolean p2, p0, Lcom/questvisual/wordlens/d/g;->f:Z

    .line 44
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected abstract a(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;
.end method

.method public a(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/d/g;->b(Ljava/lang/Object;Ljava/util/List;)V

    .line 68
    invoke-virtual {p0}, Lcom/questvisual/wordlens/d/g;->c()V

    .line 70
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract b(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/questvisual/wordlens/d/g;->e:I

    .line 83
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SectionedBaseAdapter.setSection(): mEntryCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/questvisual/wordlens/d/g;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 83
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/questvisual/wordlens/d/g;->f:Z

    if-eqz v2, :cond_2

    .line 86
    :cond_1
    iget v2, p0, Lcom/questvisual/wordlens/d/g;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/questvisual/wordlens/d/g;->e:I

    .line 88
    :cond_2
    iget v2, p0, Lcom/questvisual/wordlens/d/g;->e:I

    iget-object v3, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/questvisual/wordlens/d/g;->e:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/questvisual/wordlens/d/g;->e:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    .line 151
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 156
    iget-boolean v4, p0, Lcom/questvisual/wordlens/d/g;->f:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 157
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_2
    if-eqz p1, :cond_0

    .line 165
    if-ge p1, v3, :cond_3

    .line 166
    add-int/lit8 v0, p1, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 169
    :cond_3
    sub-int/2addr p1, v3

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d/g;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 142
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Why was unable to find itemViewType for position: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 142
    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 124
    iget-object v4, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 129
    if-nez p1, :cond_2

    move v0, v2

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    if-ge p1, v0, :cond_3

    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_3
    sub-int/2addr p1, v0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    .line 183
    iget-object v0, p0, Lcom/questvisual/wordlens/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, p1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 183
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 188
    iget-boolean v5, p0, Lcom/questvisual/wordlens/d/g;->f:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/questvisual/wordlens/d/g;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 189
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1, v2}, Lcom/questvisual/wordlens/d/g;->b(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 193
    :cond_1
    if-nez v2, :cond_2

    .line 194
    invoke-virtual {p0, p2, v0, p1, v2}, Lcom/questvisual/wordlens/d/g;->a(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 197
    :cond_2
    if-ge v2, v4, :cond_3

    .line 198
    add-int/lit8 v0, v2, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1, v2}, Lcom/questvisual/wordlens/d/g;->b(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 201
    :cond_3
    sub-int v0, v2, v4

    move v2, v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/d/g;->getItemViewType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 231
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
