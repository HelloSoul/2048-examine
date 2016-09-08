.class final Lcom/ipaynow/plugin/api/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/ipaynow/plugin/api/IpaynowPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;-><init>(Lcom/ipaynow/plugin/api/IpaynowPlugin;)V

    sput-object v0, Lcom/ipaynow/plugin/api/b;->a:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-void
.end method

.method static synthetic b()Lcom/ipaynow/plugin/api/IpaynowPlugin;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/api/b;->a:Lcom/ipaynow/plugin/api/IpaynowPlugin;

    return-object v0
.end method
