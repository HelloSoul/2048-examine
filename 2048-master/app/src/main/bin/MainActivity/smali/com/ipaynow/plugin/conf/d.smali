.class public final Lcom/ipaynow/plugin/conf/d;
.super Ljava/lang/Object;


# static fields
.field public static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MK"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/plugin/conf/d;->j:Ljava/lang/String;

    return-void
.end method
