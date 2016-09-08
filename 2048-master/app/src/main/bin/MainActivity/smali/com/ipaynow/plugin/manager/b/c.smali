.class public final Lcom/ipaynow/plugin/manager/b/c;
.super Ljava/lang/Object;


# instance fields
.field private ag:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/b/c;-><init>()V

    return-void
.end method

.method public static s()Lcom/ipaynow/plugin/manager/b/c;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/b/f;->w()Lcom/ipaynow/plugin/manager/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ipaynow/plugin/manager/b/d;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->u()Lcom/ipaynow/plugin/manager/b/e;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/manager/b/e;->as:Lcom/ipaynow/plugin/manager/b/e;

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->v()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->getPos()I

    move-result v0

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->v()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->getPos()I

    move-result v0

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v3, p2

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/f;->a(F)I

    move-result v3

    int-to-float v4, p3

    invoke-static {v4}, Lcom/ipaynow/plugin/utils/f;->a(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->u()Lcom/ipaynow/plugin/manager/b/e;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/manager/b/e;->at:Lcom/ipaynow/plugin/manager/b/e;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/ipaynow/plugin/conf/a;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ipaynow/plugin/manager/b/d;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/a;->getNinePatchDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/b/c;->ag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
