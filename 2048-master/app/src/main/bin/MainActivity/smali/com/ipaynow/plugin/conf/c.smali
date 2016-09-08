.class public final Lcom/ipaynow/plugin/conf/c;
.super Ljava/lang/Object;


# static fields
.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/utils/g;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/c;->f:I

    invoke-static {}, Lcom/ipaynow/plugin/utils/g;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/c;->g:I

    invoke-static {}, Lcom/ipaynow/plugin/utils/g;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/c;->h:I

    invoke-static {}, Lcom/ipaynow/plugin/utils/g;->generateViewId()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/conf/c;->i:I

    return-void
.end method
