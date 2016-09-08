.class final Lcom/ipaynow/plugin/presenter/j;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic aO:Ljava/lang/String;

.field final synthetic this$1:Lcom/ipaynow/plugin/presenter/i;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/j;->this$1:Lcom/ipaynow/plugin/presenter/i;

    iput-object p2, p0, Lcom/ipaynow/plugin/presenter/j;->aO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/ipaynow/plugin/presenter/h;

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/j;->this$1:Lcom/ipaynow/plugin/presenter/i;

    invoke-static {v1}, Lcom/ipaynow/plugin/presenter/i;->a(Lcom/ipaynow/plugin/presenter/i;)Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/presenter/h;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/j;->this$1:Lcom/ipaynow/plugin/presenter/i;

    invoke-static {v2}, Lcom/ipaynow/plugin/presenter/i;->a(Lcom/ipaynow/plugin/presenter/i;)Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/presenter/j;->aO:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/h;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xc

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/presenter/h;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
