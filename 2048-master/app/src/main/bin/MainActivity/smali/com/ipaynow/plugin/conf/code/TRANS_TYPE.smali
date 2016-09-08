.class public final enum Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

.field public static final enum BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

.field public static final enum QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

.field public static final enum UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

.field public static final enum WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

.field public static final enum WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const-string v1, "UPMP"

    const-string v2, "11"

    invoke-direct {v0, v1, v4, v2}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const-string v1, "ALIPAY"

    const-string v2, "12"

    invoke-direct {v0, v1, v5, v2}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const-string v1, "WECHAT_WAP_PAY"

    const-string v2, "13"

    invoke-direct {v0, v1, v6, v2}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const-string v1, "WECHAT_PLUGIN_PAY"

    const-string v2, "1310"

    invoke-direct {v0, v1, v7, v2}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const-string v1, "BAIDU_PAY"

    const-string v2, "50"

    invoke-direct {v0, v1, v8, v2}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const-string v1, "QQ_PAY"

    const/4 v2, 0x5

    const-string v3, "25"

    invoke-direct {v0, v1, v2, v3}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->code:Ljava/lang/String;

    return-object v0
.end method
