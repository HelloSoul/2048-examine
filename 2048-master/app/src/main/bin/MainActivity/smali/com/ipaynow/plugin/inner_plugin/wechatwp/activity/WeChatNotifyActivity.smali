.class public Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;
.super Lcom/ipaynow/plugin/presenter/BasePresenter;


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/ipaynow/plugin/view/IpaynowLoading;

.field private errorCode:Ljava/lang/String;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:Ljava/lang/String;

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:I

    iput-boolean v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    return-void
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:[I

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
    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->h:[I

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


# virtual methods
.method protected bindModel()V
    .locals 2

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;-><init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    return-void
.end method

.method public bindView()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->requestWindowFeature(I)Z

    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->errorCode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->errorCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iput-boolean v4, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u5fae\u4fe1\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    const-string v3, "payVoucher"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iput-boolean v5, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iput-boolean v4, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    goto :goto_0
.end method

.method public initData()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->f:Landroid/os/Bundle;

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a:Ljava/lang/String;

    return-void
.end method

.method protected initLoading()V
    .locals 1

    new-instance v0, Lcom/ipaynow/plugin/view/DefaultLoadingDialog;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/view/DefaultLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-void
.end method

.method public modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b()[I

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;B)V

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/core/task/handle/impl/TaskHandler;->handleTaskResult(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onResume()V

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:I

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u9000\u51fa\u5fae\u4fe1\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->g:Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/model/WechatNotifyModel;->toMQ001(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->c:Z

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a()V

    return-void
.end method

.method public releaseViewResource()V
    .locals 0

    return-void
.end method
