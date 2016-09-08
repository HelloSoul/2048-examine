.class public final Lcom/ipaynow/plugin/manager/c/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/c/a;-><init>()V

    return-void
.end method

.method public static y()Lcom/ipaynow/plugin/manager/c/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/c/b;->A()Lcom/ipaynow/plugin/manager/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static z()Z
    .locals 1

    :try_start_0
    const-string v0, "plugin_phone"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
