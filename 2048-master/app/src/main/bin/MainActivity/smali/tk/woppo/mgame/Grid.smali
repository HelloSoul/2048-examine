.class public Ltk/woppo/mgame/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private bufferField:[[Ltk/woppo/mgame/Tile;

.field public field:[[Ltk/woppo/mgame/Tile;

.field public undoField:[[Ltk/woppo/mgame/Tile;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "sizeX"    # I
    .param p2, "sizeY"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, Ltk/woppo/mgame/Tile;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ltk/woppo/mgame/Tile;

    iput-object v0, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    .line 13
    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, Ltk/woppo/mgame/Tile;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ltk/woppo/mgame/Tile;

    iput-object v0, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    .line 14
    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, Ltk/woppo/mgame/Tile;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ltk/woppo/mgame/Tile;

    iput-object v0, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    .line 15
    invoke-virtual {p0}, Ltk/woppo/mgame/Grid;->clearGrid()V

    .line 16
    invoke-virtual {p0}, Ltk/woppo/mgame/Grid;->clearUndoGrid()V

    .line 17
    return-void
.end method


# virtual methods
.method public clearGrid()V
    .locals 4

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 127
    return-void

    .line 123
    :cond_0
    const/4 v1, 0x0

    .local v1, "yy":I
    :goto_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public clearUndoGrid()V
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 135
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    .local v1, "yy":I
    :goto_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getAvailableCells()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltk/woppo/mgame/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "availableCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/Cell;>;"
    const/4 v1, 0x0

    .local v1, "xx":I
    :goto_0
    iget-object v3, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 36
    return-object v0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .local v2, "yy":I
    :goto_1
    iget-object v3, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v3, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 32
    new-instance v3, Ltk/woppo/mgame/Cell;

    invoke-direct {v3, v1, v2}, Ltk/woppo/mgame/Cell;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCellContent(II)Ltk/woppo/mgame/Tile;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Ltk/woppo/mgame/Grid;->isCellWithinBounds(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCellContent(Ltk/woppo/mgame/Cell;)Ltk/woppo/mgame/Tile;
    .locals 2
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ltk/woppo/mgame/Grid;->isCellWithinBounds(Ltk/woppo/mgame/Cell;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v1

    aget-object v0, v0, v1

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertTile(Ltk/woppo/mgame/Tile;)V
    .locals 2
    .param p1, "tile"    # Ltk/woppo/mgame/Tile;

    .prologue
    .line 78
    iget-object v0, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v1

    aput-object p1, v0, v1

    .line 79
    return-void
.end method

.method public isCellAvailable(Ltk/woppo/mgame/Cell;)Z
    .locals 1
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ltk/woppo/mgame/Grid;->isCellOccupied(Ltk/woppo/mgame/Cell;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCellOccupied(Ltk/woppo/mgame/Cell;)Z
    .locals 1
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Ltk/woppo/mgame/Grid;->getCellContent(Ltk/woppo/mgame/Cell;)Ltk/woppo/mgame/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCellWithinBounds(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    if-ltz p1, :cond_0

    iget-object v1, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 74
    if-ltz p2, :cond_0

    iget-object v1, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v1, v1, v0

    array-length v1, v1

    .line 73
    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCellWithinBounds(Ltk/woppo/mgame/Cell;)Z
    .locals 3
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v1

    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 69
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v1

    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    array-length v2, v2

    .line 68
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCellsAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0}, Ltk/woppo/mgame/Grid;->getAvailableCells()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareSaveTiles()V
    .locals 5

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 107
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    .local v1, "yy":I
    :goto_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 101
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 99
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    new-instance v3, Ltk/woppo/mgame/Tile;

    iget-object v4, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Ltk/woppo/mgame/Tile;-><init>(III)V

    aput-object v3, v2, v1

    goto :goto_2
.end method

.method public randomAvailableCell()Ltk/woppo/mgame/Cell;
    .locals 6

    .prologue
    .line 20
    invoke-virtual {p0}, Ltk/woppo/mgame/Grid;->getAvailableCells()Ljava/util/ArrayList;

    move-result-object v0

    .line 21
    .local v0, "availableCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltk/woppo/mgame/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 22
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk/woppo/mgame/Cell;

    .line 24
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeTile(Ltk/woppo/mgame/Tile;)V
    .locals 3
    .param p1, "tile"    # Ltk/woppo/mgame/Tile;

    .prologue
    .line 82
    iget-object v0, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getX()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ltk/woppo/mgame/Tile;->getY()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 83
    return-void
.end method

.method public revertTiles()V
    .locals 5

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 119
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    .local v1, "yy":I
    :goto_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 113
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 111
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_2
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    new-instance v3, Ltk/woppo/mgame/Tile;

    iget-object v4, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Ltk/woppo/mgame/Tile;-><init>(III)V

    aput-object v3, v2, v1

    goto :goto_2
.end method

.method public saveTiles()V
    .locals 5

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "xx":I
    :goto_0
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 95
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    .local v1, "yy":I
    :goto_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 89
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 87
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_2
    iget-object v2, p0, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v2, v2, v0

    new-instance v3, Ltk/woppo/mgame/Tile;

    iget-object v4, p0, Ltk/woppo/mgame/Grid;->bufferField:[[Ltk/woppo/mgame/Tile;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Ltk/woppo/mgame/Tile;-><init>(III)V

    aput-object v3, v2, v1

    goto :goto_2
.end method
