.class final Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/d;->p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
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

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/d;->p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->finishAllPresenter()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/d;->p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;Z)V

    return-void
.end method
