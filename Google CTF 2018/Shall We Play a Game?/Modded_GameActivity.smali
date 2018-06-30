.class public Lcom/google/ctf/shallweplayagame/GameActivity;
.super Landroid/support/v7/app/c;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field l:[[Lcom/google/ctf/shallweplayagame/a;

.field m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Object;

.field o:I

.field p:Z

.field q:[B

.field r:[B


# direct methods
.method public constructor <init>()V
    .locals 23

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/app/c;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->r:[B

    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lcom/google/ctf/shallweplayagame/a;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/google/ctf/shallweplayagame/a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->m:Ljava/util/Queue;

    const-wide/32 v2, 0x54686520

    const-wide/32 v4, 0x6f6e6c79

    const-wide/32 v6, 0x2077696e

    const-wide/32 v8, 0x6e696e67

    const-wide/32 v10, 0x206d6f76

    const-wide/32 v12, 0x65206973

    const-wide/32 v14, 0x206e6f74

    const-wide/32 v16, 0x20746f20

    const-wide/32 v18, 0x706c6179

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/google/ctf/shallweplayagame/N;->h:[I

    aput-object v22, v20, v21

    const/16 v21, 0x2

    add-long/2addr v2, v4

    add-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v2, v10

    add-long/2addr v2, v12

    add-long/2addr v2, v14

    add-long v2, v2, v16

    add-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->n:Ljava/lang/Object;

    const/16 v2, 0x20

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->q:[B

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/ctf/shallweplayagame/N;->i:[I

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->n:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->q:[B

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->o:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/ctf/shallweplayagame/GameActivity;->p:Z

    return-void

    :array_0
    .array-data 1
        -0x3dt
        0xft
        0x19t
        -0x73t
        -0x2et
        -0xbt
        0x41t
        -0x3t
        0x22t
        0x5dt
        -0x27t
        0x62t
        0x7bt
        0x11t
        0x2at
        -0x79t
        0x3ct
        0x28t
        -0x3ct
        -0x70t
        0x4dt
        0x6ft
        0x22t
        0xet
        -0x1ft
        -0x4t
        -0x7t
        0x42t
        0x74t
        0x6ct
        0x72t
        -0x7at
    .end array-data
.end method


# virtual methods
.method a(Ljava/util/List;)Lcom/google/ctf/shallweplayagame/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/ctf/shallweplayagame/a;",
            ">;)",
            "Lcom/google/ctf/shallweplayagame/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ctf/shallweplayagame/a;

    return-object v0
.end method

.method a(Lcom/google/ctf/shallweplayagame/a$a;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    new-array v6, v9, [I

    fill-array-data v6, :array_2

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_3

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_2

    iget-object v7, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    aget-object v7, v7, v2

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/google/ctf/shallweplayagame/a;->d:Lcom/google/ctf/shallweplayagame/a$a;

    if-ne v7, p1, :cond_1

    aget v7, v4, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v3

    aget v7, v5, v2

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v2

    if-ne v3, v2, :cond_0

    aget v7, v6, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    :cond_0
    add-int v7, v3, v2

    if-ne v7, v9, :cond_1

    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    array-length v3, v4

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_6

    aget v7, v4, v2

    if-lt v7, v8, :cond_5

    :cond_4
    :goto_3
    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    array-length v3, v5

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_7

    aget v4, v5, v2

    if-ge v4, v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    array-length v3, v6

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_8

    aget v4, v6, v2

    if-ge v4, v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_3

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method k()V
    .locals 1

    iget-object v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method l()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ctf/shallweplayagame/a;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v4, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/ctf/shallweplayagame/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method m()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ctf/shallweplayagame/N;->a:[I

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/ctf/shallweplayagame/N;->b:[I

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->q:[B

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/ctf/shallweplayagame/N;->c:[I

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v1, v2, v8

    invoke-static {v2}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/ctf/shallweplayagame/N;->d:[I

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->r:[B

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/google/ctf/shallweplayagame/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->o()V

    return-void
.end method

.method n()V
    .locals 10

    const v9, 0xf4240

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x2

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    iget-object v3, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    sget-object v4, Lcom/google/ctf/shallweplayagame/a$a;->a:Lcom/google/ctf/shallweplayagame/a$a;

    const/16 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/ctf/shallweplayagame/a;->a(Lcom/google/ctf/shallweplayagame/a$a;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->k()V

    const v5, 0xf423f           # Max iterations
    const v4, 0x0               # Loop counter
    :goto_6
    if-ge v4, v5, :cond_2
# -------------------------------------------START LOOP---------------------------------------------------
    # Increment o
    iget v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->o:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->o:I

    # Flag decryption start
    new-array v0, v7, [Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v1
    sget-object v2, Lcom/google/ctf/shallweplayagame/N;->e:[I
    aput-object v2, v0, v8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v6
    invoke-static {v0}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    const/4 v2, 0x4
    new-array v2, v2, [Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v2, v1
    sget-object v3, Lcom/google/ctf/shallweplayagame/N;->f:[I
    aput-object v3, v2, v8
    aput-object v0, v2, v6
    iget-object v3, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->q:[B
    aput-object v3, v2, v7
    invoke-static {v2}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;
    new-array v2, v7, [Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v2, v1
    sget-object v3, Lcom/google/ctf/shallweplayagame/N;->g:[I
    aput-object v3, v2, v8
    aput-object v0, v2, v6
    invoke-static {v2}, Lcom/google/ctf/shallweplayagame/N;->_([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
    check-cast v0, [B
    iput-object v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->q:[B
    # Flag decryption end

    # If condition
    iget v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->o:I
    if-ne v0, v9, :cond_3
    # If block
    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->m()V
    :goto_2
    return-void
    # Else block
    :cond_3
    add-int/lit8 v4, v4, 0x1    # Increment counter
    goto :goto_6
# --------------------------------------------END LOOP--------------------------------------------------
    :cond_2
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/google/ctf/shallweplayagame/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "%d / %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method o()V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    sget-object v4, Lcom/google/ctf/shallweplayagame/a$a;->d:Lcom/google/ctf/shallweplayagame/a$a;

    invoke-virtual {v3, v4}, Lcom/google/ctf/shallweplayagame/a;->setValue(Lcom/google/ctf/shallweplayagame/a$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->p:Z

    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->k()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ctf/shallweplayagame/a;

    invoke-virtual {p1}, Lcom/google/ctf/shallweplayagame/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/ctf/shallweplayagame/b;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/ctf/shallweplayagame/b;->a()V

    sget-object v0, Lcom/google/ctf/shallweplayagame/a$a;->b:Lcom/google/ctf/shallweplayagame/a$a;

    invoke-virtual {p1, v0}, Lcom/google/ctf/shallweplayagame/a;->setValue(Lcom/google/ctf/shallweplayagame/a$a;)V

    # sget-object v0, Lcom/google/ctf/shallweplayagame/a$a;->b:Lcom/google/ctf/shallweplayagame/a$a;

    # invoke-virtual {p0, v0}, Lcom/google/ctf/shallweplayagame/GameActivity;->a(Lcom/google/ctf/shallweplayagame/a$a;)Z

    # move-result v0

    # if-eqz v0, :cond_3

    # invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->n()V

    # goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->n()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/ctf/shallweplayagame/GameActivity;->a(Ljava/util/List;)Lcom/google/ctf/shallweplayagame/a;

    move-result-object v0

    sget-object v1, Lcom/google/ctf/shallweplayagame/a$a;->b:Lcom/google/ctf/shallweplayagame/a$a;

    invoke-virtual {v0, v1}, Lcom/google/ctf/shallweplayagame/a;->setValue(Lcom/google/ctf/shallweplayagame/a$a;)V

    # sget-object v0, Lcom/google/ctf/shallweplayagame/a$a;->b:Lcom/google/ctf/shallweplayagame/a$a;

    # invoke-virtual {p0, v0}, Lcom/google/ctf/shallweplayagame/GameActivity;->a(Lcom/google/ctf/shallweplayagame/a$a;)Z

    # move-result v0

    # if-eqz v0, :cond_5

    # invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->n()V

    # goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->k()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/google/ctf/shallweplayagame/GameActivity;->setContentView(I)V

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/google/ctf/shallweplayagame/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v3, v2

    :goto_0
    if-ge v3, v8, :cond_1

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_0

    new-instance v5, Lcom/google/ctf/shallweplayagame/a;

    invoke-virtual {p0}, Lcom/google/ctf/shallweplayagame/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->m:Ljava/util/Queue;

    invoke-direct {v5, v6, v7}, Lcom/google/ctf/shallweplayagame/a;-><init>(Landroid/content/Context;Ljava/util/Queue;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/google/ctf/shallweplayagame/GameActivity;->l:[[Lcom/google/ctf/shallweplayagame/a;

    aget-object v6, v6, v1

    aput-object v5, v6, v3

    invoke-virtual {v5, p0}, Lcom/google/ctf/shallweplayagame/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method
