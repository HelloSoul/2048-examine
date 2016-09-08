.class public final Lcom/ipaynow/plugin/api/a;
.super Lcom/ipaynow/plugin/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/MerchantTools;->generatePreSignMessage(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    const-class v3, Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PRE_SIGN_STR"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/conf/a;->c()V

    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->d()Lcom/ipaynow/plugin/core/a/a;

    move-result-object v3

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    sput-object p1, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u5148\u8c03\u7528\u63d2\u4ef6\u521d\u59cb\u5316\u65b9\u6cd5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "main"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u8bf7\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\u63d2\u4ef6"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setMainThreadFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setMainThreadFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    :cond_3
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isAddAllPermission()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3, p1}, Lcom/ipaynow/plugin/core/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u8bf7\u5728AndroidManifest\u4e2d\u6dfb\u52a0\u6240\u9700\u6743\u9650"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddAllPermissionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddAllPermissionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    :cond_5
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isUsePreSignTools()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isAddMustRequestParams()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u5fc5\u4f20\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/e;->d(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u652f\u4ed8\u4fe1\u606f\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iput-object p2, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    :cond_9
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isUsePreSignTools()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v1

    :goto_2
    if-nez v0, :cond_14

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u5fc5\u4f20\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    goto :goto_2

    :cond_b
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderName:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    goto :goto_2

    :cond_c
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderType:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v1

    goto :goto_2

    :cond_d
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtCurrencyType:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v0, v1

    goto :goto_2

    :cond_e
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v0, v1

    goto :goto_2

    :cond_f
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderDetail:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v0, v1

    goto :goto_2

    :cond_10
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderStartTime:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v0, v1

    goto :goto_2

    :cond_11
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->notifyUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v1

    goto :goto_2

    :cond_12
    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtCharset:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_2

    :cond_13
    move v0, v2

    goto :goto_2

    :cond_14
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u672a\u6dfb\u52a0\u8be5\u652f\u4ed8\u6e20\u9053\u5b50\u5305"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE012:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE012:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u672a\u6dfb\u52a0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u6e20\u9053\u5b50\u5305"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/plugin/core/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u6dfb\u52a0\u89c6\u56fe\u63a7\u4ef6\u5b50\u5305/\u6216\u4f20\u5165\u975e\u7a7a\u652f\u4ed8\u6e20\u9053\u6807\u8bc6"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE013:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE013:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5fae\u4fe1\u5ba2\u6237\u7aef\u672a\u5b89\u88c5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatInstalledFlag(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatInstalledFlag(Z)V

    :cond_19
    :goto_3
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatPaySupportVersion()Z

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPaySupportVersionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPayInstalledFlag(Z)V

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPaySupportVersionFlag(Z)V

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatPluginPluginInstalled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_4
    if-nez v0, :cond_1e

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8be5\u5fae\u4fe1\u5ba2\u6237\u7aef\u7248\u672c\u4e0d\u652f\u6301\u8be5\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE008:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE008:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPluginPaySupportVersionFlag(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatInstalledFlag(Z)V

    goto :goto_3

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1c
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPluginPaySupportVersionFlag(Z)V

    :cond_1d
    :goto_5
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isSoLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/ipaynow/plugin/manager/c/a;->y()Lcom/ipaynow/plugin/manager/c/a;

    invoke-static {}, Lcom/ipaynow/plugin/manager/c/a;->z()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    sget-object v3, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u52a0\u8f7d\u52a8\u6001\u5e93\u5931\u8d25"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setSoLibraryLoaded(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPluginPaySupportVersionFlag(Z)V

    goto :goto_5

    :cond_1f
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setSoLibraryLoaded(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-virtual {v4, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setRequestParams(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method public final modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 0

    return-void
.end method
