.class public Lcom/questvisual/wordlens/billing/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/billing/m;->a:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/questvisual/wordlens/billing/m;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lcom/questvisual/wordlens/billing/m;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 80
    sget-object v2, Lcom/questvisual/wordlens/billing/m;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 200
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/a/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :catch_1
    move-exception v0

    .line 205
    const-string v1, "QV"

    const-string v2, "Security: Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 207
    :catch_2
    move-exception v0

    .line 208
    const-string v1, "QV"

    const-string v2, "Security: Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string v2, "QV"

    const-string v3, "Security: data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x0

    .line 187
    :goto_0
    return-object v2

    .line 112
    :cond_0
    const/4 v2, 0x0

    .line 113
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 127
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi1MuRgvVxvYpLwrkl9zQZcuCKlGJzBq6oSqKEt/gbRZem/Wy7LwLT0G8Uf68601ZoHywsYpOaC8zchDe4g5ak+g1NKwsw1pwIti8SNrF7axrpzVuHNXcKRNOBLnXdpD0nOzAS1hZiXHUUEUPvG+GvtSseJcFs9Axoc/C0VW1BTyzWLSgxOlXjZjukdphsOKtancg1yE1BD+M8iwFT2MBLi4JVNfJ9C5jNDSlMfS11DNZJa0ho69DJi4Ir9tltJD3BSjgHH53BgUCdTM6JdjY6M4UUNdWOXqmsXZLsSi/nEvInnGyc31AE4rULaICijg8RtkZTnvav/EZ9cB+TJKcQwIDAQAB"

    .line 128
    invoke-static {v2}, Lcom/questvisual/wordlens/billing/m;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/questvisual/wordlens/billing/m;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 130
    if-nez v2, :cond_1

    .line 131
    const-string v2, "QV"

    const-string v3, "Security: signature does not match data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v10, v2

    .line 138
    :goto_1
    const/4 v2, 0x0

    .line 141
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 145
    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 146
    if-eqz v16, :cond_6

    .line 147
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v11, v2

    .line 153
    :goto_2
    invoke-static {v14, v15}, Lcom/questvisual/wordlens/billing/m;->b(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    const-string v2, "QV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Security: Nonce not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 160
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    if-lt v13, v11, :cond_3

    .line 186
    invoke-static {v14, v15}, Lcom/questvisual/wordlens/billing/m;->a(J)V

    move-object v2, v12

    .line 187
    goto :goto_0

    .line 161
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 162
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 163
    invoke-static {v3}, Lcom/questvisual/wordlens/billing/k;->a(I)Lcom/questvisual/wordlens/billing/k;

    move-result-object v3

    .line 164
    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 167
    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    const/4 v4, 0x0

    .line 169
    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 170
    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    :cond_4
    const-string v9, "developerPayload"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    sget-object v2, Lcom/questvisual/wordlens/billing/k;->a:Lcom/questvisual/wordlens/billing/k;

    if-ne v3, v2, :cond_5

    if-nez v10, :cond_5

    .line 160
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 179
    :cond_5
    new-instance v2, Lcom/questvisual/wordlens/billing/n;

    .line 180
    invoke-direct/range {v2 .. v9}, Lcom/questvisual/wordlens/billing/n;-><init>(Lcom/questvisual/wordlens/billing/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 179
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 182
    :catch_1
    move-exception v2

    .line 183
    const-string v3, "QV"

    const-string v4, "Security: JSON exception: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    move v11, v2

    goto/16 :goto_2

    :cond_7
    move v10, v2

    goto/16 :goto_1
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/questvisual/wordlens/billing/m;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 228
    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 229
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 231
    invoke-static {p2}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const-string v1, "QV"

    const-string v2, "Security: Signature verification failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/a/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    :goto_0
    return v0

    .line 235
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    const-string v1, "QV"

    const-string v2, "Security: NoSuchAlgorithmException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    .line 239
    const-string v1, "QV"

    const-string v2, "Security: Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :catch_2
    move-exception v1

    .line 241
    const-string v1, "QV"

    const-string v2, "Security: Signature exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :catch_3
    move-exception v1

    .line 243
    const-string v1, "QV"

    const-string v2, "Security: Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/questvisual/wordlens/billing/m;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
