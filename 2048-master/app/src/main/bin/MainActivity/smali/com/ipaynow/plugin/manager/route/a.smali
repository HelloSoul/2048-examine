.class final Lcom/ipaynow/plugin/manager/route/a;
.super Ljava/lang/Object;


# static fields
.field private static ax:Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;-><init>(Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;)V

    sput-object v0, Lcom/ipaynow/plugin/manager/route/a;->ax:Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    return-void
.end method

.method static synthetic x()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/manager/route/a;->ax:Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    return-object v0
.end method
