.class public Lcom/questvisual/wordlens/messaging/MessageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;

.field private static synthetic b:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    .line 176
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    invoke-static {}, Lcom/questvisual/wordlens/messaging/MessageManager;->subscribeAllMessagesNative()V

    .line 176
    monitor-exit v1

    .line 182
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/questvisual/wordlens/messaging/a;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    sget-object v1, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/a;->a()Lcom/questvisual/wordlens/messaging/g;

    move-result-object v0

    .line 61
    sget-object v2, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 62
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 64
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/messaging/b;

    .line 66
    invoke-interface {v0, p0}, Lcom/questvisual/wordlens/messaging/b;->a(Lcom/questvisual/wordlens/messaging/a;)V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/questvisual/wordlens/messaging/b;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    sget-object v1, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    monitor-exit v1

    .line 52
    return-void

    .line 46
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/questvisual/wordlens/messaging/b;[Lcom/questvisual/wordlens/messaging/g;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 27
    sget-object v2, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    monitor-enter v2

    .line 28
    :try_start_0
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 27
    monitor-exit v2

    .line 42
    return-void

    .line 28
    :cond_0
    aget-object v4, p1, v1

    .line 29
    sget-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 30
    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    sget-object v5, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/questvisual/wordlens/messaging/c;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/c;->ordinal()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/questvisual/wordlens/messaging/MessageManager;->createAndPostGUIInputMessageNative(IFF)V

    .line 102
    monitor-exit v1

    .line 105
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/questvisual/wordlens/messaging/g;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/questvisual/wordlens/messaging/a;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/a;)V

    .line 56
    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/messaging/g;->values()[Lcom/questvisual/wordlens/messaging/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->t:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_16

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->u:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_15

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->v:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_14

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->w:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_13

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->f:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_12

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->e:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_11

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->s:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_10

    :goto_7
    :try_start_7
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->c:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_f

    :goto_8
    :try_start_8
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->d:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_e

    :goto_9
    :try_start_9
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->a:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_d

    :goto_a
    :try_start_a
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->b:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c

    :goto_b
    :try_start_b
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->n:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_c
    :try_start_c
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->m:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_a

    :goto_d
    :try_start_d
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->l:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_9

    :goto_e
    :try_start_e
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->p:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_8

    :goto_f
    :try_start_f
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->j:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_7

    :goto_10
    :try_start_10
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->k:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_6

    :goto_11
    :try_start_11
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->i:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_5

    :goto_12
    :try_start_12
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->o:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_4

    :goto_13
    :try_start_13
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->r:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_3

    :goto_14
    :try_start_14
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->q:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2

    :goto_15
    :try_start_15
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->h:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1

    :goto_16
    :try_start_16
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->g:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_0

    :goto_17
    sput-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->b:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_17

    :catch_1
    move-exception v1

    goto :goto_16

    :catch_2
    move-exception v1

    goto :goto_15

    :catch_3
    move-exception v1

    goto :goto_14

    :catch_4
    move-exception v1

    goto :goto_13

    :catch_5
    move-exception v1

    goto :goto_12

    :catch_6
    move-exception v1

    goto :goto_11

    :catch_7
    move-exception v1

    goto :goto_10

    :catch_8
    move-exception v1

    goto :goto_f

    :catch_9
    move-exception v1

    goto :goto_e

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v1

    goto/16 :goto_c

    :catch_c
    move-exception v1

    goto/16 :goto_b

    :catch_d
    move-exception v1

    goto/16 :goto_a

    :catch_e
    move-exception v1

    goto/16 :goto_9

    :catch_f
    move-exception v1

    goto/16 :goto_8

    :catch_10
    move-exception v1

    goto/16 :goto_7

    :catch_11
    move-exception v1

    goto/16 :goto_6

    :catch_12
    move-exception v1

    goto/16 :goto_5

    :catch_13
    move-exception v1

    goto/16 :goto_4

    :catch_14
    move-exception v1

    goto/16 :goto_3

    :catch_15
    move-exception v1

    goto/16 :goto_2

    :catch_16
    move-exception v1

    goto/16 :goto_1
.end method

.method private static native createAndPostGUIInputMessageNative(IFF)V
.end method

.method private static postMessageFromNative(I[B)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 118
    sget-object v1, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/questvisual/wordlens/messaging/g;->a(I)Lcom/questvisual/wordlens/messaging/g;

    move-result-object v2

    .line 120
    if-nez v2, :cond_0

    .line 121
    const-string v0, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessageManager dropping message for unknown native enum value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v1

    .line 169
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/messaging/MessageManager;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 129
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-static {}, Lcom/questvisual/wordlens/messaging/MessageManager;->b()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 158
    :pswitch_0
    monitor-exit v1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/questvisual/wordlens/messaging/a;

    invoke-direct {v0, v2}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;)V

    .line 161
    :goto_1
    :pswitch_2
    if-eqz v0, :cond_1

    .line 162
    invoke-static {v0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/a;)V

    .line 118
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v0, Lcom/questvisual/wordlens/messaging/d;

    invoke-direct {v0, v2, p1}, Lcom/questvisual/wordlens/messaging/d;-><init>(Lcom/questvisual/wordlens/messaging/g;[B)V

    goto :goto_1

    .line 146
    :pswitch_4
    new-instance v0, Lcom/questvisual/wordlens/messaging/f;

    invoke-direct {v0, v2, p1}, Lcom/questvisual/wordlens/messaging/f;-><init>(Lcom/questvisual/wordlens/messaging/g;[B)V

    goto :goto_1

    .line 149
    :pswitch_5
    new-instance v0, Lcom/questvisual/wordlens/messaging/e;

    invoke-direct {v0, v2, p1}, Lcom/questvisual/wordlens/messaging/e;-><init>(Lcom/questvisual/wordlens/messaging/g;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static native subscribeAllMessagesNative()V
.end method
