.class Lcom/questvisual/wordlens/aw;
.super Lcom/questvisual/wordlens/d/g;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WLSplashActivity;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Lcom/questvisual/wordlens/LangPackInfo;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/WLSplashActivity;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/questvisual/wordlens/aw;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/questvisual/wordlens/d/g;-><init>(Landroid/content/Context;Z)V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/aw;->c:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/questvisual/wordlens/aw;->b:Ljava/util/List;

    .line 212
    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/questvisual/wordlens/aw;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/questvisual/wordlens/NativeLangMan;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V

    .line 213
    const-string v0, ""

    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->b:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/questvisual/wordlens/aw;->a(Ljava/lang/Object;Ljava/util/List;)V

    .line 216
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 217
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 218
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    const v0, 0x7f080057

    invoke-virtual {p1, v0}, Lcom/questvisual/wordlens/WLSplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->c:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/questvisual/wordlens/aw;->a(Ljava/lang/Object;Ljava/util/List;)V

    .line 232
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 219
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/questvisual/wordlens/LangPackInfo;II)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 310
    if-nez p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090004

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 312
    new-instance v1, Lcom/questvisual/wordlens/ax;

    invoke-direct {v1, p0, v2}, Lcom/questvisual/wordlens/ax;-><init>(Lcom/questvisual/wordlens/aw;Lcom/questvisual/wordlens/ax;)V

    .line 313
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/questvisual/wordlens/ax;->a:Landroid/widget/TextView;

    .line 314
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/questvisual/wordlens/ax;->b:Landroid/widget/TextView;

    .line 315
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 320
    :goto_0
    iget-object v1, v0, Lcom/questvisual/wordlens/ax;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/questvisual/wordlens/LangPackInfo;->generateBidirectionalDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 323
    iget-object v0, v0, Lcom/questvisual/wordlens/ax;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/WLSplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :goto_1
    return-object p1

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ax;

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, v0, Lcom/questvisual/wordlens/ax;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/questvisual/wordlens/aw;->a(Landroid/view/View;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 334
    if-nez p1, :cond_1

    .line 335
    new-instance v1, Lcom/questvisual/wordlens/ax;

    invoke-direct {v1, p0, v3}, Lcom/questvisual/wordlens/ax;-><init>(Lcom/questvisual/wordlens/aw;Lcom/questvisual/wordlens/ax;)V

    .line 336
    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x1090002

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 337
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/questvisual/wordlens/ax;->a:Landroid/widget/TextView;

    .line 338
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 343
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 344
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_1
    return-object p1

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/ax;

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, v0, Lcom/questvisual/wordlens/ax;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected synthetic b(Landroid/view/View;Ljava/lang/Object;II)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/questvisual/wordlens/LangPackInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/questvisual/wordlens/aw;->a(Landroid/view/View;Lcom/questvisual/wordlens/LangPackInfo;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording initial Language Pack selection of: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-static {v2, v3}, Lcom/questvisual/wordlens/LangPackInfo;->generateBidirectionalDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v1, "lang_pack_abbreviation"

    iget-object v2, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "wl_splash_init_lang_pick"

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    const-string v1, "word.lens"

    invoke-virtual {v0, v1, v5}, Lcom/questvisual/wordlens/WLSplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LPS."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LPS."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/questvisual/wordlens/LangPackInfo;->normalizeAbbrev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    const-string v4, "key.wl.first.start"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v1, "key.first.start.of.wordlens.plus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    iget-object v1, v1, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-static {v0}, Lcom/questvisual/wordlens/NativeLangMan;->a(Lcom/questvisual/wordlens/LangPackInfo;)Z

    .line 296
    :goto_0
    const-string v0, "QV"

    const-string v1, "Recorded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    invoke-static {v0}, Lcom/questvisual/wordlens/WLSplashActivity;->a(Lcom/questvisual/wordlens/WLSplashActivity;)V

    .line 300
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/LangPackInfo;->parseLangPair(Ljava/lang/String;)Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/NativeLangMan;->a(Lcom/questvisual/wordlens/LangPackInfo;)Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/questvisual/wordlens/aw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080060

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0, p3}, Lcom/questvisual/wordlens/aw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    iput-object v0, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/questvisual/wordlens/aw;->a:Lcom/questvisual/wordlens/WLSplashActivity;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/WLSplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/questvisual/wordlens/aw;->d:Lcom/questvisual/wordlens/LangPackInfo;

    invoke-static {v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;->generateBidirectionalDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/questvisual/wordlens/aw;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 252
    const v1, 0x7f080081

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
