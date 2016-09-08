.class public final Lcom/ipaynow/plugin/conf/a;
.super Ljava/lang/Object;


# static fields
.field public static c:Ljava/util/ArrayList;

.field public static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/conf/a;->c:Ljava/util/ArrayList;

    const-string v1, "mhtOrderTimeOut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->c:Ljava/util/ArrayList;

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->c:Ljava/util/ArrayList;

    const-string v1, "mhtReserved"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->c:Ljava/util/ArrayList;

    const-string v1, "consumerId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->c:Ljava/util/ArrayList;

    const-string v1, "consumerName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ipaynow"

    sput-object v0, Lcom/ipaynow/plugin/b/a;->A:Ljava/lang/String;

    sput-boolean v1, Lcom/ipaynow/plugin/b/a;->z:Z

    sput-boolean v1, Lcom/ipaynow/plugin/conf/f;->l:Z

    return-void
.end method
