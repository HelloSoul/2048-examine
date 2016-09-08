.class Ltk/woppo/mgame/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk/woppo/mgame/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltk/woppo/mgame/SplashActivity;


# direct methods
.method constructor <init>(Ltk/woppo/mgame/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ltk/woppo/mgame/SplashActivity$1;->this$0:Ltk/woppo/mgame/SplashActivity;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltk/woppo/mgame/SplashActivity$1;->this$0:Ltk/woppo/mgame/SplashActivity;

    const-class v2, Ltk/woppo/mgame/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ltk/woppo/mgame/SplashActivity$1;->this$0:Ltk/woppo/mgame/SplashActivity;

    invoke-virtual {v1, v0}, Ltk/woppo/mgame/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 20
    iget-object v1, p0, Ltk/woppo/mgame/SplashActivity$1;->this$0:Ltk/woppo/mgame/SplashActivity;

    invoke-virtual {v1}, Ltk/woppo/mgame/SplashActivity;->finish()V

    .line 21
    return-void
.end method
