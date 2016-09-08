.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;
.super Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;


# instance fields
.field final synthetic i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    return-void
.end method


# virtual methods
.method public final handleError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    return-void
.end method

.method public final handleNetTimeOutError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    return-void
.end method

.method public final handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 2

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v1, "transStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantSuccess()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "A003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "A004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->i:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    goto :goto_0
.end method
