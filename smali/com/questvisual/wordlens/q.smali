.class public Lcom/questvisual/wordlens/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 5
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    return-object v1

    .line 121
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 122
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v3, v4, :cond_0

    :cond_2
    move-object v1, v0

    .line 123
    goto :goto_0
.end method

.method public static a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 104
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    move v2, p2

    .line 105
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 108
    :goto_1
    invoke-static {p0, v2, v0}, Lcom/questvisual/wordlens/q;->b(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    invoke-static {p0, v2, v0}, Lcom/questvisual/wordlens/q;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 113
    :cond_0
    if-nez v1, :cond_1

    .line 114
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find closest preview size for ar="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxDim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", height="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_1
    return-object v1

    .line 104
    :cond_2
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, p2

    .line 105
    goto :goto_1
.end method

.method public static a(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    return-object v1

    .line 140
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 141
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v3, p1, :cond_0

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt v3, p2, :cond_0

    .line 146
    :cond_2
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v3, v4, :cond_0

    :cond_3
    move-object v1, v0

    .line 147
    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    const-string v0, "ROTATION_0"

    goto :goto_0

    .line 50
    :pswitch_1
    const-string v0, "ROTATION_90"

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "ROTATION_180"

    goto :goto_0

    .line 54
    :pswitch_3
    const-string v0, "ROTATION_270"

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Size: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(FIII)[I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 80
    cmpl-float v2, v2, p0

    if-lez v2, :cond_2

    .line 82
    div-int/lit8 v0, v1, 0x20

    mul-int/lit8 v1, v0, 0x20

    .line 83
    int-to-float v0, v1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x20

    .line 89
    :goto_0
    if-le v1, p2, :cond_0

    .line 90
    add-int/lit8 v1, v1, -0x20

    .line 92
    :cond_0
    if-le v0, p1, :cond_1

    .line 93
    add-int/lit8 v0, v0, -0x20

    .line 95
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2

    .line 86
    :cond_2
    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x20

    .line 87
    int-to-float v1, v0

    div-float/2addr v1, p0

    const/high16 v2, 0x4200

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_0

    .line 65
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 67
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    return-object v1

    .line 155
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 156
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, p1, :cond_0

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v3, p2, :cond_0

    .line 161
    :cond_2
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, v4, :cond_0

    :cond_3
    move-object v1, v0

    .line 162
    goto :goto_0
.end method
