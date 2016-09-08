.class Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pay/PayCallBack;


# instance fields
.field final synthetic this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;-><init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;)V

    return-void
.end method


# virtual methods
.method public isHideLoadingDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPayResult(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/PayMethodActivity$BaiduPayCallBack;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-static {v0, p1, p2}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->a(Lcom/ipaynow/plugin/presenter/PayMethodActivity;ILjava/lang/String;)V

    return-void
.end method
