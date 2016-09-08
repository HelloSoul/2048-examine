.class final Lcom/ipaynow/plugin/presenter/g;
.super Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;


# instance fields
.field final synthetic this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {p0}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/presenter/g;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    return-void
.end method


# virtual methods
.method public final handleError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    return-void
.end method

.method public final handleNetTimeOutError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    return-void
.end method

.method public final handlePre(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;->handlePre(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 5

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v2, "nowPayOrderNo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setNowPayOrderNo(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v2, "orderSysReserveSign"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setOrderSysReserveSign(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v1, "nowPayOrderNo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v2, "orderSysReserveSign"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v3, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v3

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->c(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/model/PayMethodModel;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v3

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v4}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v4

    iget-object v4, v4, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v2, "channelDispOrder"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->d(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    const-string v2, "mhtName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->c(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v1

    iget-object v1, v1, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v1

    iget-object v1, v1, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->d(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v1

    iget-object v1, v1, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->e(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/g;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->e(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    goto :goto_0
.end method
