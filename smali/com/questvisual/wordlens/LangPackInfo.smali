.class public Lcom/questvisual/wordlens/LangPackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAR_UNDERSCORE:Ljava/lang/String; = "_"

.field public static final DEMO_ALL_INSTALLED:I = 0x4

.field public static final DEMO_DISABLED:I = 0x3

.field public static final DEMO_ERASE:I = 0x2

.field public static final DEMO_IAP_TEST:I = 0x5

.field public static final DEMO_OFF:I = 0x0

.field public static final DEMO_RESTORE_PURCHASES:I = 0x6

.field public static final DEMO_REVERSE:I = 0x1

.field private static final LANG_CODE_DEMO:Ljava/lang/String; = "--"

.field private static final TEST_PRODUCT_IDS:[Ljava/lang/String;

.field private static languageNameMap:Ljava/util/Map;

.field private static sAbbrevToAbbrev:Ljava/util/Map;

.field private static sAbbrevToProductIds:Ljava/util/Map;


# instance fields
.field public demoMode:I

.field public destLang:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public srcLang:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    .line 27
    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    .line 205
    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.test.purchase"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.test.canceled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.test.refunded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.test.item_unavailable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->TEST_PRODUCT_IDS:[Ljava/lang/String;

    .line 361
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductIds()V

    .line 31
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductAbbrevs()V

    .line 101
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductIds()V

    .line 31
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductAbbrevs()V

    .line 104
    iput p1, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 105
    iput-object p2, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductIds()V

    .line 31
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductAbbrevs()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 112
    iput-object p1, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private static LangIsInvalid(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "??"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const-string v0, "--"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static descriptionFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "\u21c4"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\u2192"

    goto :goto_0
.end method

.method public static generateBidirectionalDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-static {p0, p1, v0, v0}, Lcom/questvisual/wordlens/LangPackInfo;->generateDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;ZZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iget v0, p1, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :pswitch_0
    iget-object v0, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    .line 170
    iget-object v1, p1, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    .line 171
    if-eqz v0, :cond_0

    if-nez v1, :cond_8

    .line 173
    :cond_0
    const-string v2, "QV"

    const-string v3, "Invalid use of generate description. src and dest lang codes cannot be null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {v0, v1, p2}, Lcom/questvisual/wordlens/LangPackInfo;->descriptionFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    if-eqz p0, :cond_1

    sget v0, Lcom/questvisual/wordlens/at;->store_restore_purchases:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Restore Purchases"

    goto :goto_0

    .line 147
    :pswitch_2
    if-eqz p0, :cond_2

    sget v0, Lcom/questvisual/wordlens/at;->store_empty:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "Store Empty"

    goto :goto_0

    .line 149
    :pswitch_3
    if-eqz p0, :cond_3

    sget v0, Lcom/questvisual/wordlens/at;->store_is_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "Store Disabled"

    goto :goto_0

    .line 152
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget v0, p1, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 155
    if-eqz p0, :cond_5

    sget v0, Lcom/questvisual/wordlens/at;->lang_demo_erasewords:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :goto_2
    iget-object v0, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/questvisual/wordlens/LangPackInfo;->LangIsInvalid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 161
    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v0, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_5
    const-string v0, "Demo: Erase Words"

    goto :goto_1

    .line 157
    :cond_6
    if-eqz p0, :cond_7

    sget v0, Lcom/questvisual/wordlens/at;->lang_demo_reversewords:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v0, "Demo: Reverse Words"

    goto :goto_3

    .line 176
    :cond_8
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 183
    :cond_9
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown locale on device: src="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v0}, Lcom/questvisual/wordlens/LangPackInfo;->lookupLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/questvisual/wordlens/LangPackInfo;->lookupLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/questvisual/wordlens/LangPackInfo;->descriptionFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :cond_a
    invoke-static {v2, v3, p2}, Lcom/questvisual/wordlens/LangPackInfo;->descriptionFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAllInstalledLangPack()Lcom/questvisual/wordlens/LangPackInfo;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x4

    iput v1, v0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 243
    return-object v0
.end method

.method public static getDisabledLangPack()Lcom/questvisual/wordlens/LangPackInfo;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x3

    iput v1, v0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 248
    return-object v0
.end method

.method public static getIAPDebugLangPack(I)Lcom/questvisual/wordlens/LangPackInfo;
    .locals 3
    .parameter

    .prologue
    .line 255
    packed-switch p0, :pswitch_data_0

    .line 269
    const-string v0, "QV"

    const-string v1, "Improper use of IAPDebugLanguagePack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, "Test"

    const-string v2, "Purchase"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_1
    const/4 v1, 0x5

    iput v1, v0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 274
    sget-object v1, Lcom/questvisual/wordlens/LangPackInfo;->TEST_PRODUCT_IDS:[Ljava/lang/String;

    aget-object v1, v1, p0

    iput-object v1, v0, Lcom/questvisual/wordlens/LangPackInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 260
    :pswitch_1
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, "Test"

    const-string v2, "Canceled"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :pswitch_2
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, "Test"

    const-string v2, "Refunded"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :pswitch_3
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, "Test"

    const-string v2, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRestorePurchasesLangPack()Lcom/questvisual/wordlens/LangPackInfo;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x6

    iput v1, v0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 237
    return-object v0
.end method

.method private static initProductAbbrevs()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "en_es"

    const-string v2, "en_es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "es_en"

    const-string v2, "en_es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "en_fr"

    const-string v2, "en_fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "fr_en"

    const-string v2, "en_fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "en_it"

    const-string v2, "en_it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "it_en"

    const-string v2, "en_it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "en_de"

    const-string v2, "en_de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "de_en"

    const-string v2, "en_de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "en_pt"

    const-string v2, "en_pt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "pt_en"

    const-string v2, "en_pt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "en_ru"

    const-string v2, "en_ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    const-string v1, "ru_en"

    const-string v2, "en_ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private static initProductIds()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "en_es"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "es_en"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "en_fr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "fr_en"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "en_it"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "it_en"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "en_de"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "de_en"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "en_pt"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "pt_en"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "en_ru"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    const-string v1, "ru_en"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static isEraseWords(Lcom/questvisual/wordlens/LangPackInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 280
    iget v0, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 212
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    .line 214
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "??"

    const-string v2, "(Unknown)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "en"

    const-string v2, "English"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "es"

    const-string v2, "Spanish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "ru"

    const-string v2, "Russian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "French"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "pt"

    const-string v2, "Portuguese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "ko"

    const-string v2, "Korean"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "it"

    const-string v2, "Italian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    const-string v1, "de"

    const-string v2, "German"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->languageNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    if-nez v0, :cond_1

    const-string v0, "(NULL)"

    :cond_1
    return-object v0
.end method

.method public static normalizeAbbrev(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductAbbrevs()V

    .line 83
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToAbbrev:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    if-nez v0, :cond_1

    .line 85
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to normalize abbreviation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static normalizeAbbrevToProductId(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/questvisual/wordlens/LangPackInfo;->initProductIds()V

    .line 54
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/LangPackInfo;->sAbbrevToProductIds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 55
    if-nez v0, :cond_1

    .line 56
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get product ID for abbreviation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, -0x1

    .line 59
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static parseLangPair(Ljava/lang/String;)Lcom/questvisual/wordlens/LangPackInfo;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 371
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 372
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    const-string v0, "--"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "--"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 381
    :goto_0
    return-object v0

    .line 377
    :cond_1
    new-instance v0, Lcom/questvisual/wordlens/LangPackInfo;

    invoke-direct {v0, v2, v3}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    .line 381
    goto :goto_0

    .line 379
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public equals(Lcom/questvisual/wordlens/LangPackInfo;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iget v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    iget v3, p1, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-ne v2, v3, :cond_5

    .line 297
    iget v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-eqz v2, :cond_1

    .line 298
    if-eqz p2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 305
    iget-object v2, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v0, v1

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 310
    iget-object v2, p1, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    .line 311
    goto :goto_0

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    iget-object v3, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    iget-object v3, p1, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    if-ne p0, p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 326
    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 328
    goto :goto_0

    .line 329
    :cond_3
    check-cast p1, Lcom/questvisual/wordlens/LangPackInfo;

    .line 330
    iget v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    iget v3, p1, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 331
    goto :goto_0

    .line 332
    :cond_4
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 333
    iget-object v2, p1, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 334
    goto :goto_0

    .line 335
    :cond_5
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    iget-object v3, p1, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 336
    goto :goto_0

    .line 337
    :cond_6
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 338
    iget-object v2, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 339
    goto :goto_0

    .line 340
    :cond_7
    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    iget-object v3, p1, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 341
    goto :goto_0
.end method

.method public getAbbreviation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/questvisual/wordlens/LangPackInfo;->generateDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2}, Lcom/questvisual/wordlens/LangPackInfo;->generateDescription(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReverseAbbreviation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLangName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 285
    .line 287
    iget v0, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    add-int/lit8 v0, v0, 0x1f

    .line 288
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 290
    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isDemo()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 350
    iget v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isRestorePurchases()Z
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x6

    iget v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStoreDisabled()Z
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x3

    iget v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStoreEmpty()Z
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x4

    iget v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LangPackInfo: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/LangPackInfo;->destLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
