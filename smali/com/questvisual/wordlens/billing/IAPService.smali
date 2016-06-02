.class public Lcom/questvisual/wordlens/billing/IAPService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/a/a/a/a;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/billing/IAPService;->b:Ljava/util/LinkedList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lcom/questvisual/wordlens/billing/IAPService;->c:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {p2, p3}, Lcom/questvisual/wordlens/billing/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/questvisual/wordlens/billing/IAPService;->a(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/billing/n;

    .line 148
    iget-object v1, v0, Lcom/questvisual/wordlens/billing/n;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, v0, Lcom/questvisual/wordlens/billing/n;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_3
    iget-object v1, v0, Lcom/questvisual/wordlens/billing/n;->a:Lcom/questvisual/wordlens/billing/k;

    iget-object v2, v0, Lcom/questvisual/wordlens/billing/n;->c:Ljava/lang/String;

    .line 152
    iget-object v3, v0, Lcom/questvisual/wordlens/billing/n;->d:Ljava/lang/String;

    iget-wide v4, v0, Lcom/questvisual/wordlens/billing/n;->e:J

    iget-object v6, v0, Lcom/questvisual/wordlens/billing/n;->f:Ljava/lang/String;

    move-object v0, p0

    .line 151
    invoke-static/range {v0 .. v6}, Lcom/questvisual/wordlens/billing/a;->a(Landroid/content/Context;Lcom/questvisual/wordlens/billing/k;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private a(JLcom/questvisual/wordlens/billing/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/questvisual/wordlens/billing/IAPService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/billing/c;

    .line 162
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p3}, Lcom/questvisual/wordlens/billing/c;->a(Lcom/questvisual/wordlens/billing/l;)V

    .line 168
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/billing/IAPService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 67
    const-string v0, "QV"

    const-string v1, "IAPService.handleCommand() received null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "com.questvisual.wordlens.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-direct {p0, p2, v0}, Lcom/questvisual/wordlens/billing/IAPService;->a(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "com.questvisual.wordlens.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/questvisual/wordlens/billing/IAPService;->b(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 80
    :cond_3
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-direct {p0, p2, v0, v1}, Lcom/questvisual/wordlens/billing/IAPService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_4
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    const-string v2, "response_code"

    .line 87
    sget-object v3, Lcom/questvisual/wordlens/billing/l;->g:Lcom/questvisual/wordlens/billing/l;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/billing/l;->ordinal()I

    move-result v3

    .line 86
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 88
    invoke-static {v2}, Lcom/questvisual/wordlens/billing/l;->a(I)Lcom/questvisual/wordlens/billing/l;

    move-result-object v2

    .line 89
    invoke-direct {p0, v0, v1, v2}, Lcom/questvisual/wordlens/billing/IAPService;->a(JLcom/questvisual/wordlens/billing/l;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lcom/questvisual/wordlens/billing/IAPService;->a:Lcom/a/a/a/a;

    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/questvisual/wordlens/billing/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/questvisual/wordlens/billing/e;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/e;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/questvisual/wordlens/billing/IAPService;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/questvisual/wordlens/billing/IAPService;->g()Z

    move-result v0

    return v0
.end method

.method private b(I[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/questvisual/wordlens/billing/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/questvisual/wordlens/billing/f;-><init>(Lcom/questvisual/wordlens/billing/IAPService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/f;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/questvisual/wordlens/billing/IAPService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e()Lcom/a/a/a/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/questvisual/wordlens/billing/IAPService;->a:Lcom/a/a/a/a;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/questvisual/wordlens/billing/IAPService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 103
    .line 104
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p0, v1, p0, v2}, Lcom/questvisual/wordlens/billing/IAPService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 108
    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return v0

    .line 111
    :cond_0
    const-string v0, "QV"

    const-string v1, "IAPService: Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IAPService: Security exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 172
    const/4 v0, -0x1

    move v1, v0

    .line 174
    :cond_0
    :goto_0
    sget-object v0, Lcom/questvisual/wordlens/billing/IAPService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questvisual/wordlens/billing/c;

    if-nez v0, :cond_2

    .line 195
    if-ltz v1, :cond_1

    .line 199
    invoke-virtual {p0, v1}, Lcom/questvisual/wordlens/billing/IAPService;->stopSelf(I)V

    .line 201
    :cond_1
    :goto_1
    return-void

    .line 175
    :cond_2
    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/c;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    sget-object v2, Lcom/questvisual/wordlens/billing/IAPService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 181
    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/c;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/c;->a()I

    move-result v0

    move v1, v0

    .line 184
    goto :goto_0

    .line 187
    :cond_3
    invoke-direct {p0}, Lcom/questvisual/wordlens/billing/IAPService;->g()Z

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/billing/IAPService;->attachBaseContext(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/questvisual/wordlens/billing/d;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/billing/d;-><init>(Lcom/questvisual/wordlens/billing/IAPService;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/d;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/questvisual/wordlens/billing/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/questvisual/wordlens/billing/g;-><init>(Lcom/questvisual/wordlens/billing/IAPService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/g;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/questvisual/wordlens/billing/h;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/billing/h;-><init>(Lcom/questvisual/wordlens/billing/IAPService;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/billing/h;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/questvisual/wordlens/billing/IAPService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-static {p2}, Lcom/a/a/a/b;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/questvisual/wordlens/billing/IAPService;->a:Lcom/a/a/a/a;

    .line 213
    invoke-direct {p0}, Lcom/questvisual/wordlens/billing/IAPService;->h()V

    .line 214
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    const-string v0, "QV"

    const-string v1, "IAPService: Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    sput-object v0, Lcom/questvisual/wordlens/billing/IAPService;->a:Lcom/a/a/a/a;

    .line 223
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/billing/IAPService;->a(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method
