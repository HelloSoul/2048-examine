.class public final enum Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

.field public static final enum REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    const-string v1, "REMOTE_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->REMOTE_SERVICE:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;
    .locals 1

    const-class v0, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;->ENUM$VALUES:[Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
