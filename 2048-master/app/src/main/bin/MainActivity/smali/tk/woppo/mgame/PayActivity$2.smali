.class Ltk/woppo/mgame/PayActivity$2;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk/woppo/mgame/PayActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltk/woppo/mgame/PayActivity;


# direct methods
.method constructor <init>(Ltk/woppo/mgame/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    # invokes: Ltk/woppo/mgame/PayActivity;->checkNetInfo()Z
    invoke-static {v1}, Ltk/woppo/mgame/PayActivity;->access$2(Ltk/woppo/mgame/PayActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    # invokes: Ltk/woppo/mgame/PayActivity;->showProgressDialog()V
    invoke-static {v1}, Ltk/woppo/mgame/PayActivity;->access$3(Ltk/woppo/mgame/PayActivity;)V

    .line 122
    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    # getter for: Ltk/woppo/mgame/PayActivity;->rg:Landroid/widget/RadioGroup;
    invoke-static {v1}, Ltk/woppo/mgame/PayActivity;->access$4(Ltk/woppo/mgame/PayActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_1
    new-instance v0, Ltk/woppo/mgame/PayActivity$GetMessage;

    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    invoke-direct {v0, v1}, Ltk/woppo/mgame/PayActivity$GetMessage;-><init>(Ltk/woppo/mgame/PayActivity;)V

    .line 135
    .local v0, "gm":Ltk/woppo/mgame/PayActivity$GetMessage;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    # getter for: Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v3}, Ltk/woppo/mgame/PayActivity;->access$5(Ltk/woppo/mgame/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltk/woppo/mgame/PayActivity$GetMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 124
    .end local v0    # "gm":Ltk/woppo/mgame/PayActivity$GetMessage;
    :pswitch_0
    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    # getter for: Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v1}, Ltk/woppo/mgame/PayActivity;->access$5(Ltk/woppo/mgame/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v1

    const-string v2, "25"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    goto :goto_1

    .line 128
    :pswitch_1
    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$2;->this$0:Ltk/woppo/mgame/PayActivity;

    # getter for: Ltk/woppo/mgame/PayActivity;->preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
    invoke-static {v1}, Ltk/woppo/mgame/PayActivity;->access$5(Ltk/woppo/mgame/PayActivity;)Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    move-result-object v1

    const-string v2, "13"

    iput-object v2, v1, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
