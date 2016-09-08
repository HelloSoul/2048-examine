.class public Ltk/woppo/mgame/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 37
    .end local p0    # "str":Ljava/lang/String;
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    return-object p0

    .line 17
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 20
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 22
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 30
    .local v0, "byteArray":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v3, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-lt v2, v5, :cond_1

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 23
    .end local v0    # "byteArray":[B
    .end local v2    # "i":I
    .end local v3    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 25
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 26
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 32
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "byteArray":[B
    .restart local v2    # "i":I
    .restart local v3    # "md5StrBuff":Ljava/lang/StringBuffer;
    :cond_1
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 33
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 35
    :cond_2
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
