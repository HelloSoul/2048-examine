.class public Lcom/ipaynow/plugin/model/PayMethodModel;
.super Lcom/ipaynow/plugin/model/BaseModel;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ipaynow/plugin/model/BaseModel;-><init>(Lcom/ipaynow/plugin/presenter/impl/Presenter;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public static parseAliPayResult(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_UNKNOWN:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_0
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_SUCCESS:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE002:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_CANCEL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfa0 -> :sswitch_4
        0x1771 -> :sswitch_3
        0x1772 -> :sswitch_2
        0x1f40 -> :sswitch_1
        0x2328 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public parseBaiduPayResult(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_SUCCESS:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE004:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_CANCEL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE006:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE006:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_FAIL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_CANCEL:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v1, "respCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->CALL_MHT_UNKNOWN:Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/CALLMHT_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "respMsg"

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE010:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public taskCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/model/PayMethodModel;->visitor:Lcom/ipaynow/plugin/presenter/impl/Presenter;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/presenter/impl/Presenter;->modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    return-void
.end method
