.class final Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;
.super Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;


# instance fields
.field final synthetic m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-direct {p0}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)V

    return-void
.end method


# virtual methods
.method public final handleError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    return-void
.end method

.method public final handleNetTimeOutError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5fae\u4fe1\u4ea4\u6613\u67e5\u8be2\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    return-void
.end method

.method public final handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v1, "transStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A001"

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantSuccess()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "A003"

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "A004"

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    goto :goto_0
.end method
