.class public abstract Lcom/ipaynow/plugin/core/task/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/core/task/a/a/a;


# instance fields
.field private s:Lcom/ipaynow/plugin/core/task/a;

.field private t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

.field private u:Lcom/ipaynow/plugin/manager/a/a;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->s:Lcom/ipaynow/plugin/core/task/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->u:Lcom/ipaynow/plugin/manager/a/a;

    iput-object p1, p0, Lcom/ipaynow/plugin/core/task/a/a;->s:Lcom/ipaynow/plugin/core/task/a;

    new-instance v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-direct {v0}, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-static {}, Lcom/ipaynow/plugin/manager/a/a;->m()Lcom/ipaynow/plugin/manager/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->u:Lcom/ipaynow/plugin/manager/a/a;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const-string v2, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u91cd\u53d1\u6d88\u606f\u6b21\u6570:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u63a5\u6536\u5230\u539f\u62a5\u6587: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->s:Lcom/ipaynow/plugin/core/task/a;

    const-string v1, "\u5904\u7406\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/core/task/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/core/task/a/a;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    const-string v1, "PE002"

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    const-string v1, "\u7f51\u7edc\u901a\u8baf\u8d85\u65f6"

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/a;->u:Lcom/ipaynow/plugin/manager/a/a;

    invoke-static {v0, v2}, Lcom/ipaynow/plugin/utils/StringUtils;->parseFormString(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v4

    const-string v0, "responseCode"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->SUCCESS:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "responseCode"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "responseMsg"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "responseMsg"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ipaynow/plugin/core/task/a/a;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v5, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v6, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_ERROR:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v6, v5, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v5, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, v5, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v4, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "responseMsg"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "responseMsg"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ipaynow/plugin/core/task/a/a;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v5, "\u672a\u77e5\u9519\u8bef"

    aput-object v5, v1, v2

    goto :goto_2

    :cond_4
    const-string v0, "responseCode"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_SUCCESS:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v2, v1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, v1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v4, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/a;->t:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    goto/16 :goto_0
.end method

.method protected varargs abstract b([Ljava/lang/String;)Ljava/lang/String;
.end method
