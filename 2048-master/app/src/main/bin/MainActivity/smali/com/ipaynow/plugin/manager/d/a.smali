.class public final Lcom/ipaynow/plugin/manager/d/a;
.super Ljava/lang/Object;


# static fields
.field private static az:Ljava/util/HashMap;


# instance fields
.field private p:Lcom/ipaynow/plugin/model/impl/Model;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/manager/d/a;->az:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/d/a;->p:Lcom/ipaynow/plugin/model/impl/Model;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/d/a;-><init>()V

    return-void
.end method

.method public static B()Lcom/ipaynow/plugin/manager/d/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/d/b;->C()Lcom/ipaynow/plugin/manager/d/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final varargs a(Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Landroid/app/ProgressDialog;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/core/task/a;

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/d/a;->p:Lcom/ipaynow/plugin/model/impl/Model;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/ipaynow/plugin/core/task/a;-><init>(Lcom/ipaynow/plugin/model/impl/Model;Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, p4}, Lcom/ipaynow/plugin/core/task/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v1, Lcom/ipaynow/plugin/manager/d/a;->az:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/ipaynow/plugin/model/impl/Model;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/d/a;->p:Lcom/ipaynow/plugin/model/impl/Model;

    return-void
.end method
