.class public Lcom/questvisual/wordlens/messaging/e;
.super Lcom/questvisual/wordlens/messaging/a;
.source "SourceFile"


# instance fields
.field public b:D

.field public c:D

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/messaging/g;[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-wide/high16 v0, -0x3c20

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/messaging/a;-><init>(Lcom/questvisual/wordlens/messaging/g;[B)V

    .line 6
    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->b:D

    .line 7
    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->c:D

    .line 8
    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->d:D

    .line 9
    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->e:D

    .line 14
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/questvisual/util/b;->c([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->b:D

    .line 15
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/questvisual/util/b;->c([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->c:D

    .line 16
    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/questvisual/util/b;->c([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->d:D

    .line 17
    const/16 v0, 0x18

    invoke-static {p2, v0}, Lcom/questvisual/util/b;->c([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/questvisual/wordlens/messaging/e;->e:D

    .line 18
    return-void
.end method
