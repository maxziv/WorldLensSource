.class public abstract Lcom/questvisual/wordlens/billing/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:[Ljava/lang/Class;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/reflect/Method;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 36
    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lcom/questvisual/wordlens/billing/i;->e:[Ljava/lang/Class;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/questvisual/wordlens/billing/i;->a:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/questvisual/wordlens/billing/i;->b:Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Lcom/questvisual/wordlens/billing/i;->c()V

    .line 43
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    .line 106
    sget-object v2, Lcom/questvisual/wordlens/billing/i;->e:[Ljava/lang/Class;

    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/billing/i;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iput-object v3, p0, Lcom/questvisual/wordlens/billing/i;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    iput-object v3, p0, Lcom/questvisual/wordlens/billing/i;->c:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/questvisual/wordlens/billing/i;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/questvisual/wordlens/billing/i;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "QV"

    const-string v2, "PurchaseObserver: error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    const-string v1, "QV"

    const-string v2, "PurchaseObserver: error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract a(Lcom/questvisual/wordlens/billing/g;Lcom/questvisual/wordlens/billing/l;)V
.end method

.method public abstract a(Lcom/questvisual/wordlens/billing/h;Lcom/questvisual/wordlens/billing/l;)V
.end method

.method public abstract a(Z)V
.end method

.method b()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/questvisual/wordlens/billing/i;->b:Landroid/os/Handler;

    new-instance v1, Lcom/questvisual/wordlens/billing/j;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/billing/j;-><init>(Lcom/questvisual/wordlens/billing/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method