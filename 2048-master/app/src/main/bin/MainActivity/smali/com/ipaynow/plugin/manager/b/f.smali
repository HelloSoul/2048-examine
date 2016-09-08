.class final Lcom/ipaynow/plugin/manager/b/f;
.super Ljava/lang/Object;


# static fields
.field private static av:Lcom/ipaynow/plugin/manager/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/manager/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/manager/b/c;-><init>(B)V

    sput-object v0, Lcom/ipaynow/plugin/manager/b/f;->av:Lcom/ipaynow/plugin/manager/b/c;

    return-void
.end method

.method static synthetic w()Lcom/ipaynow/plugin/manager/b/c;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/manager/b/f;->av:Lcom/ipaynow/plugin/manager/b/c;

    return-object v0
.end method
