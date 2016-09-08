.class public final Lcom/ipaynow/plugin/manager/a/a;
.super Ljava/lang/Object;


# instance fields
.field private aa:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/a/a;-><init>()V

    return-void
.end method

.method public static m()Lcom/ipaynow/plugin/manager/a/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/a/b;->n()Lcom/ipaynow/plugin/manager/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "funcode"

    sget-object v2, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->getFuncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "nowPayOrderNo"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "orderSysReserveSign"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "deviceType"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    invoke-static {v0, v3, v3}, Lcom/ipaynow/plugin/utils/StringUtils;->createFormString(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "funcode"

    sget-object v2, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->getFuncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "mhtCharset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "mhtSignature"

    iget-object v2, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lcom/ipaynow/plugin/utils/StringUtils;->createFormString(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/d;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/NativeUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/NativeUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    const-string v1, "mhtSignType"

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/a/a;->aa:Ljava/util/HashMap;

    invoke-static {v0, v4, v4}, Lcom/ipaynow/plugin/utils/StringUtils;->createFormString(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
