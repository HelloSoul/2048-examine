.class public Lcom/ipaynow/plugin/presenter/PayMethodActivity;
.super Lcom/ipaynow/plugin/presenter/BasePresenter;


# static fields
.field private static synthetic w:[I


# instance fields
.field private aB:Lcom/ipaynow/plugin/model/PayMethodModel;

.field private aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Ljava/lang/Boolean;

.field private aH:Ljava/lang/Boolean;

.field private aI:Landroid/os/Bundle;

.field private b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

.field private mhtOrderAmt:Ljava/lang/String;

.field private mhtOrderName:Ljava/lang/String;

.field private mhtOrderNo:Ljava/lang/String;

.field private payChannelType:Ljava/lang/String;


# direct methods
.method private static synthetic $SWITCH_TABLE$com$ipaynow$plugin$conf$code$FUNCODE_CODE()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->w:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->values()[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->PREPAY_TRANS:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->w:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aG:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aH:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->payChannelType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    invoke-virtual {v0, p1, p2}, Lcom/ipaynow/plugin/model/PayMethodModel;->parseBaiduPayResult(ILjava/lang/String;)Ljava/util/HashMap;

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
    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aG:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderNo:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    return-object v0
.end method

.method static synthetic b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aH:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aE:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Lcom/ipaynow/plugin/model/PayMethodModel;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    return-object v0
.end method

.method static synthetic c(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aD:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderName:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aD:Ljava/lang/String;

    iget-object v3, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderAmt:Ljava/lang/String;

    iget-object v6, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aE:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    new-instance v1, Lcom/ipaynow/plugin/presenter/a;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    invoke-direct {v1, p0, v2}, Lcom/ipaynow/plugin/presenter/a;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;)V

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->setAdatpter(Lcom/ipaynow/plugin/view/template/layout/g;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    sget-object v1, Lcom/ipaynow/plugin/view/template/layout/c;->bG:Lcom/ipaynow/plugin/view/template/layout/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->generateUiTemplate(Lcom/ipaynow/plugin/view/template/layout/c;Z)Landroid/widget/LinearLayout;

    move-result-object v9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v8

    move v4, v10

    move v5, v8

    move v6, v10

    move v7, v8

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v9}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderAmt:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->mhtOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u901a\u9053\u8fde\u63a5\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getNowPayOrderNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getOrderSysReserveSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getNowPayOrderNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getOrderSysReserveSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getNowPayOrderNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getOrderSysReserveSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getNowPayOrderNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getOrderSysReserveSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getNowPayOrderNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getOrderSysReserveSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getNowPayOrderNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getOrderSysReserveSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic g(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aG:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected bindModel()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/model/PayMethodModel;-><init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    return-void
.end method

.method public bindView()V
    .locals 3

    const v0, 0x1030006

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#30000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aB:Lcom/ipaynow/plugin/model/PayMethodModel;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/model/PayMethodModel;->toB001(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u521d\u59cb\u5316"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public initData()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aI:Landroid/os/Bundle;

    const-string v1, "PRE_SIGN_STR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aF:Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getRequestParams()Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->payChannelType:Ljava/lang/String;

    return-void
.end method

.method public modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->$SWITCH_TABLE$com$ipaynow$plugin$conf$code$FUNCODE_CODE()[I

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u77e5FUNCODE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/ipaynow/plugin/presenter/g;

    invoke-direct {v0, p0, v2}, Lcom/ipaynow/plugin/presenter/g;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;B)V

    :goto_1
    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/core/task/handle/impl/TaskHandler;->handleTaskResult(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/ipaynow/plugin/presenter/i;

    invoke-direct {v0, p0, v2}, Lcom/ipaynow/plugin/presenter/i;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantSuccess()V

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    :cond_3
    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/ipaynow/plugin/presenter/d;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/presenter/d;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aI:Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onResume()V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->payChannelType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ipaynow/plugin/presenter/e;

    invoke-direct {v2, p0, v0}, Lcom/ipaynow/plugin/presenter/e;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public releaseViewResource()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->aC:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->releaseViewResource()V

    :cond_0
    return-void
.end method
