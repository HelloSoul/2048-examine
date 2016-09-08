.class final Lcom/ipaynow/plugin/presenter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aJ:Lcom/ipaynow/plugin/presenter/a;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/b;->aJ:Lcom/ipaynow/plugin/presenter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/presenter/b;->aJ:Lcom/ipaynow/plugin/presenter/a;

    iget-object v0, v0, Lcom/ipaynow/plugin/presenter/a;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/presenter/PayMethodActivity;->onBackPressed()V

    return-void
.end method
