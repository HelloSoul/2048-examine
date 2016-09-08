.class public Ltk/woppo/mgame/InputListener;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MOVE_THRESHOLD:I = 0xfa

.field private static final RESET_STARTING:I = 0xa

.field private static final SWIPE_MIN_DISTANCE:I = 0x0

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x19


# instance fields
.field private hasMoved:Z

.field private lastdx:F

.field private lastdy:F

.field mView:Ltk/woppo/mgame/MainView;

.field private previousDirection:I

.field private previousX:F

.field private previousY:F

.field private startingX:F

.field private startingY:F

.field private veryLastDirection:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Ltk/woppo/mgame/MainView;)V
    .locals 1
    .param p1, "view"    # Ltk/woppo/mgame/MainView;

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 22
    iput v0, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltk/woppo/mgame/InputListener;->hasMoved:Z

    .line 29
    iput-object p1, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    .line 30
    return-void
.end method

.method private iconPressed(II)Z
    .locals 4
    .param p1, "sx"    # I
    .param p2, "sy"    # I

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, v0}, Ltk/woppo/mgame/InputListener;->isTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, p1

    iget v2, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v3, v3, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Ltk/woppo/mgame/InputListener;->inRange(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    int-to-float v1, p2

    iget v2, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v3, v3, Ltk/woppo/mgame/MainView;->iconSize:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Ltk/woppo/mgame/InputListener;->inRange(FFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inRange(FFF)Z
    .locals 1
    .param p1, "starting"    # F
    .param p2, "check"    # F
    .param p3, "ending"    # F

    .prologue
    .line 138
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTap(I)Z
    .locals 2
    .param p1, "factor"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Ltk/woppo/mgame/InputListener;->pathMoved()F

    move-result v0

    iget-object v1, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v1, v1, Ltk/woppo/mgame/MainView;->iconSize:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pathMoved()F
    .locals 4

    .prologue
    .line 129
    iget v0, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget v1, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    sub-float/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget v2, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget v2, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget v3, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, -0x3c860000    # -250.0f

    const/high16 v9, -0x3e380000    # -25.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return v7

    .line 36
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    .line 38
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    .line 39
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    .line 40
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousX:F

    .line 41
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousY:F

    .line 42
    iput v6, p0, Ltk/woppo/mgame/InputListener;->lastdx:F

    .line 43
    iput v6, p0, Ltk/woppo/mgame/InputListener;->lastdy:F

    .line 44
    const/4 v3, 0x0

    iput-boolean v3, p0, Ltk/woppo/mgame/InputListener;->hasMoved:Z

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    .line 49
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3}, Ltk/woppo/mgame/MainGame;->isActive()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 50
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->previousX:F

    sub-float v0, v3, v4

    .line 51
    .local v0, "dx":F
    iget v3, p0, Ltk/woppo/mgame/InputListener;->lastdx:F

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Ltk/woppo/mgame/InputListener;->lastdx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 52
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    .line 53
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    .line 54
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    .line 55
    iput v0, p0, Ltk/woppo/mgame/InputListener;->lastdx:F

    .line 56
    iget v3, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 58
    :cond_1
    iget v3, p0, Ltk/woppo/mgame/InputListener;->lastdx:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    .line 59
    iput v0, p0, Ltk/woppo/mgame/InputListener;->lastdx:F

    .line 61
    :cond_2
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->previousY:F

    sub-float v1, v3, v4

    .line 62
    .local v1, "dy":F
    iget v3, p0, Ltk/woppo/mgame/InputListener;->lastdy:F

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Ltk/woppo/mgame/InputListener;->lastdy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 63
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    .line 64
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    .line 65
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    .line 66
    iput v1, p0, Ltk/woppo/mgame/InputListener;->lastdy:F

    .line 67
    iget v3, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 69
    :cond_3
    iget v3, p0, Ltk/woppo/mgame/InputListener;->lastdy:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 70
    iput v1, p0, Ltk/woppo/mgame/InputListener;->lastdy:F

    .line 72
    :cond_4
    invoke-direct {p0}, Ltk/woppo/mgame/InputListener;->pathMoved()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    iget-boolean v3, p0, Ltk/woppo/mgame/InputListener;->hasMoved:Z

    if-nez v3, :cond_b

    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "moved":Z
    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_6

    :cond_5
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x437a0000    # 250.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_c

    :cond_6
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_c

    .line 76
    const/4 v2, 0x1

    .line 77
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 78
    iput v8, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    .line 79
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3, v8}, Ltk/woppo/mgame/MainGame;->move(I)V

    .line 87
    :cond_7
    :goto_1
    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_9

    :cond_8
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x437a0000    # 250.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    :cond_9
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    rem-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_f

    .line 88
    const/4 v2, 0x1

    .line 89
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    mul-int/lit8 v3, v3, 0x5

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 90
    const/4 v3, 0x5

    iput v3, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    .line 91
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3, v7}, Ltk/woppo/mgame/MainGame;->move(I)V

    .line 98
    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    .line 99
    iput-boolean v7, p0, Ltk/woppo/mgame/InputListener;->hasMoved:Z

    .line 100
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    .line 101
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    .line 105
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "moved":Z
    :cond_b
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousX:F

    .line 106
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousY:F

    goto/16 :goto_0

    .line 80
    .restart local v0    # "dx":F
    .restart local v1    # "dy":F
    .restart local v2    # "moved":Z
    :cond_c
    cmpg-float v3, v1, v9

    if-gtz v3, :cond_d

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_e

    :cond_d
    iget v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->startingY:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_7

    :cond_e
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_7

    .line 81
    const/4 v2, 0x1

    .line 82
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 83
    const/4 v3, 0x3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    .line 84
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ltk/woppo/mgame/MainGame;->move(I)V

    goto :goto_1

    .line 92
    :cond_f
    cmpg-float v3, v0, v9

    if-gtz v3, :cond_10

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_11

    :cond_10
    iget v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget v4, p0, Ltk/woppo/mgame/InputListener;->startingX:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_a

    :cond_11
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    rem-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_a

    .line 93
    const/4 v2, 0x1

    .line 94
    iget v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    mul-int/lit8 v3, v3, 0x7

    iput v3, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 95
    const/4 v3, 0x7

    iput v3, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    .line 96
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ltk/woppo/mgame/MainGame;->move(I)V

    goto :goto_2

    .line 109
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "moved":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->x:F

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Ltk/woppo/mgame/InputListener;->y:F

    .line 111
    iput v7, p0, Ltk/woppo/mgame/InputListener;->previousDirection:I

    .line 112
    iput v7, p0, Ltk/woppo/mgame/InputListener;->veryLastDirection:I

    .line 114
    iget-boolean v3, p0, Ltk/woppo/mgame/InputListener;->hasMoved:Z

    if-nez v3, :cond_0

    .line 115
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v3, v3, Ltk/woppo/mgame/MainView;->sXNewGame:I

    iget-object v4, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v4, v4, Ltk/woppo/mgame/MainView;->sYIcons:I

    invoke-direct {p0, v3, v4}, Ltk/woppo/mgame/InputListener;->iconPressed(II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 116
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3}, Ltk/woppo/mgame/MainGame;->newGame()V

    goto/16 :goto_0

    .line 117
    :cond_12
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v3, v3, Ltk/woppo/mgame/MainView;->sXUndo:I

    iget-object v4, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v4, v4, Ltk/woppo/mgame/MainView;->sYIcons:I

    invoke-direct {p0, v3, v4}, Ltk/woppo/mgame/InputListener;->iconPressed(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 118
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3}, Ltk/woppo/mgame/MainGame;->revertUndoState()V

    goto/16 :goto_0

    .line 119
    :cond_13
    invoke-direct {p0, v8}, Ltk/woppo/mgame/InputListener;->isTap(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v3, v3, Ltk/woppo/mgame/MainView;->startingX:I

    int-to-float v3, v3

    iget v4, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget-object v5, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v5, v5, Ltk/woppo/mgame/MainView;->endingX:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Ltk/woppo/mgame/InputListener;->inRange(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v3, v3, Ltk/woppo/mgame/MainView;->startingY:I

    int-to-float v3, v3

    iget v4, p0, Ltk/woppo/mgame/InputListener;->x:F

    iget-object v5, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget v5, v5, Ltk/woppo/mgame/MainView;->endingY:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Ltk/woppo/mgame/InputListener;->inRange(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-boolean v3, v3, Ltk/woppo/mgame/MainView;->continueButtonEnabled:Z

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Ltk/woppo/mgame/InputListener;->mView:Ltk/woppo/mgame/MainView;

    iget-object v3, v3, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v3}, Ltk/woppo/mgame/MainGame;->setEndlessMode()V

    goto/16 :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
