.class public final Lcom/ipaynow/plugin/utils/f;
.super Ljava/lang/Object;


# direct methods
.method public static F()[I
    .locals 4

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v1, v0

    const/4 v0, 0x1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v2, v1, v0

    return-object v1
.end method

.method public static a(F)I
    .locals 2

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
