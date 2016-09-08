.class public final Lcom/ipaynow/plugin/manager/b/a;
.super Ljava/lang/Object;


# instance fields
.field private ac:I

.field private ad:I

.field private ae:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/f;->a(F)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ac:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/b/a;-><init>()V

    return-void
.end method

.method public static o()Lcom/ipaynow/plugin/manager/b/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/b/b;->r()Lcom/ipaynow/plugin/manager/b/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ac:I

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/f;->a(F)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ac:I

    :cond_0
    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ac:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public final p()I
    .locals 2

    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ad:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ae:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/utils/f;->F()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/ipaynow/plugin/manager/b/a;->ad:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ae:I

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ad:I

    return v0
.end method

.method public final q()I
    .locals 2

    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ad:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ae:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/utils/f;->F()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/ipaynow/plugin/manager/b/a;->ad:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ae:I

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/manager/b/a;->ae:I

    return v0
.end method
