// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.text.TextUtils;
import android.util.Log;
import com.a.a.a.a.a;
import com.a.a.a.a.b;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.questvisual.wordlens.billing:
//            k, n

public class m
{

    private static final SecureRandom a = new SecureRandom();
    private static HashSet b = new HashSet();

    public static long a()
    {
        long l = a.nextLong();
        b.add(Long.valueOf(l));
        return l;
    }

    public static PublicKey a(String s)
    {
        PublicKey publickey;
        try
        {
            byte abyte0[] = com.a.a.a.a.a.a(s);
            publickey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(abyte0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            Log.e("QV", "Security: Invalid key specification.");
            throw new IllegalArgumentException(invalidkeyspecexception);
        }
        catch (b b1)
        {
            Log.e("QV", "Security: Base64 decoding failed.");
            throw new IllegalArgumentException(b1);
        }
        return publickey;
    }

    public static ArrayList a(String s, String s1)
    {
        int i1;
        if (s == null)
        {
            Log.e("QV", "Security: data is null");
            return null;
        }
        boolean flag;
        long l;
        JSONArray jsonarray;
        int i;
        int j;
        ArrayList arraylist;
        JSONException jsonexception1;
        JSONObject jsonobject1;
        k k1;
        String s2;
        long l1;
        String s3;
        boolean flag1;
        String s4;
        String s5;
        if (!TextUtils.isEmpty(s1))
        {
            boolean flag2 = a(a("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi1MuRgvVxvYpLwrkl9zQZcuCKlGJzBq6oSqKEt/gbRZem/Wy7LwLT0G8Uf68601ZoHywsYpOaC8zchDe4g5ak+g1NKwsw1pwIti8SNrF7axrpzVuHNXcKRNOBLnXdpD0nOzAS1hZiXHUUEUPvG+GvtSseJcFs9Axoc/C0VW1BTyzWLSgxOlXjZjukdphsOKtancg1yE1BD+M8iwFT2MBLi4JVNfJ9C5jNDSlMfS11DNZJa0ho69DJi4Ir9tltJD3BSjgHH53BgUCdTM6JdjY6M4UUNdWOXqmsXZLsSi/nEvInnGyc31AE4rULaICijg8RtkZTnvav/EZ9cB+TJKcQwIDAQAB"), s, s1);
            if (!flag2)
            {
                Log.w("QV", "Security: signature does not match data.");
                return null;
            }
            flag = flag2;
        } else
        {
            flag = false;
        }
        try
        {
            JSONObject jsonobject = new JSONObject(s);
            l = jsonobject.optLong("nonce");
            jsonarray = jsonobject.optJSONArray("orders");
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        i = jsonarray.length();
        j = i;
_L3:
        if (!b(l))
        {
            Log.w("QV", (new StringBuilder("Security: Nonce not found: ")).append(l).toString());
            return null;
        }
        arraylist = new ArrayList();
        i1 = 0;
_L4:
        if (i1 >= j)
        {
            a(l);
            return arraylist;
        }
        try
        {
            jsonobject1 = jsonarray.getJSONObject(i1);
            k1 = com.questvisual.wordlens.billing.k.a(jsonobject1.getInt("purchaseState"));
            s2 = jsonobject1.getString("productId");
            jsonobject1.getString("packageName");
            l1 = jsonobject1.getLong("purchaseTime");
            s3 = jsonobject1.optString("orderId", "");
            flag1 = jsonobject1.has("notificationId");
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception1)
        {
            Log.e("QV", "Security: JSON exception: ", jsonexception1);
            return null;
        }
        s4 = null;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_240;
        }
        s4 = jsonobject1.getString("notificationId");
        s5 = jsonobject1.optString("developerPayload", null);
        if (k1 == com.questvisual.wordlens.billing.k.a && !flag)
        {
            break MISSING_BLOCK_LABEL_318;
        }
        arraylist.add(new n(k1, s4, s2, s3, l1, s5));
        break MISSING_BLOCK_LABEL_318;
_L2:
        j = 0;
          goto _L3
        i1++;
          goto _L4
    }

    public static void a(long l)
    {
        b.remove(Long.valueOf(l));
    }

    public static boolean a(PublicKey publickey, String s, String s1)
    {
label0:
        {
            try
            {
                Signature signature = Signature.getInstance("SHA1withRSA");
                signature.initVerify(publickey);
                signature.update(s.getBytes());
                if (signature.verify(com.a.a.a.a.a.a(s1)))
                {
                    break label0;
                }
                Log.e("QV", "Security: Signature verification failed.");
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                Log.e("QV", "Security: NoSuchAlgorithmException.");
                return false;
            }
            catch (InvalidKeyException invalidkeyexception)
            {
                Log.e("QV", "Security: Invalid key specification.");
                return false;
            }
            catch (SignatureException signatureexception)
            {
                Log.e("QV", "Security: Signature exception.");
                return false;
            }
            catch (b b1)
            {
                Log.e("QV", "Security: Base64 decoding failed.");
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean b(long l)
    {
        return b.contains(Long.valueOf(l));
    }

}
