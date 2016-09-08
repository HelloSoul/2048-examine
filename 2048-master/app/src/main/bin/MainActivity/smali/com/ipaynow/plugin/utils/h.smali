.class public final Lcom/ipaynow/plugin/utils/h;
.super Ljava/lang/Object;


# instance fields
.field private aQ:Landroid/widget/Toast;

.field private aR:I

.field private aS:I

.field private context:Landroid/content/Context;

.field private duration:I

.field private gravity:I

.field private text:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/plugin/utils/h;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create()Landroid/widget/Toast;
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->view:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/h;->text:Ljava/lang/String;

    iget v2, p0, Lcom/ipaynow/plugin/utils/h;->duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/h;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/h;->aQ:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->aQ:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/plugin/utils/h;->duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->aQ:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/h;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->aQ:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/h;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->aQ:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/plugin/utils/h;->gravity:I

    iget v2, p0, Lcom/ipaynow/plugin/utils/h;->aR:I

    iget v3, p0, Lcom/ipaynow/plugin/utils/h;->aS:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/h;->aQ:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public final d(I)Lcom/ipaynow/plugin/utils/h;
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/utils/h;->duration:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/h;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/utils/h;->text:Ljava/lang/String;

    return-object p0
.end method
