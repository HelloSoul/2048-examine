.class public Ltk/woppo/mgame/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "server_url"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 38
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 40
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 41
    .local v8, "temp":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .local v7, "resp":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 45
    invoke-static {v5}, Ltk/woppo/mgame/HttpUtil;->setHttpCommonParams(Ljava/net/HttpURLConnection;)V

    .line 46
    const-string v10, "POST"

    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 48
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v10, v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v4, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 51
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v12, 0xc8

    if-ne v10, v12, :cond_1

    .line 52
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    if-nez v8, :cond_0

    .line 71
    const/4 v3, 0x0

    .line 72
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 73
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v9    # "url":Ljava/net/URL;
    :goto_1
    return-object v10

    .line 54
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_0
    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 62
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .local v6, "e":Ljava/net/MalformedURLException;
    :goto_2
    :try_start_4
    const-string v10, "net error"

    const-string v12, "\u7f51\u7edc\u5730\u5740\u89e3\u6790\u9519\u8bef"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v10, v11

    .line 63
    goto :goto_1

    .line 57
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_1
    :try_start_5
    const-string v10, "\u7f51\u7edc\u5f02\u5e38"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u54cd\u5e94\u7801:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 71
    const/4 v3, 0x0

    .line 72
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v10, v11

    .line 59
    goto :goto_1

    .line 64
    .end local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 65
    .local v6, "e":Ljava/net/ProtocolException;
    :goto_3
    :try_start_6
    const-string v10, "net error"

    const-string v12, "HTTP\u65b9\u6cd5\u540d\u8bbe\u7f6e\u9519\u8bef"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v10, v11

    .line 66
    goto :goto_1

    .line 67
    .end local v6    # "e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v6

    .line 68
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v10, "net error"

    const-string v12, "\u7f51\u7edc\u8f93\u51fa\u6d41\u6253\u5f00\u5931\u8d25"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v10, v11

    .line 69
    goto :goto_1

    .line 70
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 71
    :goto_5
    const/4 v3, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    throw v10

    .line 70
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_5

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 67
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 64
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 61
    .end local v9    # "url":Ljava/net/URL;
    :catch_7
    move-exception v6

    goto :goto_2

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_8
    move-exception v6

    move-object v3, v4

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private static setHttpCommonParams(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/16 v1, 0x7530

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 19
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 20
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 21
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 23
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
