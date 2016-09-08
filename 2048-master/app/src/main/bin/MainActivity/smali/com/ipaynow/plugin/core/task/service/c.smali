.class public final Lcom/ipaynow/plugin/core/task/service/c;
.super Ljava/lang/Object;


# static fields
.field private static synthetic x:[I


# direct methods
.method public static a(Lcom/ipaynow/plugin/core/task/a;Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;)Lcom/ipaynow/plugin/core/task/service/impl/Service;
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/core/task/service/c;->k()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/ipaynow/plugin/core/task/service/b;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/core/task/service/b;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic k()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/core/task/service/c;->x:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->values()[Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/ipaynow/plugin/core/task/service/c;->x:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
