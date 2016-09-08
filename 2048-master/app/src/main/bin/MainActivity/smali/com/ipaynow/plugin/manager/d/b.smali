.class final Lcom/ipaynow/plugin/manager/d/b;
.super Ljava/lang/Object;


# static fields
.field private static aA:Lcom/ipaynow/plugin/manager/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/manager/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/manager/d/a;-><init>(B)V

    sput-object v0, Lcom/ipaynow/plugin/manager/d/b;->aA:Lcom/ipaynow/plugin/manager/d/a;

    return-void
.end method

.method static synthetic C()Lcom/ipaynow/plugin/manager/d/a;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/manager/d/b;->aA:Lcom/ipaynow/plugin/manager/d/a;

    return-object v0
.end method
