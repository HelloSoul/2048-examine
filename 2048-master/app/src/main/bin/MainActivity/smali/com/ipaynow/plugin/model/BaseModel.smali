.class public abstract Lcom/ipaynow/plugin/model/BaseModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/model/impl/Model;


# instance fields
.field protected loading:Landroid/app/ProgressDialog;

.field private packManager:Lcom/ipaynow/plugin/manager/a/a;

.field protected taskManager:Lcom/ipaynow/plugin/manager/d/a;

.field protected visitor:Lcom/ipaynow/plugin/presenter/impl/Presenter;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Landroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->loading:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->visitor:Lcom/ipaynow/plugin/presenter/impl/Presenter;

    iput-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->packManager:Lcom/ipaynow/plugin/manager/a/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->taskManager:Lcom/ipaynow/plugin/manager/d/a;

    iput-object p1, p0, Lcom/ipaynow/plugin/model/BaseModel;->visitor:Lcom/ipaynow/plugin/presenter/impl/Presenter;

    iput-object p2, p0, Lcom/ipaynow/plugin/model/BaseModel;->loading:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/ipaynow/plugin/manager/d/a;->B()Lcom/ipaynow/plugin/manager/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->taskManager:Lcom/ipaynow/plugin/manager/d/a;

    invoke-static {}, Lcom/ipaynow/plugin/manager/a/a;->m()Lcom/ipaynow/plugin/manager/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->packManager:Lcom/ipaynow/plugin/manager/a/a;

    iget-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->taskManager:Lcom/ipaynow/plugin/manager/d/a;

    invoke-virtual {v0, p0}, Lcom/ipaynow/plugin/manager/d/a;->a(Lcom/ipaynow/plugin/model/impl/Model;)V

    return-void
.end method


# virtual methods
.method public toB001(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->packManager:Lcom/ipaynow/plugin/manager/a/a;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&funcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->getFuncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u7684\u539f\u6587:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/model/BaseModel;->taskManager:Lcom/ipaynow/plugin/manager/d/a;

    sget-object v2, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    sget-object v3, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    iget-object v4, p0, Lcom/ipaynow/plugin/model/BaseModel;->loading:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ipaynow/plugin/manager/d/a;->a(Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Landroid/app/ProgressDialog;[Ljava/lang/String;)V

    return-void
.end method

.method public toB002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->packManager:Lcom/ipaynow/plugin/manager/a/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ipaynow/plugin/manager/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u7684\u539f\u6587:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/model/BaseModel;->taskManager:Lcom/ipaynow/plugin/manager/d/a;

    sget-object v2, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    sget-object v3, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    iget-object v4, p0, Lcom/ipaynow/plugin/model/BaseModel;->loading:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ipaynow/plugin/manager/d/a;->a(Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Landroid/app/ProgressDialog;[Ljava/lang/String;)V

    return-void
.end method

.method public toMQ001(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/ipaynow/plugin/model/BaseModel;->packManager:Lcom/ipaynow/plugin/manager/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/ipaynow/plugin/manager/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u7684\u539f\u6587:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/model/BaseModel;->taskManager:Lcom/ipaynow/plugin/manager/d/a;

    sget-object v2, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    sget-object v3, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ipaynow/plugin/manager/d/a;->a(Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Landroid/app/ProgressDialog;[Ljava/lang/String;)V

    return-void
.end method
