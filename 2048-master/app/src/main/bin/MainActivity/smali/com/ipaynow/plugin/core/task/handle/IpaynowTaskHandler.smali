.class public abstract Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/core/task/handle/impl/TaskHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
.end method

.method public abstract handleNetTimeOutError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
.end method

.method public handlePre(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 0

    return-void
.end method

.method public abstract handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
.end method

.method public handleTaskResult(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;->handlePre(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;->handleNetTimeOutError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_ERROR:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;->handleError(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_SUCCESS:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/core/task/handle/IpaynowTaskHandler;->handleSuccess(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    goto :goto_0
.end method
