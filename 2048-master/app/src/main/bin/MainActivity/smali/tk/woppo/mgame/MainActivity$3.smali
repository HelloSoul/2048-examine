.class Ltk/woppo/mgame/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Ltk/woppo/mgame/MainActivity$3;->this$0:Ltk/woppo/mgame/MainActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 233
    iget-object v0, p0, Ltk/woppo/mgame/MainActivity$3;->this$0:Ltk/woppo/mgame/MainActivity;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainActivity;->finish()V

    .line 234
    return-void
.end method
