.class final Lcom/ipaynow/plugin/presenter/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aM:Lcom/ipaynow/plugin/presenter/e;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/f;->aM:Lcom/ipaynow/plugin/presenter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantCancel()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/f;->aM:Lcom/ipaynow/plugin/presenter/e;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/e;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->finishAllPresenter()V

    return-void
.end method
