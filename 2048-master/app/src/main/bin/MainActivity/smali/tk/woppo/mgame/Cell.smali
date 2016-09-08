.class public Ltk/woppo/mgame/Cell;
.super Ljava/lang/Object;
.source "Cell.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Ltk/woppo/mgame/Cell;->x:I

    .line 9
    iput p2, p0, Ltk/woppo/mgame/Cell;->y:I

    .line 10
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Ltk/woppo/mgame/Cell;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Ltk/woppo/mgame/Cell;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 21
    iput p1, p0, Ltk/woppo/mgame/Cell;->x:I

    .line 22
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 25
    iput p1, p0, Ltk/woppo/mgame/Cell;->y:I

    .line 26
    return-void
.end method
