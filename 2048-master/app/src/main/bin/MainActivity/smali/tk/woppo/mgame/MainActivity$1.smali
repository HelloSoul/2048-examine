.class Ltk/woppo/mgame/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk/woppo/mgame/MainActivity;->showWindow(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltk/woppo/mgame/MainActivity;


# direct methods
.method constructor <init>(Ltk/woppo/mgame/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ltk/woppo/mgame/MainActivity$1;->this$0:Ltk/woppo/mgame/MainActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltk/woppo/mgame/MainActivity$1;->this$0:Ltk/woppo/mgame/MainActivity;

    const-class v2, Ltk/woppo/mgame/PayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ltk/woppo/mgame/MainActivity$1;->this$0:Ltk/woppo/mgame/MainActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ltk/woppo/mgame/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method
