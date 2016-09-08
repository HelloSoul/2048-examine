.class public Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;
.super Lcom/ipaynow/plugin/presenter/BasePresenter;


# static fields
.field private static synthetic l:[I


# instance fields
.field private a:I

.field private appId:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private final g:I

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/os/Bundle;

.field private j:Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;

.field private k:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;-><init>()V

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a:I

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->mhtOrderNo:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->d:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->g:I

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->j:Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;

    iput-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->k:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->e:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->f:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->k:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    return-object v0
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->l:[I

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
    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->l:[I

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

.method static synthetic c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->e:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->f:Ljava/util/TimerTask;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected bindModel()V
    .locals 2

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;-><init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->j:Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;

    return-void
.end method

.method public bindView()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->requestWindowFeature(I)Z

    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->setTheme(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "\u6b63\u5728\u8df3\u8f6cQQ"

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public initData()V
    .locals 3

    iput-object p0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->k:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->mhtOrderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->i:Landroid/os/Bundle;

    const-string v1, "payVoucher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b:Ljava/lang/String;

    const-string v1, "schema_url=null%3"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->d:Z

    goto :goto_0
.end method

.method public modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b()[I

    move-result-object v0

    iget-object v1, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/e;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;B)V

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/core/task/handle/impl/TaskHandler;->handleTaskResult(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onDestroy()V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/ipaynow/plugin/presenter/BasePresenter;->onResume()V

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a:I

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const-string v0, "\u6b63\u5728\u9000\u51faQQ\u652f\u4ed8"

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->j:Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->mhtOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/model/QQWapPayModel;->toMQ001(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->d:Z

    goto :goto_0
.end method

.method public releaseViewResource()V
    .locals 0

    return-void
.end method
