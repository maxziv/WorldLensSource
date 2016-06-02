.class Lcom/questvisual/wordlens/a/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/a/c;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/a/c;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->b(Lcom/questvisual/wordlens/a/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 261
    :goto_1
    return-void

    .line 127
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 128
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Landroid/hardware/Camera;)V

    .line 129
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Lcom/questvisual/wordlens/a/e;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera Runtime Exception in handleMessage(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object v1, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 133
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :try_start_3
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 137
    :try_start_4
    iget-object v1, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Ljava/io/IOException;)V

    goto :goto_0

    .line 142
    :pswitch_3
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 151
    :pswitch_5
    :try_start_5
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 152
    :catch_2
    move-exception v0

    .line 153
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :pswitch_6
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Ljava/lang/RuntimeException;)V

    .line 168
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0

    .line 172
    :pswitch_7
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 176
    :pswitch_8
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 180
    :pswitch_9
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 184
    :pswitch_a
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 188
    :pswitch_b
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 192
    :pswitch_c
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 201
    :pswitch_d
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 205
    :pswitch_e
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 222
    :pswitch_f
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 226
    :pswitch_10
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Ljava/lang/RuntimeException;)V

    .line 227
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v0}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 231
    :pswitch_11
    iget-object v0, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    iget-object v1, p0, Lcom/questvisual/wordlens/a/d;->a:Lcom/questvisual/wordlens/a/c;

    invoke-static {v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/a/c;->a(Lcom/questvisual/wordlens/a/c;Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
