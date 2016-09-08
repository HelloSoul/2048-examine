.class final Lcom/ipaynow/plugin/presenter/h;
.super Landroid/os/Handler;


# instance fields
.field aN:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/h;->aN:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/h;->aN:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/model/PayMethodModel;->parseAliPayResult(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "respCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "errorCode"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "respMsg"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_SUCCESS:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantSuccess()V

    :cond_0
    sget-object v3, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_CANCEL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    :cond_2
    sget-object v1, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_UNKNOWN:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantUnknown(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/h;->aN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
