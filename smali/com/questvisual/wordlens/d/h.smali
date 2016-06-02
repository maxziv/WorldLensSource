.class public Lcom/questvisual/wordlens/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final f:Landroid/graphics/Bitmap$CompressFormat;

.field private static h:Z

.field private static synthetic j:[I


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/content/Context;

.field private c:Lcom/questvisual/wordlens/d/j;

.field private e:Z

.field private g:Ljava/lang/String;

.field private i:Lcom/questvisual/wordlens/d/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    .line 57
    const-string v1, "com.twidroid"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 58
    const-string v2, "com.handmark.tweetcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 59
    const-string v2, "com.thedeck.android"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 60
    const-string v2, "com.facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gmail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "email"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/questvisual/wordlens/d/h;->d:[Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/questvisual/wordlens/d/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 141
    sput-boolean v3, Lcom/questvisual/wordlens/d/h;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/questvisual/wordlens/d/j;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/questvisual/wordlens/d/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    iput-object v1, p0, Lcom/questvisual/wordlens/d/h;->c:Lcom/questvisual/wordlens/d/j;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d/h;->e:Z

    .line 76
    iput-object v1, p0, Lcom/questvisual/wordlens/d/h;->g:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    .line 67
    iput-object p1, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/questvisual/wordlens/d/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    iput-object p3, p0, Lcom/questvisual/wordlens/d/h;->c:Lcom/questvisual/wordlens/d/j;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d/h;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    .line 174
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    .line 189
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 199
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_1
    return-object v0

    .line 179
    :cond_1
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v5, v2

    move v2, v1

    move v1, v5

    .line 183
    goto :goto_0

    :cond_2
    move v1, v2

    .line 186
    goto :goto_0

    .line 202
    :cond_3
    const-string v1, "QV"

    const-string v2, "Unable to access external cache. Returning null File object to save to."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/questvisual/wordlens/d/h;Lcom/questvisual/wordlens/d/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    return-void
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    sget-object v2, Lcom/questvisual/wordlens/d/h;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 422
    :goto_1
    return v0

    .line 414
    :cond_0
    aget-object v4, v2, v1

    .line 416
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 414
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 3
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v0, "QV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create file. Share snapshot will be disabled ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/d/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/questvisual/wordlens/d/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/questvisual/wordlens/d/h;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$CompressFormat;->values()[Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/questvisual/wordlens/d/h;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/questvisual/wordlens/d/h;->c()[I

    move-result-object v0

    sget-object v1, Lcom/questvisual/wordlens/d/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const-string v0, "wordLensShareImage.unknown"

    iput-object v0, p0, Lcom/questvisual/wordlens/d/h;->g:Ljava/lang/String;

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->g:Ljava/lang/String;

    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "wordLensShareImage.jpeg"

    iput-object v0, p0, Lcom/questvisual/wordlens/d/h;->g:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "wordLensShareImage.png"

    iput-object v0, p0, Lcom/questvisual/wordlens/d/h;->g:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/questvisual/wordlens/d/h;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->g()V

    return-void
.end method

.method private e()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    .line 99
    sget-boolean v1, Lcom/questvisual/wordlens/d/h;->h:Z

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_0
    return-object v0

    .line 109
    :cond_1
    const-string v1, "QV"

    const-string v2, "Unable to access external cache. Cannot save snapshot."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method private f()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->e()Landroid/content/Intent;

    move-result-object v1

    .line 216
    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 243
    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 228
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->e()Landroid/content/Intent;

    move-result-object v4

    .line 229
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/d/h;->a(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_3
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private g()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    sget v1, Lcom/questvisual/wordlens/at;->share_image_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->f()Ljava/util/List;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 254
    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->c:Lcom/questvisual/wordlens/d/j;

    invoke-interface {v0, v1}, Lcom/questvisual/wordlens/d/j;->a(Landroid/content/Intent;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.has.used.share.feature"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    return-void
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 268
    const/4 v2, 0x0

    .line 270
    :try_start_0
    sget-boolean v1, Lcom/questvisual/wordlens/d/h;->h:Z

    if-eqz v1, :cond_3

    .line 271
    sget-object v1, Lcom/questvisual/wordlens/d/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/d/h;->a(Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;

    move-result-object v3

    .line 272
    if-eqz v3, :cond_0

    .line 276
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v1

    .line 284
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    move v1, v0

    .line 318
    :goto_1
    iput-boolean v1, p0, Lcom/questvisual/wordlens/d/h;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 328
    if-eqz v2, :cond_1

    .line 330
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1
    :goto_2
    move v0, v1

    .line 339
    :cond_2
    :goto_3
    return v0

    .line 280
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    goto :goto_0

    .line 291
    :cond_4
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/WordLensSystem;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
    if-nez v1, :cond_5

    .line 296
    const-string v1, "QV"

    const-string v3, "Unable to get snapshot to share"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 328
    if-eqz v2, :cond_2

    .line 330
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 332
    :catch_0
    move-exception v1

    goto :goto_3

    .line 300
    :cond_5
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 302
    sget-object v4, Lcom/questvisual/wordlens/d/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x46

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 307
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 311
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 314
    const/4 v1, 0x1

    goto :goto_1

    .line 322
    :catch_1
    move-exception v1

    .line 324
    :try_start_5
    const-string v3, "QV"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to open private output file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    if-eqz v2, :cond_2

    .line 330
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 332
    :catch_2
    move-exception v1

    goto :goto_3

    .line 325
    :catch_3
    move-exception v1

    .line 326
    :try_start_7
    const-string v3, "QV"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to write to file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 328
    if-eqz v2, :cond_2

    .line 330
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 332
    :catch_4
    move-exception v1

    goto :goto_3

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    if-eqz v2, :cond_6

    .line 330
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 336
    :cond_6
    :goto_4
    throw v0

    .line 332
    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    goto :goto_4
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/d/h;->e:Z

    .line 429
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 144
    sget-boolean v0, Lcom/questvisual/wordlens/d/h;->h:Z

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/questvisual/wordlens/d/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/d/h;->a(Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/d/h;->a(Ljava/io/File;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/d/h;->a(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/i;->cancel(Z)Z

    .line 434
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/i;->a()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    .line 437
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-boolean v0, p0, Lcom/questvisual/wordlens/d/h;->e:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/questvisual/wordlens/d/h;->g()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    new-instance v0, Lcom/questvisual/wordlens/d/i;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/d/i;-><init>(Lcom/questvisual/wordlens/d/h;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    .line 354
    iget-object v0, p0, Lcom/questvisual/wordlens/d/h;->i:Lcom/questvisual/wordlens/d/i;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
