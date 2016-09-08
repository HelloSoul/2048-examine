.class final Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

.field private final synthetic o:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    iput-object p2, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->o:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->o:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->b(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/d;

    invoke-direct {v2, p0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/d;-><init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;)V

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_0
    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->n:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    return-void
.end method
