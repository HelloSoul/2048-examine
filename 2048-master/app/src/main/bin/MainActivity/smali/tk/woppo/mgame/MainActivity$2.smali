.class Ltk/woppo/mgame/MainActivity$2;
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
    iput-object p1, p0, Ltk/woppo/mgame/MainActivity$2;->this$0:Ltk/woppo/mgame/MainActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Ltk/woppo/mgame/MainActivity$2;->this$0:Ltk/woppo/mgame/MainActivity;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainActivity;->finish()V

    .line 226
    return-void
.end method
