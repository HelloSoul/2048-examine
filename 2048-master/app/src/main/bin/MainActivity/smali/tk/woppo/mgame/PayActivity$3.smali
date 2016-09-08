.class Ltk/woppo/mgame/PayActivity$3;
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
    iput-object p1, p0, Ltk/woppo/mgame/PayActivity$3;->this$0:Ltk/woppo/mgame/PayActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Ltk/woppo/mgame/PayActivity$3;->this$0:Ltk/woppo/mgame/PayActivity;

    invoke-virtual {v0}, Ltk/woppo/mgame/PayActivity;->finish()V

    .line 144
    return-void
.end method
