.class public final Lcom/ipaynow/plugin/core/task/a;
.super Landroid/os/AsyncTask;


# instance fields
.field private funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

.field private loading:Landroid/app/ProgressDialog;

.field private p:Lcom/ipaynow/plugin/model/impl/Model;

.field private q:Lcom/ipaynow/plugin/core/task/service/impl/Service;

.field private r:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/model/impl/Model;Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Landroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->p:Lcom/ipaynow/plugin/model/impl/Model;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->q:Lcom/ipaynow/plugin/core/task/service/impl/Service;

    iput-object p1, p0, Lcom/ipaynow/plugin/core/task/a;->p:Lcom/ipaynow/plugin/model/impl/Model;

    iput-object p2, p0, Lcom/ipaynow/plugin/core/task/a;->r:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    iput-object p3, p0, Lcom/ipaynow/plugin/core/task/a;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    iput-object p4, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    invoke-static {p0, p2}, Lcom/ipaynow/plugin/core/task/service/c;->a(Lcom/ipaynow/plugin/core/task/a;Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;)Lcom/ipaynow/plugin/core/task/service/impl/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->q:Lcom/ipaynow/plugin/core/task/service/impl/Service;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->q:Lcom/ipaynow/plugin/core/task/service/impl/Service;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-interface {v0, v1, p1}, Lcom/ipaynow/plugin/core/task/service/impl/Service;->doWork(Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;[Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->r:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    iput-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->service_code:Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    iput-object v0, p1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->funcode:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->p:Lcom/ipaynow/plugin/model/impl/Model;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/model/impl/Model;->taskCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a;->loading:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
