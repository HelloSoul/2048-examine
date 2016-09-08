.class final Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic o:Ljava/util/ArrayList;

.field final synthetic p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;->p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;

    iput-object p2, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;->o:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/c;->p:Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/b;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/a;)Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/qqwp/activity/QQWapPayActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
