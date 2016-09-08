.class final Lcom/ipaynow/plugin/presenter/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/view/template/layout/f;


# instance fields
.field final synthetic aJ:Lcom/ipaynow/plugin/presenter/a;

.field aK:J


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/a;)V
    .locals 2

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/c;->aJ:Lcom/ipaynow/plugin/presenter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ipaynow/plugin/presenter/c;->aK:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ipaynow/plugin/presenter/c;->aK:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ipaynow/plugin/presenter/c;->aK:J

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    check-cast p1, Lcom/ipaynow/plugin/view/b;

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/b;->getPay_agent()Lcom/ipaynow/plugin/view/template/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/presenter/c;->aJ:Lcom/ipaynow/plugin/presenter/a;

    iget-object v1, v1, Lcom/ipaynow/plugin/presenter/a;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/c;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->f(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
