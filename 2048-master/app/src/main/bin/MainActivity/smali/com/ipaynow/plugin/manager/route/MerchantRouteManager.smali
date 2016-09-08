.class public Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;
.super Ljava/lang/Object;


# instance fields
.field aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;-><init>()V

    return-void
.end method

.method private commonTemplate(IILandroid/content/Intent;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ipaynow"

    const-string v1, "\u672a\u5b9e\u73b0\u901a\u77e5\u63a5\u53e3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/a;->x()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callMerchantCancel()V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_CANCEL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->commonTemplate(IILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v0}, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_CANCEL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    const-string v1, "cancel"

    iput-object v1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    return-void
.end method

.method public callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->commonTemplate(IILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v0}, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    iput-object p1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    iput-object p2, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    return-void
.end method

.method public callMerchantSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_SUCCESS:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->commonTemplate(IILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v0}, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_SUCCESS:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    const-string v1, "success"

    iput-object v1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    return-void
.end method

.method public callMerchantUnknown(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_UNKNOWN:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->commonTemplate(IILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v0}, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_UNKNOWN:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    iput-object p1, v0, Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->aw:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    return-void
.end method
