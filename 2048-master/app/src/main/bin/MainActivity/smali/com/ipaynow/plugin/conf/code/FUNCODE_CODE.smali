.class public final enum Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

.field public static final enum ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

.field public static final enum PREPAY_TRANS:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

.field public static final enum QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

.field public static final enum UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

.field public static final enum VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;


# instance fields
.field private funcode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const-string v1, "UNKNOWN_FUNCODE"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v3, v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const-string v1, "ORDER_INIT"

    const-string v2, "B001"

    invoke-direct {v0, v1, v4, v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const-string v1, "VOUCHER_GET"

    const-string v2, "B002"

    invoke-direct {v0, v1, v5, v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const-string v1, "PREPAY_TRANS"

    const-string v2, "B002"

    invoke-direct {v0, v1, v6, v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->PREPAY_TRANS:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    new-instance v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const-string v1, "QUERY_TRADE_RESULT"

    const-string v2, "MQ001"

    invoke-direct {v0, v1, v7, v2}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->PREPAY_TRANS:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->funcode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->funcode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getFuncode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->funcode:Ljava/lang/String;

    return-object v0
.end method
