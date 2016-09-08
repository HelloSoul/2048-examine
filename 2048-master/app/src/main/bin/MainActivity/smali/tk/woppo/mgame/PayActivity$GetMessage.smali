.class public Ltk/woppo/mgame/PayActivity$GetMessage;
.super Landroid/os/AsyncTask;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk/woppo/mgame/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltk/woppo/mgame/PayActivity;


# direct methods
.method public constructor <init>(Ltk/woppo/mgame/PayActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Ltk/woppo/mgame/PayActivity$GetMessage;->this$0:Ltk/woppo/mgame/PayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltk/woppo/mgame/PayActivity$GetMessage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 218
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 220
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mhtSignature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0nqIDgkOnNBD6qoqO5U68RO1fNqiaisg"

    invoke-static {v4}, Ltk/woppo/mgame/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltk/woppo/mgame/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mhtSignType=MD5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "needcheckmsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltk/woppo/mgame/PayActivity$GetMessage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestMessage"    # Ljava/lang/String;

    .prologue
    .line 227
    # getter for: Ltk/woppo/mgame/PayActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Ltk/woppo/mgame/PayActivity;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->getInstance()Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    iget-object v1, p0, Ltk/woppo/mgame/PayActivity$GetMessage;->this$0:Ltk/woppo/mgame/PayActivity;

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setCallResultReceiver(Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/plugin/api/IpaynowPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Ljava/lang/String;)V

    .line 230
    return-void
.end method
