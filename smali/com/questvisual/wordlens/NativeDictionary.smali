.class public Lcom/questvisual/wordlens/NativeDictionary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/questvisual/wordlens/NativeDictionary;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Lcom/questvisual/wordlens/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/NativeDictionary;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/NativeDictionary;->a:Lcom/questvisual/wordlens/ae;

    .line 32
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->initNative()V

    .line 33
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_0
    invoke-static {}, Lcom/questvisual/wordlens/NativeDictionary;->saveOffCurrentPhraseSelectionNative()V

    .line 67
    monitor-exit v1

    .line 70
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()Lcom/questvisual/wordlens/NativeDictionary;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/questvisual/wordlens/NativeDictionary;

    invoke-direct {v0}, Lcom/questvisual/wordlens/NativeDictionary;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    .line 166
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/NativeDictionary;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    sget-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lcom/questvisual/wordlens/NativeDictionary;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 174
    sget-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    invoke-direct {v0}, Lcom/questvisual/wordlens/NativeDictionary;->teardownNative()V

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/NativeDictionary;->b:Lcom/questvisual/wordlens/NativeDictionary;

    .line 172
    :cond_0
    :goto_0
    monitor-exit v1

    .line 182
    return-void

    .line 179
    :cond_1
    const-string v0, "QV"

    const-string v2, "Already another user of dictionary. Will not release at this time."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native getDictResultNative(I)Lcom/questvisual/wordlens/DictResultEntry;
.end method

.method private native getNumResultsNative()I
.end method

.method private native initNative()V
.end method

.method private native postSearchNative()V
.end method

.method private native preSearchNative()V
.end method

.method private returnOCRStringToUI([B)V
    .locals 5
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    .line 85
    iget-object v0, v0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/questvisual/wordlens/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/questvisual/wordlens/NativeDictionary;->a:Lcom/questvisual/wordlens/ae;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/questvisual/wordlens/NativeDictionary;->a:Lcom/questvisual/wordlens/ae;

    invoke-interface {v1, v0}, Lcom/questvisual/wordlens/ae;->a(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void

    .line 90
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 91
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find desired encoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", using system default instead"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, ""

    goto :goto_0
.end method

.method private static native saveOffCurrentPhraseSelectionNative()V
.end method

.method private native searchByOCRSelectionNative()V
.end method

.method private native searchByUserInputNative([B)V
.end method

.method private native setGiveOneMeaningOnlyNative(Z)V
.end method

.method private native teardownNative()V
.end method


# virtual methods
.method public a(I)Lcom/questvisual/wordlens/DictResultEntry;
    .locals 2
    .parameter

    .prologue
    .line 149
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/NativeDictionary;->getDictResultNative(I)Lcom/questvisual/wordlens/DictResultEntry;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/NativeDictionary;->setGiveOneMeaningOnlyNative(Z)V

    .line 51
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->preSearchNative()V

    .line 58
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->searchByOCRSelectionNative()V

    .line 60
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->postSearchNative()V

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string v0, "dict_poke_a_word"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 64
    return-void

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/questvisual/wordlens/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/questvisual/wordlens/NativeDictionary;->a:Lcom/questvisual/wordlens/ae;

    .line 107
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->preSearchNative()V

    .line 119
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    .line 122
    iget-object v2, v0, Lcom/questvisual/wordlens/LangPackInfo;->srcLang:Ljava/lang/String;

    invoke-static {v2}, Lcom/questvisual/wordlens/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v0}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/NativeDictionary;->setGiveOneMeaningOnlyNative(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/NativeDictionary;->searchByUserInputNative([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->postSearchNative()V

    .line 115
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    const-string v0, "dict_user_entry"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 146
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported encoding convertin user dict search test for charset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Strange? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v2, "QV"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v2, "ERROR_WL_BUG"

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/NativeDictionary;->getNumResultsNative()I

    move-result v0

    monitor-exit v1

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
