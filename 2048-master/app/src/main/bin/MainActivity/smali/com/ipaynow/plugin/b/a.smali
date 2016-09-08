.class public final Lcom/ipaynow/plugin/b/a;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field private static y:Lcom/ipaynow/plugin/b/b;

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ipaynow/plugin/b/b;

    invoke-direct {v0}, Lcom/ipaynow/plugin/b/b;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/b/a;->y:Lcom/ipaynow/plugin/b/b;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ipaynow/plugin/b/a;->z:Z

    const-string v0, ""

    sput-object v0, Lcom/ipaynow/plugin/b/a;->A:Ljava/lang/String;

    return-void
.end method
