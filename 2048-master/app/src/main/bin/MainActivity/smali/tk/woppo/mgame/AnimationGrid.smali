.class public Ltk/woppo/mgame/AnimationGrid;
.super Ljava/lang/Object;
.source "AnimationGrid.java"


# instance fields
.field activeAnimations:I

.field public field:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList",
            "<",
            "Ltk/woppo/mgame/AnimationCell;",
            ">;"
        }
    .end annotation
.end field

.field public globalAnimation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltk/woppo/mgame/AnimationCell;",
            ">;"
        }
    .end annotation
.end field

.field oneMoreFrame:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v2, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    .line 9
    iput-boolean v2, p0, Ltk/woppo/mgame/AnimationGrid;->oneMoreFrame:Z

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltk/woppo/mgame/AnimationGrid;->globalAnimation:Ljava/util/ArrayList;

    .line 12
    filled-new-array {p1, p2}, [I

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/ArrayList;

    iput-object v2, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 19
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x0

    .local v1, "yy":I
    :goto_1
    if-lt v1, p2, :cond_1

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public cancelAnimation(Ltk/woppo/mgame/AnimationCell;)V
    .locals 2
    .param p1, "animation"    # Ltk/woppo/mgame/AnimationCell;

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-virtual {p1}, Ltk/woppo/mgame/AnimationCell;->getX()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ltk/woppo/mgame/AnimationCell;->getY()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Ltk/woppo/mgame/AnimationGrid;->globalAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltk/woppo/mgame/AnimationCell;->getX()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ltk/woppo/mgame/AnimationCell;->getY()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancelAnimations()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v5, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 80
    iget-object v2, p0, Ltk/woppo/mgame/AnimationGrid;->globalAnimation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 81
    iput v3, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    .line 82
    return-void

    .line 75
    :cond_0
    aget-object v0, v5, v4

    .line 76
    .local v0, "array":[Ljava/util/ArrayList;
    array-length v7, v0

    move v2, v3

    :goto_1
    if-lt v2, v7, :cond_1

    .line 75
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 76
    :cond_1
    aget-object v1, v0, v2

    .line 77
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getAnimationCell(II)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ltk/woppo/mgame/AnimationCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public isAnimationActive()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    iget v2, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    if-eqz v2, :cond_0

    .line 60
    iput-boolean v0, p0, Ltk/woppo/mgame/AnimationGrid;->oneMoreFrame:Z

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-boolean v2, p0, Ltk/woppo/mgame/AnimationGrid;->oneMoreFrame:Z

    if-eqz v2, :cond_1

    .line 63
    iput-boolean v1, p0, Ltk/woppo/mgame/AnimationGrid;->oneMoreFrame:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public startAnimation(IIIJJ[I)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animationType"    # I
    .param p4, "length"    # J
    .param p6, "delay"    # J
    .param p8, "extras"    # [I

    .prologue
    .line 22
    new-instance v0, Ltk/woppo/mgame/AnimationCell;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ltk/woppo/mgame/AnimationCell;-><init>(IIIJJ[I)V

    .line 23
    .local v0, "animationToAdd":Ltk/woppo/mgame/AnimationCell;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 24
    iget-object v1, p0, Ltk/woppo/mgame/AnimationGrid;->globalAnimation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_0
    iget v1, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    .line 29
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public tickAll(J)V
    .locals 13
    .param p1, "timeElapsed"    # J

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "cancelledAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    iget-object v4, p0, Ltk/woppo/mgame/AnimationGrid;->globalAnimation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    iget-object v7, p0, Ltk/woppo/mgame/AnimationGrid;->field:[[Ljava/util/ArrayList;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_2

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 56
    return-void

    .line 33
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk/woppo/mgame/AnimationCell;

    .line 34
    .local v0, "animation":Ltk/woppo/mgame/AnimationCell;
    invoke-virtual {v0, p1, p2}, Ltk/woppo/mgame/AnimationCell;->tick(J)V

    .line 35
    invoke-virtual {v0}, Ltk/woppo/mgame/AnimationCell;->animationDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget v6, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    goto :goto_0

    .line 41
    .end local v0    # "animation":Ltk/woppo/mgame/AnimationCell;
    :cond_2
    aget-object v1, v7, v6

    .line 42
    .local v1, "array":[Ljava/util/ArrayList;
    array-length v9, v1

    move v4, v5

    :goto_3
    if-lt v4, v9, :cond_3

    .line 41
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 42
    :cond_3
    aget-object v3, v1, v4

    .line 43
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 43
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk/woppo/mgame/AnimationCell;

    .line 44
    .restart local v0    # "animation":Ltk/woppo/mgame/AnimationCell;
    invoke-virtual {v0, p1, p2}, Ltk/woppo/mgame/AnimationCell;->tick(J)V

    .line 45
    invoke-virtual {v0}, Ltk/woppo/mgame/AnimationCell;->animationDone()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget v11, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Ltk/woppo/mgame/AnimationGrid;->activeAnimations:I

    goto :goto_4

    .line 53
    .end local v0    # "animation":Ltk/woppo/mgame/AnimationCell;
    .end local v1    # "array":[Ljava/util/ArrayList;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/AnimationCell;>;"
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk/woppo/mgame/AnimationCell;

    .line 54
    .restart local v0    # "animation":Ltk/woppo/mgame/AnimationCell;
    invoke-virtual {p0, v0}, Ltk/woppo/mgame/AnimationGrid;->cancelAnimation(Ltk/woppo/mgame/AnimationCell;)V

    goto :goto_2
.end method
