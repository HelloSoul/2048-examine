.class public final Lcom/ipaynow/plugin/core/task/service/b;
.super Lcom/ipaynow/plugin/core/task/service/a;


# static fields
.field private static synthetic w:[I


# direct methods
.method private static synthetic $SWITCH_TABLE$com$ipaynow$plugin$conf$code$FUNCODE_CODE()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/core/task/service/b;->w:[I

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
    sput-object v0, Lcom/ipaynow/plugin/core/task/service/b;->w:[I

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

.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/core/task/service/a;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    return-void
.end method


# virtual methods
.method public final varargs doWork(Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;[Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/core/task/service/b;->$SWITCH_TABLE$com$ipaynow$plugin$conf$code$FUNCODE_CODE()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/b;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->s:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/b;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    :goto_1
    invoke-interface {v0, p2}, Lcom/ipaynow/plugin/core/task/a/a/a;->a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/d;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->s:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/d;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/c;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->s:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/c;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
