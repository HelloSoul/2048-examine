.class Ltk/woppo/mgame/PayActivity$4;
.super Ljava/lang/Thread;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk/woppo/mgame/PayActivity;->onResume()V
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
    iput-object p1, p0, Ltk/woppo/mgame/PayActivity$4;->this$0:Ltk/woppo/mgame/PayActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 174
    iget-object v4, p0, Ltk/woppo/mgame/PayActivity$4;->this$0:Ltk/woppo/mgame/PayActivity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Ltk/woppo/mgame/PayActivity;->isFirst:Z

    .line 175
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 177
    const/16 v1, 0xe

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 191
    return-void

    .line 178
    :cond_0
    const/16 v2, 0x3c

    .local v2, "j":I
    :goto_1
    if-gez v2, :cond_1

    .line 177
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 180
    .local v3, "obtain":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 181
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 182
    iget-object v4, p0, Ltk/woppo/mgame/PayActivity$4;->this$0:Ltk/woppo/mgame/PayActivity;

    iget-object v4, v4, Ltk/woppo/mgame/PayActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
