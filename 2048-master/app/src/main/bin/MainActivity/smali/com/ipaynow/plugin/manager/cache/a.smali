.class final Lcom/ipaynow/plugin/manager/cache/a;
.super Ljava/lang/Object;


# static fields
.field private static Z:Lcom/ipaynow/plugin/manager/cache/MessageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/manager/cache/MessageCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;-><init>(Lcom/ipaynow/plugin/manager/cache/MessageCache;)V

    sput-object v0, Lcom/ipaynow/plugin/manager/cache/a;->Z:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    return-void
.end method

.method static synthetic l()Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/manager/cache/a;->Z:Lcom/ipaynow/plugin/manager/cache/MessageCache;

    return-object v0
.end method
