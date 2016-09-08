.class final Lcom/ipaynow/plugin/presenter/a;
.super Lcom/ipaynow/plugin/view/template/layout/g;


# instance fields
.field final synthetic this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/presenter/PayMethodActivity;Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/presenter/a;->this$0:Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {p0, p2}, Lcom/ipaynow/plugin/view/template/layout/g;-><init>(Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;)V

    return-void
.end method


# virtual methods
.method public final D()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/ipaynow/plugin/presenter/b;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/presenter/b;-><init>(Lcom/ipaynow/plugin/presenter/a;)V

    return-object v0
.end method

.method public final E()Lcom/ipaynow/plugin/view/template/layout/f;
    .locals 1

    new-instance v0, Lcom/ipaynow/plugin/presenter/c;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/presenter/c;-><init>(Lcom/ipaynow/plugin/presenter/a;)V

    return-object v0
.end method
