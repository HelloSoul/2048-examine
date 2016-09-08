.class public Lcom/ipaynow/plugin/manager/cache/MessageCache;
.super Ljava/lang/Object;


# instance fields
.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

.field private Y:Landroid/app/Activity;

.field private b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->B:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->C:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->D:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->E:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->F:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->G:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->H:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->I:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->J:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->K:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->L:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->M:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->N:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->O:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->P:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Q:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->R:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->S:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->T:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->U:Z

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Ljava/lang/String;

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Ljava/lang/String;

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/manager/cache/MessageCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/a;->l()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public getMerchantCallResultActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Y:Landroid/app/Activity;

    return-object v0
.end method

.method public getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->X:Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    return-object v0
.end method

.method public getNowPayOrderNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSysReserveSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Lcom/ipaynow/plugin/manager/route/dto/RequestParams;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    return-object v0
.end method

.method public isAddAllPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->D:Z

    return v0
.end method

.method public isAddMustRequestParams()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->E:Z

    return v0
.end method

.method public isAlipayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->H:Z

    return v0
.end method

.method public isBaiduPayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->I:Z

    return v0
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->F:Z

    return v0
.end method

.method public isLegalPayChannelType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->G:Z

    return v0
.end method

.method public isMainThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->B:Z

    return v0
.end method

.method public isPluginStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->O:Z

    return v0
.end method

.method public isQqPayInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->S:Z

    return v0
.end method

.method public isQqPayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->J:Z

    return v0
.end method

.method public isQqPaySupportVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->R:Z

    return v0
.end method

.method public isSoLibraryLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->U:Z

    return v0
.end method

.method public isUpmpPayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->K:Z

    return v0
.end method

.method public isUsePreSignTools()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->C:Z

    return v0
.end method

.method public isViewPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->N:Z

    return v0
.end method

.method public isWechatInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Q:Z

    return v0
.end method

.method public isWechatPaySupportVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->P:Z

    return v0
.end method

.method public isWechatPluginPaySupportVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->T:Z

    return v0
.end method

.method public isWechatPluginPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->M:Z

    return v0
.end method

.method public isWechatWapPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->L:Z

    return v0
.end method

.method public setAddAllPermissionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->D:Z

    return-object p0
.end method

.method public setAddMustRequestParamsFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->E:Z

    return-object p0
.end method

.method public setAlipayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->H:Z

    return-void
.end method

.method public setBaiduPayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->I:Z

    return-void
.end method

.method public setInitedFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->F:Z

    return-object p0
.end method

.method public setLegalPayChannelTypeFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->G:Z

    return-object p0
.end method

.method public setMainThreadFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->B:Z

    return-object p0
.end method

.method public setMerchantCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Y:Landroid/app/Activity;

    return-object p0
.end method

.method public setMerchantCallResultReceive(Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->X:Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    return-object p0
.end method

.method public setNowPayOrderNo(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderSysReserveSign(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Ljava/lang/String;

    return-object p0
.end method

.method public setPluginStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->O:Z

    return-void
.end method

.method public setQqPayInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->S:Z

    return-void
.end method

.method public setQqPayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->J:Z

    return-void
.end method

.method public setQqPaySupportVersionFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->R:Z

    return-void
.end method

.method public setRequestParams(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    return-void
.end method

.method public setSoLibraryLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->U:Z

    return-void
.end method

.method public setUpmpPayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->K:Z

    return-void
.end method

.method public setUsePreSignToolsFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->C:Z

    return-void
.end method

.method public setViewPluginInstalled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->N:Z

    return-void
.end method

.method public setWechatInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Q:Z

    return-void
.end method

.method public setWechatPaySupportVersionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->P:Z

    return-object p0
.end method

.method public setWechatPluginPaySupportVersionFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->T:Z

    return-void
.end method

.method public setWechatPluginPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->M:Z

    return-void
.end method

.method public setWechatWapPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->L:Z

    return-void
.end method
