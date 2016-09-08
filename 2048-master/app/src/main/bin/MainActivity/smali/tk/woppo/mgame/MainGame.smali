.class public Ltk/woppo/mgame/MainGame;
.super Ljava/lang/Object;
.source "MainGame.java"


# static fields
.field public static final FADE_GLOBAL_ANIMATION:I = 0x0

.field public static final GAME_ENDLESS:I = 0x2

.field public static final GAME_ENDLESS_WON:I = 0x3

.field public static final GAME_LOST:I = -0x1

.field public static final GAME_NORMAL:I = 0x0

.field public static final GAME_NORMAL_WON:I = 0x1

.field public static final GAME_WIN:I = 0x1

.field private static final HIGH_SCORE:Ljava/lang/String; = "high score"

.field public static final MERGE_ANIMATION:I = 0x1

.field public static final MOVE_ANIMATION:I = 0x0

.field public static final MOVE_ANIMATION_TIME:J = 0x5f5e100L

.field public static final NOTIFICATION_ANIMATION_TIME:J = 0x1dcd6500L

.field public static final NOTIFICATION_DELAY_TIME:J = 0xbebc200L

.field public static final SPAWN_ANIMATION:I = -0x1

.field public static final SPAWN_ANIMATION_TIME:J = 0x5f5e100L

.field public static endingMaxValue:I = 0x0

.field public static final startingMaxValue:I = 0x800


# instance fields
.field public aGrid:Ltk/woppo/mgame/AnimationGrid;

.field private bufferGameState:I

.field private bufferScore:J

.field public canUndo:Z

.field public gameCount:J

.field public gameState:I

.field public grid:Ltk/woppo/mgame/Grid;

.field public highScore:J

.field public lastGameState:I

.field public lastScore:J

.field private mContext:Landroid/content/Context;

.field private mView:Ltk/woppo/mgame/MainView;

.field final numSquaresX:I

.field final numSquaresY:I

.field public score:J

.field final startTiles:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltk/woppo/mgame/MainView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Ltk/woppo/mgame/MainView;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    .line 43
    iput v4, p0, Ltk/woppo/mgame/MainGame;->numSquaresX:I

    .line 44
    iput v4, p0, Ltk/woppo/mgame/MainGame;->numSquaresY:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Ltk/woppo/mgame/MainGame;->startTiles:I

    .line 47
    iput v1, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 50
    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->score:J

    .line 51
    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    .line 52
    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->gameCount:J

    .line 53
    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->lastScore:J

    .line 54
    iput v1, p0, Ltk/woppo/mgame/MainGame;->lastGameState:I

    .line 56
    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->bufferScore:J

    .line 57
    iput v1, p0, Ltk/woppo/mgame/MainGame;->bufferGameState:I

    .line 63
    iput-object p1, p0, Ltk/woppo/mgame/MainGame;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    .line 65
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x11

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Ltk/woppo/mgame/MainGame;->endingMaxValue:I

    .line 66
    return-void
.end method

.method private addRandomTile()V
    .locals 6

    .prologue
    .line 107
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v2}, Ltk/woppo/mgame/Grid;->isCellsAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/4 v1, 0x2

    .line 109
    .local v1, "value":I
    :goto_0
    new-instance v0, Ltk/woppo/mgame/Tile;

    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v2}, Ltk/woppo/mgame/Grid;->randomAvailableCell()Ltk/woppo/mgame/Cell;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ltk/woppo/mgame/Tile;-><init>(Ltk/woppo/mgame/Cell;I)V

    .line 110
    .local v0, "tile":Ltk/woppo/mgame/Tile;
    invoke-direct {p0, v0}, Ltk/woppo/mgame/MainGame;->spawnTile(Ltk/woppo/mgame/Tile;)V

    .line 112
    .end local v0    # "tile":Ltk/woppo/mgame/Tile;
    .end local v1    # "value":I
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private addStartTiles()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->addRandomTile()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildTraversalsX(Ltk/woppo/mgame/Cell;)Ljava/util/List;
    .locals 4
    .param p1, "vector"    # Ltk/woppo/mgame/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltk/woppo/mgame/Cell;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "traversals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "xx":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 288
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 289
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 292
    :cond_0
    return-object v0

    .line 286
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildTraversalsY(Ltk/woppo/mgame/Cell;)Ljava/util/List;
    .locals 4
    .param p1, "vector"    # Ltk/woppo/mgame/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltk/woppo/mgame/Cell;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "traversals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "xx":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 301
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 302
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 305
    :cond_0
    return-object v0

    .line 299
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkLose()V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->movesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltk/woppo/mgame/MainGame;->gameWon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 259
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->endGame()V

    .line 261
    :cond_0
    return-void
.end method

.method private endGame()V
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 264
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    const/4 v3, 0x0

    const-wide/32 v4, 0x1dcd6500

    const-wide/32 v6, 0xbebc200

    const/4 v8, 0x0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Ltk/woppo/mgame/AnimationGrid;->startAnimation(IIIJJ[I)V

    .line 265
    iget-wide v0, p0, Ltk/woppo/mgame/MainGame;->score:J

    iget-wide v2, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 266
    iget-wide v0, p0, Ltk/woppo/mgame/MainGame;->score:J

    iput-wide v0, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    .line 267
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->recordHighScore()V

    .line 270
    :cond_0
    return-void
.end method

.method private findFarthestPosition(Ltk/woppo/mgame/Cell;Ltk/woppo/mgame/Cell;)[Ltk/woppo/mgame/Cell;
    .locals 6
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;
    .param p2, "vector"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 310
    new-instance v1, Ltk/woppo/mgame/Cell;

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v3

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v4

    invoke-direct {v1, v3, v4}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 312
    .local v1, "nextCell":Ltk/woppo/mgame/Cell;
    :cond_0
    move-object v2, v1

    .line 313
    .local v2, "previous":Ltk/woppo/mgame/Cell;
    new-instance v1, Ltk/woppo/mgame/Cell;

    .end local v1    # "nextCell":Ltk/woppo/mgame/Cell;
    invoke-virtual {v2}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v3

    invoke-virtual {p2}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v4

    add-int/2addr v3, v4

    .line 314
    invoke-virtual {v2}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v4

    invoke-virtual {p2}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v5

    add-int/2addr v4, v5

    .line 313
    invoke-direct {v1, v3, v4}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 315
    .restart local v1    # "nextCell":Ltk/woppo/mgame/Cell;
    iget-object v3, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v3, v1}, Ltk/woppo/mgame/Grid;->isCellWithinBounds(Ltk/woppo/mgame/Cell;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v3, v1}, Ltk/woppo/mgame/Grid;->isCellAvailable(Ltk/woppo/mgame/Cell;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [Ltk/woppo/mgame/Cell;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 318
    .local v0, "answer":[Ltk/woppo/mgame/Cell;
    return-object v0
.end method

.method private getHighScore()J
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Ltk/woppo/mgame/MainGame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "high score"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private getVector(I)Ltk/woppo/mgame/Cell;
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    const/4 v1, 0x4

    new-array v0, v1, [Ltk/woppo/mgame/Cell;

    .line 274
    new-instance v1, Ltk/woppo/mgame/Cell;

    invoke-direct {v1, v3, v5}, Ltk/woppo/mgame/Cell;-><init>(II)V

    aput-object v1, v0, v3

    .line 275
    new-instance v1, Ltk/woppo/mgame/Cell;

    invoke-direct {v1, v4, v3}, Ltk/woppo/mgame/Cell;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 276
    new-instance v2, Ltk/woppo/mgame/Cell;

    invoke-direct {v2, v3, v4}, Ltk/woppo/mgame/Cell;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 277
    new-instance v2, Ltk/woppo/mgame/Cell;

    invoke-direct {v2, v5, v3}, Ltk/woppo/mgame/Cell;-><init>(II)V

    aput-object v2, v0, v1

    .line 279
    .local v0, "map":[Ltk/woppo/mgame/Cell;
    aget-object v1, v0, p1

    return-object v1
.end method

.method private moveTile(Ltk/woppo/mgame/Tile;Ltk/woppo/mgame/Cell;)V
    .locals 3
    .param p1, "tile"    # Ltk/woppo/mgame/Tile;
    .param p2, "cell"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 143
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v0, v0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 144
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v0, v0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    invoke-virtual {p2}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v1

    aput-object p1, v0, v1

    .line 145
    invoke-virtual {p1, p2}, Ltk/woppo/mgame/Tile;->updatePosition(Ltk/woppo/mgame/Cell;)V

    .line 146
    return-void
.end method

.method private movesAvailable()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v0}, Ltk/woppo/mgame/Grid;->isCellsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->tileMatchesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private positionsEqual(Ltk/woppo/mgame/Cell;Ltk/woppo/mgame/Cell;)Z
    .locals 2
    .param p1, "first"    # Ltk/woppo/mgame/Cell;
    .param p2, "second"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 351
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v0

    invoke-virtual {p2}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v0

    invoke-virtual {p2}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareTiles()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v2, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 140
    return-void

    .line 133
    :cond_0
    aget-object v0, v5, v4

    .line 134
    .local v0, "array":[Ltk/woppo/mgame/Tile;
    array-length v7, v0

    move v2, v3

    :goto_1
    if-lt v2, v7, :cond_1

    .line 133
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 134
    :cond_1
    aget-object v1, v0, v2

    .line 135
    .local v1, "tile":Ltk/woppo/mgame/Tile;
    iget-object v8, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v8, v1}, Ltk/woppo/mgame/Grid;->isCellOccupied(Ltk/woppo/mgame/Cell;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ltk/woppo/mgame/Tile;->setMergedFrom([Ltk/woppo/mgame/Tile;)V

    .line 134
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private prepareUndoState()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v0}, Ltk/woppo/mgame/Grid;->prepareSaveTiles()V

    .line 157
    iget-wide v0, p0, Ltk/woppo/mgame/MainGame;->score:J

    iput-wide v0, p0, Ltk/woppo/mgame/MainGame;->bufferScore:J

    .line 158
    iget v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    iput v0, p0, Ltk/woppo/mgame/MainGame;->bufferGameState:I

    .line 159
    return-void
.end method

.method private recordHighScore()V
    .locals 6

    .prologue
    .line 121
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "high score"

    iget-wide v4, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method private saveUndoState()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v0}, Ltk/woppo/mgame/Grid;->saveTiles()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltk/woppo/mgame/MainGame;->canUndo:Z

    .line 151
    iget-wide v0, p0, Ltk/woppo/mgame/MainGame;->bufferScore:J

    iput-wide v0, p0, Ltk/woppo/mgame/MainGame;->lastScore:J

    .line 152
    iget v0, p0, Ltk/woppo/mgame/MainGame;->bufferGameState:I

    iput v0, p0, Ltk/woppo/mgame/MainGame;->lastGameState:I

    .line 153
    return-void
.end method

.method private spawnTile(Ltk/woppo/mgame/Tile;)V
    .locals 9
    .param p1, "tile"    # Ltk/woppo/mgame/Tile;

    .prologue
    const-wide/32 v4, 0x5f5e100

    .line 115
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v0, p1}, Ltk/woppo/mgame/Grid;->insertTile(Ltk/woppo/mgame/Tile;)V

    .line 116
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v1

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v2

    const/4 v3, -0x1

    .line 117
    const/4 v8, 0x0

    move-wide v6, v4

    .line 116
    invoke-virtual/range {v0 .. v8}, Ltk/woppo/mgame/AnimationGrid;->startAnimation(IIIJJ[I)V

    .line 118
    return-void
.end method

.method private tileMatchesAvailable()Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 328
    const/4 v5, 0x0

    .local v5, "xx":I
    :goto_0
    if-lt v5, v9, :cond_0

    .line 347
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 329
    :cond_0
    const/4 v6, 0x0

    .local v6, "yy":I
    :goto_2
    if-lt v6, v9, :cond_1

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v7, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    new-instance v8, Ltk/woppo/mgame/Cell;

    invoke-direct {v8, v5, v6}, Ltk/woppo/mgame/Cell;-><init>(II)V

    invoke-virtual {v7, v8}, Ltk/woppo/mgame/Grid;->getCellContent(Ltk/woppo/mgame/Cell;)Ltk/woppo/mgame/Tile;

    move-result-object v3

    .line 332
    .local v3, "tile":Ltk/woppo/mgame/Tile;
    if-eqz v3, :cond_2

    .line 333
    const/4 v1, 0x0

    .local v1, "direction":I
    :goto_3
    if-lt v1, v9, :cond_3

    .line 329
    .end local v1    # "direction":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 334
    .restart local v1    # "direction":I
    :cond_3
    invoke-direct {p0, v1}, Ltk/woppo/mgame/MainGame;->getVector(I)Ltk/woppo/mgame/Cell;

    move-result-object v4

    .line 335
    .local v4, "vector":Ltk/woppo/mgame/Cell;
    new-instance v0, Ltk/woppo/mgame/Cell;

    invoke-virtual {v4}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {v0, v7, v8}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 337
    .local v0, "cell":Ltk/woppo/mgame/Cell;
    iget-object v7, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v7, v0}, Ltk/woppo/mgame/Grid;->getCellContent(Ltk/woppo/mgame/Cell;)Ltk/woppo/mgame/Tile;

    move-result-object v2

    .line 339
    .local v2, "other":Ltk/woppo/mgame/Tile;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v7

    invoke-virtual {v3}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 340
    const/4 v7, 0x1

    goto :goto_1

    .line 333
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private winValue()I
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Ltk/woppo/mgame/MainGame;->canContinue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget v0, Ltk/woppo/mgame/MainGame;->endingMaxValue:I

    .line 358
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public canContinue()Z
    .locals 2

    .prologue
    .line 369
    iget v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public gameLost()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gameWon()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    if-lez v0, :cond_0

    iget v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Ltk/woppo/mgame/MainGame;->gameWon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltk/woppo/mgame/MainGame;->gameLost()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public move(I)V
    .locals 34
    .param p1, "direction"    # I

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual {v2}, Ltk/woppo/mgame/AnimationGrid;->cancelAnimations()V

    .line 188
    invoke-virtual/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->prepareUndoState()V

    .line 192
    invoke-direct/range {p0 .. p1}, Ltk/woppo/mgame/MainGame;->getVector(I)Ltk/woppo/mgame/Cell;

    move-result-object v29

    .line 193
    .local v29, "vector":Ltk/woppo/mgame/Cell;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ltk/woppo/mgame/MainGame;->buildTraversalsX(Ltk/woppo/mgame/Cell;)Ljava/util/List;

    move-result-object v27

    .line 194
    .local v27, "traversalsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ltk/woppo/mgame/MainGame;->buildTraversalsY(Ltk/woppo/mgame/Cell;)Ljava/util/List;

    move-result-object v28

    .line 195
    .local v28, "traversalsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    .line 197
    .local v22, "moved":Z
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->prepareTiles()V

    .line 199
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 247
    if-eqz v22, :cond_2

    .line 248
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->saveUndoState()V

    .line 249
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->addRandomTile()V

    .line 250
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->checkLose()V

    .line 252
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    invoke-virtual {v2}, Ltk/woppo/mgame/MainView;->resyncTime()V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    invoke-virtual {v2}, Ltk/woppo/mgame/MainView;->invalidate()V

    goto :goto_0

    .line 199
    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 200
    .local v30, "xx":I
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_4
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 201
    .local v31, "yy":I
    new-instance v11, Ltk/woppo/mgame/Cell;

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v11, v0, v1}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 202
    .local v11, "cell":Ltk/woppo/mgame/Cell;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v2, v11}, Ltk/woppo/mgame/Grid;->getCellContent(Ltk/woppo/mgame/Cell;)Ltk/woppo/mgame/Tile;

    move-result-object v26

    .line 204
    .local v26, "tile":Ltk/woppo/mgame/Tile;
    if-eqz v26, :cond_4

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v11, v1}, Ltk/woppo/mgame/MainGame;->findFarthestPosition(Ltk/woppo/mgame/Cell;Ltk/woppo/mgame/Cell;)[Ltk/woppo/mgame/Cell;

    move-result-object v24

    .line 206
    .local v24, "positions":[Ltk/woppo/mgame/Cell;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    const/4 v3, 0x1

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Ltk/woppo/mgame/Grid;->getCellContent(Ltk/woppo/mgame/Cell;)Ltk/woppo/mgame/Tile;

    move-result-object v23

    .line 208
    .local v23, "next":Ltk/woppo/mgame/Tile;
    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v2

    invoke-virtual/range {v26 .. v26}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual/range {v23 .. v23}, Ltk/woppo/mgame/Tile;->getMergedFrom()[Ltk/woppo/mgame/Tile;

    move-result-object v2

    if-nez v2, :cond_6

    .line 209
    new-instance v21, Ltk/woppo/mgame/Tile;

    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-virtual/range {v26 .. v26}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Ltk/woppo/mgame/Tile;-><init>(Ltk/woppo/mgame/Cell;I)V

    .line 210
    .local v21, "merged":Ltk/woppo/mgame/Tile;
    const/4 v2, 0x2

    new-array v0, v2, [Ltk/woppo/mgame/Tile;

    move-object/from16 v25, v0

    const/4 v2, 0x0

    aput-object v26, v25, v2

    const/4 v2, 0x1

    aput-object v23, v25, v2

    .line 211
    .local v25, "temp":[Ltk/woppo/mgame/Tile;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ltk/woppo/mgame/Tile;->setMergedFrom([Ltk/woppo/mgame/Tile;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ltk/woppo/mgame/Grid;->insertTile(Ltk/woppo/mgame/Tile;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ltk/woppo/mgame/Grid;->removeTile(Ltk/woppo/mgame/Tile;)V

    .line 217
    const/4 v2, 0x1

    aget-object v2, v24, v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ltk/woppo/mgame/Tile;->updatePosition(Ltk/woppo/mgame/Cell;)V

    .line 219
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, 0x0

    aput v30, v10, v2

    const/4 v2, 0x1

    aput v31, v10, v2

    .line 220
    .local v10, "extras":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual/range {v21 .. v21}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v4

    const/4 v5, 0x0

    .line 221
    const-wide/32 v6, 0x5f5e100

    const-wide/16 v8, 0x0

    .line 220
    invoke-virtual/range {v2 .. v10}, Ltk/woppo/mgame/AnimationGrid;->startAnimation(IIIJJ[I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual/range {v21 .. v21}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v13

    invoke-virtual/range {v21 .. v21}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v14

    const/4 v15, 0x1

    .line 223
    const-wide/32 v16, 0x5f5e100

    const-wide/32 v18, 0x5f5e100

    const/16 v20, 0x0

    .line 222
    invoke-virtual/range {v12 .. v20}, Ltk/woppo/mgame/AnimationGrid;->startAnimation(IIIJJ[I)V

    .line 226
    move-object/from16 v0, p0

    iget-wide v2, v0, Ltk/woppo/mgame/MainGame;->score:J

    invoke-virtual/range {v21 .. v21}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Ltk/woppo/mgame/MainGame;->score:J

    .line 227
    move-object/from16 v0, p0

    iget-wide v2, v0, Ltk/woppo/mgame/MainGame;->score:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Ltk/woppo/mgame/MainGame;->highScore:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ltk/woppo/mgame/MainGame;->highScore:J

    .line 230
    invoke-virtual/range {v21 .. v21}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->winValue()I

    move-result v3

    if-lt v2, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->gameWon()Z

    move-result v2

    if-nez v2, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget v2, v0, Ltk/woppo/mgame/MainGame;->gameState:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 232
    invoke-direct/range {p0 .. p0}, Ltk/woppo/mgame/MainGame;->endGame()V

    .line 240
    .end local v21    # "merged":Ltk/woppo/mgame/Tile;
    .end local v25    # "temp":[Ltk/woppo/mgame/Tile;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v1}, Ltk/woppo/mgame/MainGame;->positionsEqual(Ltk/woppo/mgame/Cell;Ltk/woppo/mgame/Cell;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 235
    .end local v10    # "extras":[I
    :cond_6
    const/4 v2, 0x0

    aget-object v2, v24, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ltk/woppo/mgame/MainGame;->moveTile(Ltk/woppo/mgame/Tile;Ltk/woppo/mgame/Cell;)V

    .line 236
    const/4 v2, 0x3

    new-array v10, v2, [I

    const/4 v2, 0x0

    aput v30, v10, v2

    const/4 v2, 0x1

    aput v31, v10, v2

    .line 237
    .restart local v10    # "extras":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    const/4 v3, 0x0

    aget-object v3, v24, v3

    invoke-virtual {v3}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-virtual {v4}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v4

    const/4 v5, 0x0

    const-wide/32 v6, 0x5f5e100

    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Ltk/woppo/mgame/AnimationGrid;->startAnimation(IIIJJ[I)V

    goto :goto_2
.end method

.method public newGame()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x4

    .line 69
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gameCount"

    invoke-interface {v1, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->gameCount:J

    .line 72
    const-string v2, "gameCount"

    iget-wide v4, p0, Ltk/woppo/mgame/MainGame;->gameCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gameCount = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "gameCount"

    invoke-interface {v1, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-wide v2, p0, Ltk/woppo/mgame/MainGame;->gameCount:J

    const-string v4, "totalCount"

    const-wide/16 v6, 0x3

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 77
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    iget-object v2, v2, Ltk/woppo/mgame/MainView;->ads:Ltk/woppo/mgame/MainView$LoadIPNAds;

    iget-object v3, p0, Ltk/woppo/mgame/MainGame;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Ltk/woppo/mgame/MainView$LoadIPNAds;->loadIPayNowAds(Landroid/content/Context;)V

    .line 80
    :cond_0
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Ltk/woppo/mgame/Grid;

    invoke-direct {v2, v8, v8}, Ltk/woppo/mgame/Grid;-><init>(II)V

    iput-object v2, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    .line 87
    :goto_0
    new-instance v2, Ltk/woppo/mgame/AnimationGrid;

    invoke-direct {v2, v8, v8}, Ltk/woppo/mgame/AnimationGrid;-><init>(II)V

    iput-object v2, p0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    .line 88
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->getHighScore()J

    move-result-wide v2

    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    .line 89
    iget-wide v2, p0, Ltk/woppo/mgame/MainGame;->score:J

    iget-wide v4, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 90
    iget-wide v2, p0, Ltk/woppo/mgame/MainGame;->score:J

    iput-wide v2, p0, Ltk/woppo/mgame/MainGame;->highScore:J

    .line 91
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->recordHighScore()V

    .line 93
    :cond_1
    iput-wide v10, p0, Ltk/woppo/mgame/MainGame;->score:J

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 95
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->addStartTiles()V

    .line 96
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ltk/woppo/mgame/MainView;->refreshLastTime:Z

    .line 97
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    invoke-virtual {v2}, Ltk/woppo/mgame/MainView;->resyncTime()V

    .line 98
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    invoke-virtual {v2}, Ltk/woppo/mgame/MainView;->invalidate()V

    .line 99
    return-void

    .line 83
    :cond_2
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->prepareUndoState()V

    .line 84
    invoke-direct {p0}, Ltk/woppo/mgame/MainGame;->saveUndoState()V

    .line 85
    iget-object v2, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v2}, Ltk/woppo/mgame/Grid;->clearGrid()V

    goto :goto_0
.end method

.method public revertUndoState()V
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Ltk/woppo/mgame/MainGame;->canUndo:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltk/woppo/mgame/MainGame;->canUndo:Z

    .line 164
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual {v0}, Ltk/woppo/mgame/AnimationGrid;->cancelAnimations()V

    .line 165
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    invoke-virtual {v0}, Ltk/woppo/mgame/Grid;->revertTiles()V

    .line 166
    iget-wide v0, p0, Ltk/woppo/mgame/MainGame;->lastScore:J

    iput-wide v0, p0, Ltk/woppo/mgame/MainGame;->score:J

    .line 167
    iget v0, p0, Ltk/woppo/mgame/MainGame;->lastGameState:I

    iput v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 168
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltk/woppo/mgame/MainView;->refreshLastTime:Z

    .line 169
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainView;->invalidate()V

    .line 171
    :cond_0
    return-void
.end method

.method public setEndlessMode()V
    .locals 2

    .prologue
    .line 363
    const/4 v0, 0x2

    iput v0, p0, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 364
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    invoke-virtual {v0}, Ltk/woppo/mgame/MainView;->invalidate()V

    .line 365
    iget-object v0, p0, Ltk/woppo/mgame/MainGame;->mView:Ltk/woppo/mgame/MainView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltk/woppo/mgame/MainView;->refreshLastTime:Z

    .line 366
    return-void
.end method
