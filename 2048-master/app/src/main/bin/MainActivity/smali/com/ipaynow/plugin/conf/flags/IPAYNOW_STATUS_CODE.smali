.class public final enum Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

.field public static final enum FAIL:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

.field public static final enum SUCCESS:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    const-string v1, "SUCCESS"

    const-string v2, "A001"

    invoke-direct {v0, v1, v3, v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->SUCCESS:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    new-instance v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    const-string v1, "FAIL"

    const-string v2, "A002"

    invoke-direct {v0, v1, v4, v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->FAIL:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->SUCCESS:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->FAIL:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->code:Ljava/lang/String;

    return-object v0
.end method
