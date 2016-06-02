// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


public class DictResultEntry
{

    public boolean isBest;
    public boolean isBigram;
    public byte sourcePhraseStr[];
    public byte transPhraseStr[];

    public DictResultEntry()
    {
    }

    public String toString()
    {
        return (new StringBuilder("Src: ")).append(sourcePhraseStr).append(", Trans: ").append(transPhraseStr).append(", best?=").append(isBest).toString();
    }
}
