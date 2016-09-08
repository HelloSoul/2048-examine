.class public final Lcom/ipaynow/plugin/core/task/a/d;
.super Lcom/ipaynow/plugin/core/task/a/a;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/core/task/a/a;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    return-void
.end method


# virtual methods
.method protected final varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ipaynow/plugin/conf/e;->k:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/core/task/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
