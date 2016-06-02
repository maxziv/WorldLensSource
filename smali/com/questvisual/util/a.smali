.class public Lcom/questvisual/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 34
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    .line 35
    rem-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public static a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    rem-int v0, p0, p1

    .line 26
    if-ltz v0, :cond_0

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    sub-int v0, p0, p1

    add-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x168

    invoke-static {v0, v1}, Lcom/questvisual/util/a;->a(II)I

    move-result v0

    add-int/lit16 v0, v0, -0xb4

    return v0
.end method
