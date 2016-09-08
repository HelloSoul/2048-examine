.class public final Lcom/ipaynow/plugin/core/a/a;
.super Ljava/lang/Object;


# instance fields
.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->m:Ljava/util/ArrayList;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->m:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->m:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v4

    invoke-static {p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->isAlipayPluginInstalled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAlipayPluginInstalledFlag(Z)V

    sget-object v3, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    :goto_1
    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->e()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setBaiduPayPluginInstalledFlag(Z)V

    sget-object v5, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->isQqPayPluginInstalled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPayPluginInstalledFlag(Z)V

    sget-object v5, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    :cond_1
    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->f()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setUpmpPayPluginInstalledFlag(Z)V

    sget-object v5, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v2

    :cond_2
    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->g()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatWapPluginInstalledFlag(Z)V

    sget-object v5, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v2

    :cond_3
    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->h()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPluginPluginInstalledFlag(Z)V

    sget-object v4, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v4}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    return v1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.tencent.mm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static d()Lcom/ipaynow/plugin/core/a/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/core/a/b;->j()Lcom/ipaynow/plugin/core/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static e()Z
    .locals 1

    :try_start_0
    const-string v0, "com.baidu.paysdk.api.BaiduPay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Z
    .locals 1

    :try_start_0
    const-string v0, "com.unionpay.UPPayAssistEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Z
    .locals 1

    :try_start_0
    const-string v0, "com.ipaynow.plugin.inner_plugin.wechatwp.activity.WeChatNotifyActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h()Z
    .locals 1

    :try_start_0
    const-string v0, "com.ipaynow.plugin.inner_plugin.wechatpg.activity.WXPayActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->isViewPluginInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setViewPluginInstalled(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isAlipayPluginInstalled()Z
    .locals 1

    :try_start_0
    const-string v0, "com.alipay.sdk.app.PayTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isQqPayPluginInstalled()Z
    .locals 1

    :try_start_0
    const-string v0, "com.ipaynow.plugin.inner_plugin.qqwp.activity.QQWapPayActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewPluginInstalled()Z
    .locals 1

    :try_start_0
    const-string v0, "com.ipaynow.plugin.view.template.layout.PayMethodUI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/core/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_3

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v6, v4

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_0

    aget-object v7, v4, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move v0, v1

    goto :goto_1
.end method
