.class public Lcom/questvisual/wordlens/messaging/f;
.super Lcom/questvisual/wordlens/messaging/a;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/messaging/g;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;[B)V

    .line 9
    const/4 v1, 0x0

    iput v1, p0, Lcom/questvisual/wordlens/messaging/f;->b:F

    .line 10
    iput-boolean v0, p0, Lcom/questvisual/wordlens/messaging/f;->c:Z

    .line 14
    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/f;->b()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/questvisual/util/b;->b([BI)F

    move-result v1

    iput v1, p0, Lcom/questvisual/wordlens/messaging/f;->b:F

    .line 15
    invoke-virtual {p0}, Lcom/questvisual/wordlens/messaging/f;->b()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/questvisual/util/b;->a([BI)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/questvisual/wordlens/messaging/f;->c:Z

    .line 16
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
