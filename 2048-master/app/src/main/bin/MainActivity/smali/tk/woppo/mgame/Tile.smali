.class public Ltk/woppo/mgame/Tile;
.super Ltk/woppo/mgame/Cell;
.source "Tile.java"


# instance fields
.field private mergedFrom:[Ltk/woppo/mgame/Tile;

.field private value:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Ltk/woppo/mgame/Tile;->mergedFrom:[Ltk/woppo/mgame/Tile;

    .line 9
    iput p3, p0, Ltk/woppo/mgame/Tile;->value:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ltk/woppo/mgame/Cell;I)V
    .locals 2
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;
    .param p2, "value"    # I

    .prologue
    .line 13
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v0

    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Ltk/woppo/mgame/Cell;-><init>(II)V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Ltk/woppo/mgame/Tile;->mergedFrom:[Ltk/woppo/mgame/Tile;

    .line 14
    iput p2, p0, Ltk/woppo/mgame/Tile;->value:I

    .line 15
    return-void
.end method


# virtual methods
.method public getMergedFrom()[Ltk/woppo/mgame/Tile;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ltk/woppo/mgame/Tile;->mergedFrom:[Ltk/woppo/mgame/Tile;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Ltk/woppo/mgame/Tile;->value:I

    return v0
.end method

.method public setMergedFrom([Ltk/woppo/mgame/Tile;)V
    .locals 0
    .param p1, "tile"    # [Ltk/woppo/mgame/Tile;

    .prologue
    .line 31
    iput-object p1, p0, Ltk/woppo/mgame/Tile;->mergedFrom:[Ltk/woppo/mgame/Tile;

    .line 32
    return-void
.end method

.method public updatePosition(Ltk/woppo/mgame/Cell;)V
    .locals 1
    .param p1, "cell"    # Ltk/woppo/mgame/Cell;

    .prologue
    .line 18
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getX()I

    move-result v0

    invoke-virtual {p0, v0}, Ltk/woppo/mgame/Tile;->setX(I)V

    .line 19
    invoke-virtual {p1}, Ltk/woppo/mgame/Cell;->getY()I

    move-result v0

    invoke-virtual {p0, v0}, Ltk/woppo/mgame/Tile;->setY(I)V

    .line 20
    return-void
.end method
