.class public final Lcom/b/a/a;
.super Lcom/b/a/q;
.source "SourceFile"


# instance fields
.field a:J

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/b/a/q;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/b/a/q;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Ljava/io/DataInput;)V

    .line 18
    return-void
.end method


# virtual methods
.method final a(Ljava/io/DataInput;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a;->a:J

    .line 49
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/b/a/a;->b:I

    .line 50
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/b/a/a;->c:I

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->d:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/a/a;->e:[B

    .line 55
    iget-object v0, p0, Lcom/b/a/a;->e:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 56
    return-void
.end method
