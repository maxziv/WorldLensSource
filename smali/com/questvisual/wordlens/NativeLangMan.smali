.class public Lcom/questvisual/wordlens/NativeLangMan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;

.field private static c:Z

.field private static volatile d:Lcom/questvisual/wordlens/LangPackInfo;

.field private static e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-object v1, Lcom/questvisual/wordlens/NativeLangMan;->a:Landroid/content/Context;

    .line 36
    sput-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/questvisual/wordlens/NativeLangMan;->c:Z

    .line 107
    sput-object v1, Lcom/questvisual/wordlens/NativeLangMan;->d:Lcom/questvisual/wordlens/LangPackInfo;

    .line 125
    sput-object v1, Lcom/questvisual/wordlens/NativeLangMan;->e:Ljava/util/Set;

    .line 332
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native GetAllAvailableLanguagesNative()Ljava/util/List;
.end method

.method private static native GetCurrentLangInfoNative()Lcom/questvisual/wordlens/LangPackInfo;
.end method

.method private static native SetCurrentLangNative(Lcom/questvisual/wordlens/LangPackInfo;)Z
.end method

.method public static a()Lcom/questvisual/wordlens/LangPackInfo;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->GetCurrentLangInfoNative()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    sput-object p0, Lcom/questvisual/wordlens/NativeLangMan;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/al;->use_iap_langpacks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/questvisual/wordlens/NativeLangMan;->c:Z

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 163
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->e()V

    .line 165
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->GetAllAvailableLanguagesNative()Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 230
    sget-boolean v1, Lcom/questvisual/wordlens/NativeLangMan;->c:Z

    if-eqz v1, :cond_8

    .line 232
    const-string v1, "word.lens"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 234
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    invoke-static {p2}, Lcom/questvisual/wordlens/NativeLangMan;->a(Ljava/util/List;)V

    .line 308
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 314
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 315
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    return-void

    .line 243
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 244
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    if-eqz p3, :cond_0

    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LPS."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "LPS."

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v2, v1

    .line 269
    sget-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 270
    sget-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    sget-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v1, v2

    move v2, v1

    .line 276
    :cond_4
    sget-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    sget-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v2, v1

    .line 283
    :cond_5
    if-eqz v2, :cond_6

    .line 284
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 287
    :cond_6
    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    .line 289
    :goto_3
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/questvisual/wordlens/LangPackInfo;->normalizeAbbrev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->getReverseAbbreviation()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v1, v4

    .line 288
    goto :goto_3

    .line 304
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 309
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 310
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private static a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    return-void
.end method

.method public static a(Lcom/questvisual/wordlens/LangPackInfo;)Z
    .locals 5
    .parameter

    .prologue
    .line 340
    .line 341
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 342
    :try_start_0
    invoke-static {p0}, Lcom/questvisual/wordlens/NativeLangMan;->SetCurrentLangNative(Lcom/questvisual/wordlens/LangPackInfo;)Z

    move-result v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Language successfully set to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/questvisual/wordlens/NativeLangMan;->a:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->c()V

    .line 361
    return v0

    .line 346
    :cond_0
    :try_start_1
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to set language pack?! Desired Language Pack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Lcom/questvisual/wordlens/LangPackInfo;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/questvisual/wordlens/NativeLangMan;->d:Lcom/questvisual/wordlens/LangPackInfo;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    sput-object v0, Lcom/questvisual/wordlens/NativeLangMan;->d:Lcom/questvisual/wordlens/LangPackInfo;

    .line 114
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/NativeLangMan;->d:Lcom/questvisual/wordlens/LangPackInfo;

    return-object v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/NativeLangMan;->d:Lcom/questvisual/wordlens/LangPackInfo;

    .line 119
    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->GetAllAvailableLanguagesNative()Ljava/util/List;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    return-object v1

    .line 142
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/LangPackInfo;

    .line 143
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static e()V
    .locals 6

    .prologue
    .line 57
    sget-object v0, Lcom/questvisual/wordlens/NativeLangMan;->a:Landroid/content/Context;

    sget v1, Lcom/questvisual/wordlens/at;->lang_pack_content_uri:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/questvisual/wordlens/NativeLangMan;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x1

    .line 68
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 75
    sget-object v5, Lcom/questvisual/wordlens/NativeLangMan;->b:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception checking for other Word Lens purchases: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "QV"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "QV"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
