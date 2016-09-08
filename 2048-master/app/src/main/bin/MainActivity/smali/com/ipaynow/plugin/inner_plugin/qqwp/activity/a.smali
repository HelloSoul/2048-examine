.class final Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    new-instance v2, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;

    invoke-direct {v2, p0, v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Ljava/util/TimerTask;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "mqqapi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0, v4}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    :cond_1
    return v4

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0, v3}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    invoke-static {v0, v3}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    goto :goto_0
.end method
