.class public Ltk/woppo/mgame/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Ltk/woppo/mgame/MainView$LoadIPNAds;


# static fields
.field public static final CAN_UNDO:Ljava/lang/String; = "can undo"

.field public static final GAME_STATE:Ljava/lang/String; = "game state"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final HIGH_SCORE:Ljava/lang/String; = "high score temp"

.field public static final SCORE:Ljava/lang/String; = "score"

.field protected static final TAG:Ljava/lang/String; = "MainActivity"

.field public static final UNDO_GAME_STATE:Ljava/lang/String; = "undo game state"

.field public static final UNDO_GRID:Ljava/lang/String; = "undo"

.field public static final UNDO_SCORE:Ljava/lang/String; = "undo score"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field view:Ltk/woppo/mgame/MainView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private load()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 166
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->aGrid:Ltk/woppo/mgame/AnimationGrid;

    invoke-virtual {v5}, Ltk/woppo/mgame/AnimationGrid;->cancelAnimations()V

    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, "settings":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .local v3, "xx":I
    :goto_0
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v5, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 186
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const-string v6, "score"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v8, v7, Ltk/woppo/mgame/MainGame;->score:J

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Ltk/woppo/mgame/MainGame;->score:J

    .line 187
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const-string v6, "high score temp"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v8, v7, Ltk/woppo/mgame/MainGame;->highScore:J

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Ltk/woppo/mgame/MainGame;->highScore:J

    .line 188
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const-string v6, "undo score"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v8, v7, Ltk/woppo/mgame/MainGame;->lastScore:J

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v5, Ltk/woppo/mgame/MainGame;->lastScore:J

    .line 189
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const-string v6, "can undo"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-boolean v7, v7, Ltk/woppo/mgame/MainGame;->canUndo:Z

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Ltk/woppo/mgame/MainGame;->canUndo:Z

    .line 190
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const-string v6, "game state"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget v7, v7, Ltk/woppo/mgame/MainGame;->gameState:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Ltk/woppo/mgame/MainGame;->gameState:I

    .line 191
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const-string v6, "undo game state"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget v7, v7, Ltk/woppo/mgame/MainGame;->lastGameState:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Ltk/woppo/mgame/MainGame;->lastGameState:I

    .line 192
    return-void

    .line 170
    :cond_0
    const/4 v4, 0x0

    .local v4, "yy":I
    :goto_1
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v5, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 171
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, "value":I
    if-lez v2, :cond_4

    .line 173
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v5, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v5, v5, v3

    new-instance v6, Ltk/woppo/mgame/Tile;

    invoke-direct {v6, v3, v4, v2}, Ltk/woppo/mgame/Tile;-><init>(III)V

    aput-object v6, v5, v4

    .line 178
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "undo"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "undoValue":I
    if-lez v1, :cond_5

    .line 180
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v5, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v5, v5, v3

    new-instance v6, Ltk/woppo/mgame/Tile;

    invoke-direct {v6, v3, v4, v1}, Ltk/woppo/mgame/Tile;-><init>(III)V

    aput-object v6, v5, v4

    .line 170
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "undoValue":I
    :cond_4
    if-nez v2, :cond_2

    .line 175
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v5, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    aget-object v5, v5, v3

    aput-object v8, v5, v4

    goto :goto_2

    .line 181
    .restart local v1    # "undoValue":I
    :cond_5
    if-nez v2, :cond_3

    .line 182
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v5, v5, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v5, v5, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v5, v5, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    aget-object v5, v5, v3

    aput-object v8, v5, v4

    goto :goto_3
.end method

.method private save()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 129
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 130
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v6, v6, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v6, v6, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v1, v6, Ltk/woppo/mgame/Grid;->field:[[Ltk/woppo/mgame/Tile;

    .line 132
    .local v1, "field":[[Ltk/woppo/mgame/Tile;
    iget-object v6, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v6, v6, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-object v6, v6, Ltk/woppo/mgame/MainGame;->grid:Ltk/woppo/mgame/Grid;

    iget-object v3, v6, Ltk/woppo/mgame/Grid;->undoField:[[Ltk/woppo/mgame/Tile;

    .line 133
    .local v3, "undoField":[[Ltk/woppo/mgame/Tile;
    const-string v6, "width"

    array-length v7, v1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v6, "height"

    array-length v7, v1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    const/4 v4, 0x0

    .local v4, "xx":I
    :goto_0
    array-length v6, v1

    if-lt v4, v6, :cond_0

    .line 150
    const-string v6, "score"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v8, v7, Ltk/woppo/mgame/MainGame;->score:J

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v6, "high score temp"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v8, v7, Ltk/woppo/mgame/MainGame;->highScore:J

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v6, "undo score"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-wide v8, v7, Ltk/woppo/mgame/MainGame;->lastScore:J

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v6, "can undo"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget-boolean v7, v7, Ltk/woppo/mgame/MainGame;->canUndo:Z

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v6, "game state"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget v7, v7, Ltk/woppo/mgame/MainGame;->gameState:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v6, "undo game state"

    iget-object v7, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v7, v7, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    iget v7, v7, Ltk/woppo/mgame/MainGame;->lastGameState:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void

    .line 136
    :cond_0
    const/4 v5, 0x0

    .local v5, "yy":I
    :goto_1
    aget-object v6, v1, v8

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_1
    aget-object v6, v1, v4

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v4

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    :goto_2
    aget-object v6, v3, v4

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "undo"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v4

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ltk/woppo/mgame/Tile;->getValue()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 146
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "undo"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method private showWindow(Landroid/view/View;Landroid/content/Context;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Ltk/woppo/mgame/MainActivity;->dialog:Landroid/app/AlertDialog;

    .line 203
    iget-object v6, p0, Ltk/woppo/mgame/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 206
    iget-object v6, p0, Ltk/woppo/mgame/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 207
    .local v5, "window":Landroid/view/Window;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Ltk/woppo/mgame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 208
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 209
    .local v4, "view":Landroid/view/View;
    const v6, 0x7f090007

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 211
    .local v1, "btnPay":Landroid/widget/Button;
    new-instance v6, Ltk/woppo/mgame/MainActivity$1;

    invoke-direct {v6, p0}, Ltk/woppo/mgame/MainActivity$1;-><init>(Ltk/woppo/mgame/MainActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v6, 0x7f090008

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 221
    .local v0, "btnClose":Landroid/widget/Button;
    new-instance v6, Ltk/woppo/mgame/MainActivity$2;

    invoke-direct {v6, p0}, Ltk/woppo/mgame/MainActivity$2;-><init>(Ltk/woppo/mgame/MainActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v6, p0, Ltk/woppo/mgame/MainActivity;->dialog:Landroid/app/AlertDialog;

    new-instance v7, Ltk/woppo/mgame/MainActivity$3;

    invoke-direct {v7, p0}, Ltk/woppo/mgame/MainActivity$3;-><init>(Ltk/woppo/mgame/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 236
    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 237
    return-void
.end method


# virtual methods
.method public loadIPayNow()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public loadIPayNowAds(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltk/woppo/mgame/MainActivity;->showWindow(Landroid/view/View;Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 246
    if-eqz p3, :cond_0

    const-string v2, "00"

    const-string v3, "respCode"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Ltk/woppo/mgame/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "totalCount"

    const-string v3, "totalCount"

    const-wide/16 v4, 0x3

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "payCount"

    const/4 v6, 0x0

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 255
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0}, Ltk/woppo/mgame/MainActivity;->finish()V

    .line 241
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ltk/woppo/mgame/MainActivity;->requestWindowFeature(I)Z

    .line 49
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Ltk/woppo/mgame/MainActivity;->setContentView(I)V

    .line 50
    new-instance v5, Ltk/woppo/mgame/MainView;

    invoke-virtual {p0}, Ltk/woppo/mgame/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Ltk/woppo/mgame/MainView;-><init>(Landroid/content/Context;Ltk/woppo/mgame/MainView$LoadIPNAds;)V

    iput-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    .line 51
    const/high16 v5, 0x7f090000

    invoke-virtual {p0, v5}, Ltk/woppo/mgame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 52
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 55
    .local v4, "settings":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "date":Ljava/lang/String;
    const-string v5, ""

    const-string v6, "date"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "date"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 60
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "date"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v5, "gameCount"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v5, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    const-string v6, "save_state"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Ltk/woppo/mgame/MainView;->hasSaveState:Z

    .line 68
    if-eqz p1, :cond_2

    .line 69
    const-string v5, "hasState"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-direct {p0}, Ltk/woppo/mgame/MainActivity;->load()V

    .line 76
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 97
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 113
    :goto_0
    return v0

    .line 100
    :cond_0
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 101
    iget-object v1, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v1, v1, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ltk/woppo/mgame/MainGame;->move(I)V

    goto :goto_0

    .line 103
    :cond_1
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 104
    iget-object v1, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v1, v1, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltk/woppo/mgame/MainGame;->move(I)V

    goto :goto_0

    .line 106
    :cond_2
    const/16 v1, 0x15

    if-ne p1, v1, :cond_3

    .line 107
    iget-object v1, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v1, v1, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ltk/woppo/mgame/MainGame;->move(I)V

    goto :goto_0

    .line 109
    :cond_3
    const/16 v1, 0x16

    if-ne p1, v1, :cond_4

    .line 110
    iget-object v1, p0, Ltk/woppo/mgame/MainActivity;->view:Ltk/woppo/mgame/MainView;

    iget-object v1, v1, Ltk/woppo/mgame/MainView;->game:Ltk/woppo/mgame/MainGame;

    invoke-virtual {v1, v0}, Ltk/woppo/mgame/MainGame;->move(I)V

    goto :goto_0

    .line 113
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    invoke-direct {p0}, Ltk/woppo/mgame/MainActivity;->save()V

    .line 125
    invoke-virtual {p0}, Ltk/woppo/mgame/MainActivity;->loadIPayNow()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    invoke-direct {p0}, Ltk/woppo/mgame/MainActivity;->load()V

    .line 162
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const-string v0, "hasState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    invoke-direct {p0}, Ltk/woppo/mgame/MainActivity;->save()V

    .line 120
    return-void
.end method
