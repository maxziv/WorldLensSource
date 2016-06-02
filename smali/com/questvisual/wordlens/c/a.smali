.class public Lcom/questvisual/wordlens/c/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Landroid/app/ProgressDialog;

.field private h:Lcom/questvisual/wordlens/l;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/questvisual/wordlens/l;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    .line 58
    iput-object p3, p0, Lcom/questvisual/wordlens/c/a;->a:Ljava/lang/String;

    .line 59
    iput p4, p0, Lcom/questvisual/wordlens/c/a;->b:F

    .line 60
    iput-object p5, p0, Lcom/questvisual/wordlens/c/a;->c:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/questvisual/wordlens/c/a;->d:Ljava/lang/String;

    .line 64
    sget v0, Lcom/questvisual/wordlens/at;->send_feedback_url:I

    invoke-virtual {p1, v0}, Lcom/questvisual/wordlens/l;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/c/a;->j:Ljava/lang/String;

    .line 65
    sget v0, Lcom/questvisual/wordlens/at;->send_feedback:I

    invoke-virtual {p1, v0}, Lcom/questvisual/wordlens/l;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/c/a;->i:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/questvisual/wordlens/l;->k()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/ap;->send_feedback_product_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/questvisual/wordlens/c/a;->k:I

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/questvisual/wordlens/c/a;->e:Z

    .line 95
    iput-boolean v1, p0, Lcom/questvisual/wordlens/c/a;->f:Z

    .line 98
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 101
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "email"

    iget-object v5, p0, Lcom/questvisual/wordlens/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "product"

    iget v5, p0, Lcom/questvisual/wordlens/c/a;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "rating"

    iget v5, p0, Lcom/questvisual/wordlens/c/a;->b:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/questvisual/wordlens/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Lcom/questvisual/wordlens/e/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/questvisual/wordlens/c/a;->j:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    .line 124
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 126
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 139
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    :goto_4
    if-nez v2, :cond_6

    .line 149
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v3, "valid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 161
    :goto_5
    :try_start_2
    iget-object v2, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v2, :cond_7

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v1

    .line 194
    :cond_1
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 103
    :cond_2
    :try_start_3
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "email"

    const-string v5, "[empty]"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v2

    .line 190
    :goto_7
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 112
    :cond_3
    :try_start_4
    const-string v0, "[empty]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 171
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 173
    :goto_8
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to encode feedback data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - weird, we thought UTF8 was standard?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v4, "QV"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const-string v1, "ERROR_WL_BUG"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 115
    :cond_4
    :try_start_6
    const-string v0, ""

    goto/16 :goto_2

    .line 118
    :cond_5
    const-string v0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 144
    :cond_6
    :try_start_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto :goto_4

    .line 163
    :cond_7
    const-wide/16 v2, 0x64

    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    .line 164
    :catch_2
    move-exception v2

    .line 166
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_5

    .line 169
    :catch_3
    move-exception v2

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_7

    .line 176
    :catch_4
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 178
    :goto_9
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to send feedback, bad URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/questvisual/wordlens/c/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v4, "QV"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const-string v1, "ERROR_WL_BUG"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 181
    :catch_5
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 183
    :goto_a
    :try_start_b
    const-string v3, "QV"

    const-string v4, "IO error sending feedback. User is probably offline."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/questvisual/wordlens/c/a;->e:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 185
    :catch_6
    move-exception v0

    move v0, v1

    .line 187
    :goto_b
    :try_start_c
    const-string v1, "QV"

    const-string v3, "Unable to parse response from server. Feedback may not have gone through."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/questvisual/wordlens/c/a;->f:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    :goto_c
    if-eqz v2, :cond_8

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_8
    throw v0

    .line 189
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_c

    .line 185
    :catch_7
    move-exception v2

    move-object v2, v0

    move v0, v1

    goto :goto_b

    :catch_8
    move-exception v2

    move-object v2, v0

    move v0, v1

    goto :goto_b

    .line 181
    :catch_9
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    goto :goto_a

    :catch_a
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    goto :goto_a

    .line 176
    :catch_b
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    goto :goto_9

    :catch_c
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    goto :goto_9

    .line 171
    :catch_d
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    goto/16 :goto_8

    :catch_e
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    goto/16 :goto_8

    .line 169
    :catch_f
    move-exception v2

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto/16 :goto_7
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    iput-object v1, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    .line 80
    :cond_0
    iput-object v1, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    .line 81
    return-void
.end method

.method public a(Lcom/questvisual/wordlens/l;)V
    .locals 5
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    .line 85
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/questvisual/wordlens/c/a;->i:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    .line 88
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 202
    iput-object v2, p0, Lcom/questvisual/wordlens/c/a;->g:Landroid/app/ProgressDialog;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    if-eqz v0, :cond_4

    .line 206
    iget-boolean v0, p0, Lcom/questvisual/wordlens/c/a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/questvisual/wordlens/c/a;->f:Z

    if-eqz v0, :cond_2

    .line 207
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/l;->j()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/questvisual/wordlens/at;->feedback_send_failed:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    sget v1, Lcom/questvisual/wordlens/at;->send_feedback:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 210
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/l;->E()V

    .line 218
    :cond_3
    :goto_0
    return-void

    .line 214
    :cond_4
    const-string v0, "BAD, BAD! Submit Feedback Async task finished while activity was not present. Well, is that so bad?"

    .line 215
    const-string v1, "QV"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "ERROR_WL_BUG"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/c/a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/questvisual/wordlens/c/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 72
    iget-object v0, p0, Lcom/questvisual/wordlens/c/a;->h:Lcom/questvisual/wordlens/l;

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/c/a;->a(Lcom/questvisual/wordlens/l;)V

    .line 73
    return-void
.end method
