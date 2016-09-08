.class public Ltk/woppo/mgame/AnimationCell;
.super Ltk/woppo/mgame/Cell;
.source "AnimationCell.java"


# instance fields
.field private animationTime:J

.field private animationType:I

.field private delayTime:J

.field public extras:[I

.field private timeElapsed:J


# direct methods
.method public constructor <init>(IIIJJ[I)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animationType"    # I
    .param p4, "length"    # J
    .param p6, "delay"    # J
    .param p8, "extras"    # [I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 12
    iput p3, p0, Ltk/woppo/mgame/AnimationCell;->animationType:I

    .line 13
    iput-wide p4, p0, Ltk/woppo/mgame/AnimationCell;->animationTime:J

    .line 14
    iput-wide p6, p0, Ltk/woppo/mgame/AnimationCell;->delayTime:J

    .line 15
    iput-object p8, p0, Ltk/woppo/mgame/AnimationCell;->extras:[I

    .line 16
    return-void
.end method


# virtual methods
.method public animationDone()Z
    .locals 4

    .prologue
    .line 27
    iget-wide v0, p0, Ltk/woppo/mgame/AnimationCell;->animationTime:J

    iget-wide v2, p0, Ltk/woppo/mgame/AnimationCell;->delayTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ltk/woppo/mgame/AnimationCell;->timeElapsed:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Ltk/woppo/mgame/AnimationCell;->animationType:I

    return v0
.end method

.method public getPercentageDone()D
    .locals 8

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Ltk/woppo/mgame/AnimationCell;->timeElapsed:J

    iget-wide v6, p0, Ltk/woppo/mgame/AnimationCell;->delayTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v2, v4

    iget-wide v4, p0, Ltk/woppo/mgame/AnimationCell;->animationTime:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 35
    iget-wide v0, p0, Ltk/woppo/mgame/AnimationCell;->timeElapsed:J

    iget-wide v2, p0, Ltk/woppo/mgame/AnimationCell;->delayTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tick(J)V
    .locals 3
    .param p1, "timeElapsed"    # J

    .prologue
    .line 23
    iget-wide v0, p0, Ltk/woppo/mgame/AnimationCell;->timeElapsed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ltk/woppo/mgame/AnimationCell;->timeElapsed:J

    .line 24
    return-void
.end method
