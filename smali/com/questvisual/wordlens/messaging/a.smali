.class public Lcom/questvisual/wordlens/messaging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[B

.field private b:Lcom/questvisual/wordlens/messaging/g;


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/messaging/g;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/questvisual/wordlens/messaging/a;->b:Lcom/questvisual/wordlens/messaging/g;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/messaging/a;->a:[B

    .line 19
    return-void
.end method

.method protected constructor <init>(Lcom/questvisual/wordlens/messaging/g;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;)V

    .line 23
    iput-object p2, p0, Lcom/questvisual/wordlens/messaging/a;->a:[B

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/questvisual/wordlens/messaging/g;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/questvisual/wordlens/messaging/a;->b:Lcom/questvisual/wordlens/messaging/g;

    return-object v0
.end method

.method protected b()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/questvisual/wordlens/messaging/a;->a:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/questvisual/wordlens/messaging/a;->a:[B

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/questvisual/wordlens/messaging/a;->b:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/questvisual/wordlens/messaging/a;->a:[B

    invoke-static {v1}, Lcom/questvisual/util/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/messaging/a;->b:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/messaging/g;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
