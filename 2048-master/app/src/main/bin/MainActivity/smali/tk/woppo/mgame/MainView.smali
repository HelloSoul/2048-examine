.class public Ltk/woppo/mgame/MainView;
.super Landroid/view/View;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltk/woppo/mgame/MainView$LoadIPNAds;
    }
.end annotation


# static fields
.field static final BASE_ANIMATION_TIME:I = 0x5f5e100

.field static final INITIAL_VELOCITY:F = 0.375f

.field static final MERGING_ACCELERATION:F = -0.5f


# instance fields
.field private TEXT_BLACK:I

.field private TEXT_BROWN:I

.field private TEXT_WHITE:I

.field public ads:Ltk/woppo/mgame/MainView$LoadIPNAds;

.field private background:Landroid/graphics/Bitmap;

.field private backgroundRectangle:Landroid/graphics/drawable/Drawable;

.field private bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

.field private bodyStartYAll:I

.field bodyTextSize:F

.field private cellSize:I

.field private cellTextSize:F

.field public continueButtonEnabled:Z

.field currentTime:J

.field private eYAll:I

.field public endingX:I

.field public endingY:I

.field private fadeRectangle:Landroid/graphics/drawable/Drawable;

.field public game:Ltk/woppo/mgame/MainGame;

.field gameOverTextSize:F

.field private gridWidth:I

.field public hasSaveState:Z

.field headerTextSize:F

.field private iconPaddingSize:I

.field public iconSize:I

.field instructionsTextSize:F

.field lastFPSTime:J

.field private lightUpRectangle:Landroid/graphics/drawable/Drawable;

.field private loseGameOverlay:Landroid/graphics/drawable/BitmapDrawable;

.field public final numCellTypes:I

.field paint:Landroid/graphics/Paint;

.field refreshLastTime:Z

.field public sXNewGame:I

.field public sXUndo:I

.field private sYAll:I

.field public sYIcons:I

.field public startingX:I

.field public startingY:I

.field private textPaddingSize:I

.field private textSize:F

.field private titleStartYAll:I

.field titleTextSize:F

.field private titleWidthHighScore:I

.field private titleWidthScore:I

.field private winGameContinueOverlay:Landroid/graphics/drawable/BitmapDrawable;

.field private winGameFinalOverlay:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltk/woppo/mgame/MainView$LoadIPNAds;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ads"    # Ltk/woppo/mgame/MainView$LoadIPNAds;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 550
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    .line 20
    iput-boolean v4, p0, Ltk/woppo/mgame/MainView;->hasSaveState:Z

    .line 21
    iput v7, p0, Ltk/woppo/mgame/MainView;->numCellTypes:I

    .line 22
    iput-boolean v4, p0, Ltk/woppo/mgame/MainView;->continueButtonEnabled:Z

    .line 25
    iput v4, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    .line 26
    iput v5, p0, Ltk/woppo/mgame/MainView;->textSize:F

    .line 27
    iput v5, p0, Ltk/woppo/mgame/MainView;->cellTextSize:F

    .line 28
    iput v4, p0, Ltk/woppo/mgame/MainView;->gridWidth:I

    .line 41
    new-array v3, v7, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    .line 45
    iput-object v8, p0, Ltk/woppo/mgame/MainView;->background:Landroid/graphics/Bitmap;

    .line 65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Ltk/woppo/mgame/MainView;->lastFPSTime:J

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Ltk/woppo/mgame/MainView;->currentTime:J

    .line 76
    iput-boolean v6, p0, Ltk/woppo/mgame/MainView;->refreshLastTime:Z

    .line 82
    iput-object v8, p0, Ltk/woppo/mgame/MainView;->ads:Ltk/woppo/mgame/MainView$LoadIPNAds;

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 552
    .local v2, "resources":Landroid/content/res/Resources;
    iput-object p2, p0, Ltk/woppo/mgame/MainView;->ads:Ltk/woppo/mgame/MainView$LoadIPNAds;

    .line 554
    new-instance v3, Ltk/woppo/mgame/MainGame;

    invoke-direct {v3, p1, p0}, Ltk/woppo/mgame/MainGame;-><init>(Landroid/content/Context;Ltk/woppo/mgame/MainView;)V

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    .line 558
    const v3, 0x7f020001

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    .line 559
    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->lightUpRectangle:Landroid/graphics/drawable/Drawable;

    .line 560
    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->fadeRectangle:Landroid/graphics/drawable/Drawable;

    .line 561
    const/high16 v3, 0x7f040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/MainView;->TEXT_WHITE:I

    .line 562
    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/MainView;->TEXT_BLACK:I

    .line 563
    const v3, 0x7f040002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/MainView;->TEXT_BROWN:I

    .line 564
    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ltk/woppo/mgame/MainView;->setBackgroundColor(I)V

    .line 565
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "ClearSans-Bold.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 566
    .local v1, "font":Landroid/graphics/Typeface;
    iget-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 567
    iget-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v1    # "font":Landroid/graphics/Typeface;
    :goto_0
    new-instance v3, Ltk/woppo/mgame/InputListener;

    invoke-direct {v3, p0}, Ltk/woppo/mgame/InputListener;-><init>(Ltk/woppo/mgame/MainView;)V

    invoke-virtual {p0, v3}, Ltk/woppo/mgame/MainView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 572
    iget-object v3, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3}, Ltk/woppo/mgame/MainGame;->newGame()V

    .line 573
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Error getting assets?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private centerText()I
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private createBackgroundBitmap(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 412
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ltk/woppo/mgame/MainView;->background:Landroid/graphics/Bitmap;

    .line 413
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Ltk/woppo/mgame/MainView;->background:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 414
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v0}, Ltk/woppo/mgame/MainView;->drawHeader(Landroid/graphics/Canvas;)V

    .line 415
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltk/woppo/mgame/MainView;->drawNewGameButton(Landroid/graphics/Canvas;Z)V

    .line 416
    invoke-direct {p0, v0}, Ltk/woppo/mgame/MainView;->drawUndoButton(Landroid/graphics/Canvas;)V

    .line 417
    invoke-direct {p0, v0}, Ltk/woppo/mgame/MainView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 418
    invoke-direct {p0, v0}, Ltk/woppo/mgame/MainView;->drawBackgroundGrid(Landroid/graphics/Canvas;)V

    .line 419
    invoke-direct {p0, v0}, Ltk/woppo/mgame/MainView;->drawInstructions(Landroid/graphics/Canvas;)V

    .line 421
    return-void
.end method

.method private createBitmapCells()V
    .locals 13

    .prologue
    .line 425
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 426
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->getCellRectangleIds()[I

    move-result-object v8

    .line 427
    .local v8, "cellRectangleIds":[I
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 428
    const/4 v12, 0x1

    .local v12, "xx":I
    :goto_0
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v0, v0

    if-lt v12, v0, :cond_0

    .line 439
    return-void

    .line 429
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v11, v2

    .line 430
    .local v11, "value":I
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Ltk/woppo/mgame/MainView;->cellTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 431
    iget v0, p0, Ltk/woppo/mgame/MainView;->cellTextSize:F

    iget v2, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    iget v2, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iget-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v10, v0, v2

    .line 432
    .local v10, "tempTextSize":F
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 433
    iget v0, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    iget v2, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 434
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v1, "canvas":Landroid/graphics/Canvas;
    aget v0, v8, v12

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    iget v6, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 436
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v11, v0, v2}, Ltk/woppo/mgame/MainView;->drawCellText(Landroid/graphics/Canvas;III)V

    .line 437
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v0, v12

    .line 428
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private createEndGameStates(Landroid/graphics/Canvas;ZZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "win"    # Z
    .param p3, "showButton"    # Z

    .prologue
    const/16 v2, 0x7f

    const/16 v11, 0xff

    const/4 v3, 0x0

    .line 381
    iget v0, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->startingX:I

    sub-int v5, v0, v1

    .line 382
    .local v5, "width":I
    iget v0, p0, Ltk/woppo/mgame/MainView;->endingY:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->startingY:I

    sub-int v6, v0, v1

    .line 383
    .local v6, "length":I
    div-int/lit8 v7, v5, 0x2

    .line 384
    .local v7, "middleX":I
    div-int/lit8 v8, v6, 0x2

    .line 385
    .local v8, "middleY":I
    if-eqz p2, :cond_1

    .line 386
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->lightUpRectangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 387
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->lightUpRectangle:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 388
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->lightUpRectangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 389
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->TEXT_WHITE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 391
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->gameOverTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 392
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 393
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v0

    sub-int v10, v8, v0

    .line 394
    .local v10, "textBottom":I
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v7

    int-to-float v2, v10

    iget-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 395
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "text":Ljava/lang/String;
    :goto_0
    int-to-float v0, v7

    iget v1, p0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 409
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "textBottom":I
    :goto_1
    return-void

    .line 397
    .restart local v10    # "textBottom":I
    :cond_0
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 400
    .end local v10    # "textBottom":I
    :cond_1
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->fadeRectangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 401
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->fadeRectangle:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 402
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->fadeRectangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 403
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->TEXT_BLACK:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 405
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->gameOverTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 407
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v7

    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v2

    sub-int v2, v8, v2

    int-to-float v2, v2

    iget-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private createOverlays()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 464
    .local v2, "resources":Landroid/content/res/Resources;
    iget v3, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v4, p0, Ltk/woppo/mgame/MainView;->startingX:I

    sub-int/2addr v3, v4

    iget v4, p0, Ltk/woppo/mgame/MainView;->endingY:I

    iget v5, p0, Ltk/woppo/mgame/MainView;->startingY:I

    sub-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v1, v7, v7}, Ltk/woppo/mgame/MainView;->createEndGameStates(Landroid/graphics/Canvas;ZZ)V

    .line 467
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->winGameContinueOverlay:Landroid/graphics/drawable/BitmapDrawable;

    .line 468
    iget v3, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v4, p0, Ltk/woppo/mgame/MainView;->startingX:I

    sub-int/2addr v3, v4

    iget v4, p0, Ltk/woppo/mgame/MainView;->endingY:I

    iget v5, p0, Ltk/woppo/mgame/MainView;->startingY:I

    sub-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 470
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v1, v7, v6}, Ltk/woppo/mgame/MainView;->createEndGameStates(Landroid/graphics/Canvas;ZZ)V

    .line 471
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->winGameFinalOverlay:Landroid/graphics/drawable/BitmapDrawable;

    .line 472
    iget v3, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v4, p0, Ltk/woppo/mgame/MainView;->startingX:I

    sub-int/2addr v3, v4

    iget v4, p0, Ltk/woppo/mgame/MainView;->endingY:I

    iget v5, p0, Ltk/woppo/mgame/MainView;->startingY:I

    sub-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 473
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 474
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v1, v6, v6}, Ltk/woppo/mgame/MainView;->createEndGameStates(Landroid/graphics/Canvas;ZZ)V

    .line 475
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Ltk/woppo/mgame/MainView;->loseGameOverlay:Landroid/graphics/drawable/BitmapDrawable;

    .line 476
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 250
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Ltk/woppo/mgame/MainView;->startingX:I

    iget v4, p0, Ltk/woppo/mgame/MainView;->startingY:I

    iget v5, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v6, p0, Ltk/woppo/mgame/MainView;->endingY:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 251
    return-void
.end method

.method private drawBackgroundGrid(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x4

    .line 255
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 256
    .local v7, "resources":Landroid/content/res/Resources;
    const v0, 0x7f020002

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 258
    .local v2, "backgroundCell":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, "xx":I
    :goto_0
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v8, v11, :cond_0

    .line 268
    return-void

    .line 259
    :cond_0
    const/4 v9, 0x0

    .local v9, "yy":I
    :goto_1
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v9, v11, :cond_1

    .line 258
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 260
    :cond_1
    iget v0, p0, Ltk/woppo/mgame/MainView;->startingX:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    iget v10, p0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v1, v10

    mul-int/2addr v1, v8

    add-int v3, v0, v1

    .line 261
    .local v3, "sX":I
    iget v0, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    add-int v5, v3, v0

    .line 262
    .local v5, "eX":I
    iget v0, p0, Ltk/woppo/mgame/MainView;->startingY:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    iget v10, p0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v1, v10

    mul-int/2addr v1, v9

    add-int v4, v0, v1

    .line 263
    .local v4, "sY":I
    iget v0, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    add-int v6, v4, v0

    .local v6, "eY":I
    move-object v0, p0

    move-object v1, p1

    .line 265
    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 259
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private drawCellText(Landroid/graphics/Canvas;III)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "value"    # I
    .param p3, "sX"    # I
    .param p4, "sY"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v0

    .line 132
    .local v0, "textShiftY":I
    const/16 v1, 0x8

    if-lt p2, v1, :cond_0

    .line 133
    iget-object v1, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Ltk/woppo/mgame/MainView;->TEXT_WHITE:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget v3, p0, Ltk/woppo/mgame/MainView;->cellSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p4

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Ltk/woppo/mgame/MainView;->TEXT_BLACK:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private drawCells(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->textSize:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 274
    const/16 v26, 0x0

    .local v26, "xx":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v28, 0x4

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    .line 343
    return-void

    .line 275
    :cond_0
    const/16 v27, 0x0

    .local v27, "yy":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 274
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->startingX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    mul-int v29, v29, v26

    add-int v21, v28, v29

    .line 277
    .local v21, "sX":I
    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v28, v0

    add-int v13, v21, v28

    .line 278
    .local v13, "eX":I
    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->startingY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    mul-int v29, v29, v27

    add-int v22, v28, v29

    .line 279
    .local v22, "sY":I
    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v28, v0

    add-int v14, v22, v28

    .line 281
    .local v14, "eY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltk/woppo/mgame/Grid;->getCellContent(II)Ltk/woppo/mgame/Tile;

    move-result-object v8

    .line 282
    .local v8, "currentTile":Ltk/woppo/mgame/Tile;
    if-eqz v8, :cond_2

    .line 284
    invoke-virtual {v8}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v25

    .line 285
    .local v25, "value":I
    invoke-static/range {v25 .. v25}, Ltk/woppo/mgame/MainView;->log2(I)I

    move-result v16

    .line 288
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ltk/woppo/mgame/AnimationGrid;->getAnimationCell(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 289
    .local v4, "aArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    const/4 v6, 0x0

    .line 290
    .local v6, "animated":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v15, v28, -0x1

    .local v15, "i":I
    :goto_2
    if-gez v15, :cond_3

    .line 336
    if-nez v6, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v16

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v16

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    .end local v4    # "aArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    .end local v6    # "animated":Z
    .end local v15    # "i":I
    .end local v16    # "index":I
    .end local v25    # "value":I
    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 291
    .restart local v4    # "aArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    .restart local v6    # "animated":Z
    .restart local v15    # "i":I
    .restart local v16    # "index":I
    .restart local v25    # "value":I
    :cond_3
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltk/woppo/mgame/AnimationCell;

    .line 293
    .local v5, "aCell":Ltk/woppo/mgame/AnimationCell;
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getAnimationType()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 294
    const/4 v6, 0x1

    .line 296
    :cond_4
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->isActive()Z

    move-result v28

    if-nez v28, :cond_5

    .line 290
    :goto_3
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 300
    :cond_5
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getAnimationType()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 301
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getPercentageDone()D

    move-result-wide v18

    .line 302
    .local v18, "percentDone":D
    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v24, v0

    .line 303
    .local v24, "textScaleSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->textSize:F

    move/from16 v29, v0

    mul-float v29, v29, v24

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v24

    mul-float v7, v28, v29

    .line 306
    .local v7, "cellScaleSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v7

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    int-to-float v0, v13

    move/from16 v31, v0

    sub-float v31, v31, v7

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    int-to-float v0, v14

    move/from16 v32, v0

    sub-float v32, v32, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v28 .. v32}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v16

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    .end local v7    # "cellScaleSize":F
    .end local v18    # "percentDone":D
    .end local v24    # "textScaleSize":F
    :cond_6
    :goto_4
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 308
    :cond_7
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getAnimationType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 309
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getPercentageDone()D

    move-result-wide v18

    .line 310
    .restart local v18    # "percentDone":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v30, 0x3fd8000000000000L    # 0.375

    mul-double v30, v30, v18

    add-double v28, v28, v30

    .line 311
    const-wide/high16 v30, -0x4020000000000000L    # -0.5

    mul-double v30, v30, v18

    mul-double v30, v30, v18

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    .line 310
    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v24, v0

    .line 312
    .restart local v24    # "textScaleSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->textSize:F

    move/from16 v29, v0

    mul-float v29, v29, v24

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v24

    mul-float v7, v28, v29

    .line 315
    .restart local v7    # "cellScaleSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v7

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    int-to-float v0, v13

    move/from16 v31, v0

    sub-float v31, v31, v7

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    int-to-float v0, v14

    move/from16 v32, v0

    sub-float v32, v32, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v28 .. v32}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v16

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 317
    .end local v7    # "cellScaleSize":F
    .end local v18    # "percentDone":D
    .end local v24    # "textScaleSize":F
    :cond_8
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getAnimationType()I

    move-result v28

    if-nez v28, :cond_6

    .line 318
    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationCell;->getPercentageDone()D

    move-result-wide v18

    .line 319
    .restart local v18    # "percentDone":D
    move/from16 v23, v16

    .line 320
    .local v23, "tempIndex":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    .line 321
    add-int/lit8 v23, v23, -0x1

    .line 323
    :cond_9
    iget-object v0, v5, Ltk/woppo/mgame/AnimationCell;->extras:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v17, v28, v29

    .line 324
    .local v17, "previousX":I
    iget-object v0, v5, Ltk/woppo/mgame/AnimationCell;->extras:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v20, v28, v29

    .line 325
    .local v20, "previousY":I
    invoke-virtual {v8}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v9

    .line 326
    .local v9, "currentX":I
    invoke-virtual {v8}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v10

    .line 327
    .local v10, "currentY":I
    sub-int v28, v9, v17

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v30, v18, v30

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v11, v0

    .line 328
    .local v11, "dX":I
    sub-int v28, v10, v20

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v30, v18, v30

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v12, v0

    .line 329
    .local v12, "dY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v23

    add-int v29, v21, v11

    add-int v30, v22, v12

    add-int v31, v13, v11

    add-int v32, v14, v12

    invoke-virtual/range {v28 .. v32}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Ltk/woppo/mgame/MainView;->bitmapCell:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    aget-object v28, v28, v23

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "draw"    # Landroid/graphics/drawable/Drawable;
    .param p3, "startingX"    # I
    .param p4, "startingY"    # I
    .param p5, "endingX"    # I
    .param p6, "endingY"    # I

    .prologue
    .line 126
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    return-void
.end method

.method private drawEndGameState(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 346
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 347
    .local v0, "alphaChange":D
    const/4 v4, 0x0

    iput-boolean v4, p0, Ltk/woppo/mgame/MainView;->continueButtonEnabled:Z

    .line 348
    iget-object v4, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v4, v4, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    iget-object v4, v4, Ltk/woppo/mgame/AnimationGrid;->globalAnimation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "displayOverlay":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v4}, Ltk/woppo/mgame/MainGame;->gameWon()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 355
    iget-object v4, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v4}, Ltk/woppo/mgame/MainGame;->canContinue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 356
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltk/woppo/mgame/MainView;->continueButtonEnabled:Z

    .line 357
    iget-object v3, p0, Ltk/woppo/mgame/MainView;->winGameContinueOverlay:Landroid/graphics/drawable/BitmapDrawable;

    .line 365
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 366
    iget v4, p0, Ltk/woppo/mgame/MainView;->startingX:I

    iget v5, p0, Ltk/woppo/mgame/MainView;->startingY:I

    iget v6, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v7, p0, Ltk/woppo/mgame/MainView;->endingY:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 367
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 368
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    :cond_2
    return-void

    .line 348
    .end local v3    # "displayOverlay":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltk/woppo/mgame/AnimationCell;

    .line 349
    .local v2, "animation":Ltk/woppo/mgame/AnimationCell;
    invoke-virtual {v2}, Ltk/woppo/mgame/AnimationCell;->getAnimationType()I

    move-result v5

    if-nez v5, :cond_0

    .line 350
    invoke-virtual {v2}, Ltk/woppo/mgame/AnimationCell;->getPercentageDone()D

    move-result-wide v0

    goto :goto_0

    .line 359
    .end local v2    # "animation":Ltk/woppo/mgame/AnimationCell;
    .restart local v3    # "displayOverlay":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    iget-object v3, p0, Ltk/woppo/mgame/MainView;->winGameFinalOverlay:Landroid/graphics/drawable/BitmapDrawable;

    .line 361
    goto :goto_1

    :cond_5
    iget-object v4, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v4}, Ltk/woppo/mgame/MainGame;->gameLost()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    iget-object v3, p0, Ltk/woppo/mgame/MainView;->loseGameOverlay:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method private drawEndlessText(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 374
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 375
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ltk/woppo/mgame/MainView;->TEXT_BLACK:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ltk/woppo/mgame/MainView;->startingX:I

    int-to-float v1, v1

    iget v2, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 231
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Ltk/woppo/mgame/MainView;->headerTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Ltk/woppo/mgame/MainView;->TEXT_BLACK:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 234
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v2

    mul-int/lit8 v1, v2, 0x2

    .line 235
    .local v1, "textShiftY":I
    iget v2, p0, Ltk/woppo/mgame/MainView;->sYAll:I

    sub-int v0, v2, v1

    .line 236
    .local v0, "headerStartY":I
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Ltk/woppo/mgame/MainView;->startingX:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 237
    return-void
.end method

.method private drawInstructions(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    iget-object v1, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Ltk/woppo/mgame/MainView;->instructionsTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 243
    iget-object v1, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 244
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 245
    .local v0, "textShiftY":I
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    iget v2, p0, Ltk/woppo/mgame/MainView;->startingX:I

    int-to-float v2, v2

    iget v3, p0, Ltk/woppo/mgame/MainView;->endingY:I

    sub-int/2addr v3, v0

    iget v4, p0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    .line 245
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method private drawNewGameButton(Landroid/graphics/Canvas;Z)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "lightUp"    # Z

    .prologue
    .line 184
    if-eqz p2, :cond_0

    .line 186
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->lightUpRectangle:Landroid/graphics/drawable/Drawable;

    .line 187
    iget v3, p0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    .line 188
    iget v4, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    .line 189
    iget v0, p0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int v5, v0, v1

    .line 190
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 185
    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 202
    :goto_0
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 203
    iget v0, p0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    add-int v3, v0, v1

    .line 204
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    add-int v4, v0, v1

    .line 205
    iget v0, p0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    sub-int v5, v0, v1

    .line 206
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    sub-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 201
    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 208
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    .line 195
    iget v3, p0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    .line 196
    iget v4, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v0, p0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int v5, v0, v1

    .line 197
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 193
    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0
.end method

.method private drawScoreText(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v12, v12, Ltk/woppo/mgame/MainGame;->highScore:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v0, v10

    .line 146
    .local v0, "bodyWidthHighScore":I
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v12, v12, Ltk/woppo/mgame/MainGame;->score:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v1, v10

    .line 148
    .local v1, "bodyWidthScore":I
    iget v10, p0, Ltk/woppo/mgame/MainView;->titleWidthHighScore:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, p0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    mul-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 149
    .local v8, "textWidthHighScore":I
    iget v10, p0, Ltk/woppo/mgame/MainView;->titleWidthScore:I

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, p0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    mul-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 151
    .local v9, "textWidthScore":I
    div-int/lit8 v6, v8, 0x2

    .line 152
    .local v6, "textMiddleHighScore":I
    div-int/lit8 v7, v9, 0x2

    .line 154
    .local v7, "textMiddleScore":I
    iget v2, p0, Ltk/woppo/mgame/MainView;->endingX:I

    .line 155
    .local v2, "eXHighScore":I
    sub-int v4, v2, v8

    .line 157
    .local v4, "sXHighScore":I
    iget v10, p0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    sub-int v3, v4, v10

    .line 158
    .local v3, "eXScore":I
    sub-int v5, v3, v9

    .line 161
    .local v5, "sXScore":I
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Ltk/woppo/mgame/MainView;->sYAll:I

    iget v12, p0, Ltk/woppo/mgame/MainView;->eYAll:I

    invoke-virtual {v10, v4, v11, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->titleTextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->TEXT_BROWN:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    add-int v11, v4, v6

    int-to-float v11, v11

    iget v12, p0, Ltk/woppo/mgame/MainView;->titleStartYAll:I

    int-to-float v12, v12

    iget-object v13, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->TEXT_WHITE:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v10, v10, Ltk/woppo/mgame/MainGame;->highScore:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    add-int v11, v4, v6

    int-to-float v11, v11

    iget v12, p0, Ltk/woppo/mgame/MainView;->bodyStartYAll:I

    int-to-float v12, v12

    iget-object v13, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Ltk/woppo/mgame/MainView;->sYAll:I

    iget v12, p0, Ltk/woppo/mgame/MainView;->eYAll:I

    invoke-virtual {v10, v5, v11, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->titleTextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->TEXT_BROWN:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    add-int v11, v5, v7

    int-to-float v11, v11

    iget v12, p0, Ltk/woppo/mgame/MainView;->titleStartYAll:I

    int-to-float v12, v12

    iget-object v13, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    iget v11, p0, Ltk/woppo/mgame/MainView;->TEXT_WHITE:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v10, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v10, v10, Ltk/woppo/mgame/MainGame;->score:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    add-int v11, v5, v7

    int-to-float v11, v11

    iget v12, p0, Ltk/woppo/mgame/MainView;->bodyStartYAll:I

    int-to-float v12, v12

    iget-object v13, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    return-void
.end method

.method private drawUndoButton(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 212
    .line 213
    iget-object v2, p0, Ltk/woppo/mgame/MainView;->backgroundRectangle:Landroid/graphics/drawable/Drawable;

    .line 214
    iget v3, p0, Ltk/woppo/mgame/MainView;->sXUndo:I

    .line 215
    iget v4, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v0, p0, Ltk/woppo/mgame/MainView;->sXUndo:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int v5, v0, v1

    .line 216
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 212
    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 220
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 221
    iget v0, p0, Ltk/woppo/mgame/MainView;->sXUndo:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    add-int v3, v0, v1

    .line 222
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    add-int v4, v0, v1

    .line 223
    iget v0, p0, Ltk/woppo/mgame/MainView;->sXUndo:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    sub-int v5, v0, v1

    .line 224
    iget v0, p0, Ltk/woppo/mgame/MainView;->sYIcons:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    sub-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 219
    invoke-direct/range {v0 .. v6}, Ltk/woppo/mgame/MainView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 226
    return-void
.end method

.method private getCellRectangleIds()[I
    .locals 4

    .prologue
    .line 442
    const/16 v2, 0x12

    new-array v0, v2, [I

    .line 443
    .local v0, "cellRectangleIds":[I
    const/4 v2, 0x0

    const v3, 0x7f020002

    aput v3, v0, v2

    .line 444
    const/4 v2, 0x1

    const v3, 0x7f020006

    aput v3, v0, v2

    .line 445
    const/4 v2, 0x2

    const v3, 0x7f02000a

    aput v3, v0, v2

    .line 446
    const/4 v2, 0x3

    const v3, 0x7f02000e

    aput v3, v0, v2

    .line 447
    const/4 v2, 0x4

    const v3, 0x7f020005

    aput v3, v0, v2

    .line 448
    const/4 v2, 0x5

    const v3, 0x7f020009

    aput v3, v0, v2

    .line 449
    const/4 v2, 0x6

    const v3, 0x7f02000d

    aput v3, v0, v2

    .line 450
    const/4 v2, 0x7

    const v3, 0x7f020004

    aput v3, v0, v2

    .line 451
    const/16 v2, 0x8

    const v3, 0x7f020008

    aput v3, v0, v2

    .line 452
    const/16 v2, 0x9

    const v3, 0x7f02000c

    aput v3, v0, v2

    .line 453
    const/16 v2, 0xa

    const v3, 0x7f020003

    aput v3, v0, v2

    .line 454
    const/16 v2, 0xb

    const v3, 0x7f020007

    aput v3, v0, v2

    .line 455
    const/16 v1, 0xc

    .local v1, "xx":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 458
    return-object v0

    .line 456
    :cond_0
    const v2, 0x7f02000b

    aput v2, v0, v1

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLayout(II)V
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 494
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x5

    div-int v11, p1, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x7

    div-int v12, p2, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    .line 495
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    div-int/lit8 v11, v11, 0x7

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    .line 496
    div-int/lit8 v8, p1, 0x2

    .line 497
    .local v8, "screenMiddleX":I
    div-int/lit8 v9, p2, 0x2

    .line 498
    .local v9, "screenMiddleY":I
    move v2, v8

    .line 499
    .local v2, "boardMiddleX":I
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    div-int/lit8 v11, v11, 0x2

    add-int v3, v9, v11

    .line 500
    .local v3, "boardMiddleY":I
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->iconSize:I

    .line 502
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 504
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    const-string v14, "0000"

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    .line 505
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->cellTextSize:F

    .line 506
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->titleTextSize:F

    .line 507
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    div-double/2addr v12, v14

    double-to-int v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    .line 508
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    div-double/2addr v12, v14

    double-to-int v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->instructionsTextSize:F

    .line 509
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->headerTextSize:F

    .line 510
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->gameOverTextSize:F

    .line 511
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    .line 512
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->textSize:F

    const/high16 v12, 0x40a00000    # 5.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    .line 515
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v4, v12, v14

    .line 516
    .local v4, "halfNumSquaresX":D
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v6, v12, v14

    .line 518
    .local v6, "halfNumSquaresY":D
    int-to-double v12, v2

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move-object/from16 v0, p0

    iget v14, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v11, v14

    int-to-double v14, v11

    mul-double/2addr v14, v4

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v14, v11

    sub-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->startingX:I

    .line 519
    int-to-double v12, v2

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move-object/from16 v0, p0

    iget v14, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v11, v14

    int-to-double v14, v11

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v14, v11

    add-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->endingX:I

    .line 520
    int-to-double v12, v3

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move-object/from16 v0, p0

    iget v14, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v11, v14

    int-to-double v14, v11

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v14, v11

    sub-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->startingY:I

    .line 521
    int-to-double v12, v3

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    move-object/from16 v0, p0

    iget v14, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    add-int/2addr v11, v14

    int-to-double v14, v11

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->gridWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v14, v11

    add-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->endingY:I

    .line 523
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->titleTextSize:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 525
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v10

    .line 527
    .local v10, "textShiftYAll":I
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->startingY:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->cellSize:I

    int-to-double v14, v11

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->sYAll:I

    .line 528
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->sYAll:I

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->titleTextSize:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    int-to-float v12, v10

    sub-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->titleStartYAll:I

    .line 529
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->titleStartYAll:I

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->titleTextSize:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->bodyStartYAll:I

    .line 531
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->titleWidthHighScore:I

    .line 532
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Ltk/woppo/mgame/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->titleWidthScore:I

    .line 533
    move-object/from16 v0, p0

    iget-object v11, v0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 534
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainView;->centerText()I

    move-result v10

    .line 535
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->bodyStartYAll:I

    add-int/2addr v11, v10

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->bodyTextSize:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->textPaddingSize:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->eYAll:I

    .line 537
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->startingY:I

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->eYAll:I

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->iconSize:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->sYIcons:I

    .line 538
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->endingX:I

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->iconSize:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    .line 539
    move-object/from16 v0, p0

    iget v11, v0, Ltk/woppo/mgame/MainView;->sXNewGame:I

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->iconSize:I

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Ltk/woppo/mgame/MainView;->iconPaddingSize:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Ltk/woppo/mgame/MainView;->sXUndo:I

    .line 540
    invoke-virtual/range {p0 .. p0}, Ltk/woppo/mgame/MainView;->resyncTime()V

    .line 541
    return-void
.end method

.method private static log2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 489
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 490
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private tick()V
    .locals 6

    .prologue
    .line 479
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ltk/woppo/mgame/MainView;->currentTime:J

    .line 480
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v0, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    iget-wide v2, p0, Ltk/woppo/mgame/MainView;->currentTime:J

    iget-wide v4, p0, Ltk/woppo/mgame/MainView;->lastFPSTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ltk/woppo/mgame/AnimationGrid;->tickAll(J)V

    .line 481
    iget-wide v0, p0, Ltk/woppo/mgame/MainView;->currentTime:J

    iput-wide v0, p0, Ltk/woppo/mgame/MainView;->lastFPSTime:J

    .line 482
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->background:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ltk/woppo/mgame/MainView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    invoke-direct {p0, p1}, Ltk/woppo/mgame/MainView;->drawScoreText(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v0, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual {v0}, Ltk/woppo/mgame/AnimationGrid;->isAnimationActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltk/woppo/mgame/MainView;->drawNewGameButton(Landroid/graphics/Canvas;Z)V

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Ltk/woppo/mgame/MainView;->drawCells(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-direct {p0, p1}, Ltk/woppo/mgame/MainView;->drawEndGameState(Landroid/graphics/Canvas;)V

    .line 101
    :cond_1
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainGame;->canContinue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    invoke-direct {p0, p1}, Ltk/woppo/mgame/MainView;->drawEndlessText(Landroid/graphics/Canvas;)V

    .line 106
    :cond_2
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v0, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual {v0}, Ltk/woppo/mgame/AnimationGrid;->isAnimationActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    iget v0, p0, Ltk/woppo/mgame/MainView;->startingX:I

    iget v1, p0, Ltk/woppo/mgame/MainView;->startingY:I

    iget v2, p0, Ltk/woppo/mgame/MainView;->endingX:I

    iget v3, p0, Ltk/woppo/mgame/MainView;->endingY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Ltk/woppo/mgame/MainView;->invalidate(IIII)V

    .line 108
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->tick()V

    .line 114
    :cond_3
    :goto_0
    return-void

    .line 110
    :cond_4
    iget-object v0, p0, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ltk/woppo/mgame/MainView;->refreshLastTime:Z

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {p0}, Ltk/woppo/mgame/MainView;->invalidate()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltk/woppo/mgame/MainView;->refreshLastTime:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 119
    invoke-direct {p0, p1, p2}, Ltk/woppo/mgame/MainView;->getLayout(II)V

    .line 120
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->createBitmapCells()V

    .line 121
    invoke-direct {p0, p1, p2}, Ltk/woppo/mgame/MainView;->createBackgroundBitmap(II)V

    .line 122
    invoke-direct {p0}, Ltk/woppo/mgame/MainView;->createOverlays()V

    .line 123
    return-void
.end method

.method public resyncTime()V
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ltk/woppo/mgame/MainView;->lastFPSTime:J

    .line 486
    return-void
.end method

.method public setLoadIPNAds(Ltk/woppo/mgame/MainView$LoadIPNAds;)V
    .locals 0
    .param p1, "ads"    # Ltk/woppo/mgame/MainView$LoadIPNAds;

    .prologue
    .line 547
    iput-object p1, p0, Ltk/woppo/mgame/MainView;->ads:Ltk/woppo/mgame/MainView$LoadIPNAds;

    .line 548
    return-void
.end method
