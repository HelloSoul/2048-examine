.class public Lcom/ipaynow/plugin/api/IpaynowPlugin;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/api/IpaynowPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/api/b;->b()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    invoke-direct {v0, p1}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u4f20\u5165\u5e94\u7528\u7684\u4e0a\u4e0b\u6587\u5bf9\u8c61"

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setInitedFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->context:Landroid/content/Context;

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setInitedFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    goto :goto_0
.end method

.method public pay(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    iget-object v1, p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u4f20\u5165RequestParams\u5bf9\u8c61"

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isPluginStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setPluginStarted(Z)V

    new-instance v0, Lcom/ipaynow/plugin/api/a;

    invoke-direct {v0}, Lcom/ipaynow/plugin/api/a;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/ipaynow/plugin/api/a;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ipaynow/plugin/api/a;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setPluginStarted(Z)V

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/utils/h;

    iget-object v1, p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/utils/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u4f20\u5165\u63d2\u4ef6\u652f\u4ed8\u53c2\u6570"

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/utils/h;->e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/h;->d(I)Lcom/ipaynow/plugin/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/h;->create()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isPluginStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setPluginStarted(Z)V

    new-instance v0, Lcom/ipaynow/plugin/api/a;

    invoke-direct {v0}, Lcom/ipaynow/plugin/api/a;-><init>()V

    iget-object v1, p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/ipaynow/plugin/api/a;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ipaynow/plugin/api/a;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setPluginStarted(Z)V

    goto :goto_0
.end method

.method public setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setMerchantCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    return-object p0
.end method

.method public setCallResultReceiver(Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setMerchantCallResultReceive(Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    return-object p0
.end method
