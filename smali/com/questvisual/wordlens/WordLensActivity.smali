.class public Lcom/questvisual/wordlens/WordLensActivity;
.super Landroid/support/v4/app/i;
.source "SourceFile"

# interfaces
.implements Lcom/questvisual/wordlens/aa;
.implements Lcom/questvisual/wordlens/d/j;
.implements Lcom/questvisual/wordlens/messaging/b;


# static fields
.field private static aF:I

.field private static synthetic aQ:[I

.field private static synthetic aR:[I

.field private static synthetic aS:[I


# instance fields
.field private A:Lcom/questvisual/wordlens/d/a;

.field private B:I

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/questvisual/wordlens/d/f;

.field private G:Lcom/questvisual/wordlens/d/f;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/ImageView;

.field private O:Lcom/questvisual/util/ui/d;

.field private P:Lcom/questvisual/util/ui/d;

.field private Q:Lcom/questvisual/util/ui/d;

.field private R:Lcom/questvisual/wordlens/e/a/a;

.field private S:Lcom/questvisual/wordlens/e/a/a;

.field private T:Lcom/questvisual/wordlens/e/a/a;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:[I

.field private Y:[I

.field private Z:[I

.field private aA:Ljava/lang/Boolean;

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Lcom/questvisual/wordlens/LangPackInfo;

.field private aG:Z

.field private aH:Z

.field private aI:Landroid/view/View$OnClickListener;

.field private aJ:Landroid/view/View$OnClickListener;

.field private aK:Ljava/lang/Runnable;

.field private aL:Lcom/questvisual/wordlens/cg;

.field private aM:Landroid/view/View$OnClickListener;

.field private aN:Landroid/view/View$OnClickListener;

.field private aO:Landroid/view/View$OnClickListener;

.field private aP:Lcom/questvisual/wordlens/c/e;

.field private aa:Landroid/view/View;

.field private ab:Lcom/questvisual/wordlens/ce;

.field private ac:Landroid/widget/RelativeLayout;

.field private ad:Landroid/widget/FrameLayout;

.field private ae:Landroid/widget/RelativeLayout;

.field private af:Z

.field private ag:Lcom/questvisual/wordlens/ci;

.field private ah:Z

.field private ai:Z

.field private aj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ak:I

.field private al:Z

.field private am:Ljava/text/NumberFormat;

.field private an:Landroid/view/View$OnClickListener;

.field private ao:Landroid/view/View;

.field private ap:Landroid/view/View;

.field private aq:Landroid/view/View;

.field private ar:Landroid/view/View;

.field private as:Landroid/widget/ImageView;

.field private at:Landroid/widget/RelativeLayout;

.field private au:Lcom/questvisual/wordlens/d/e;

.field private av:Landroid/widget/RelativeLayout;

.field private aw:Lcom/questvisual/wordlens/ag;

.field private ax:Lcom/questvisual/wordlens/ag;

.field private ay:Lcom/questvisual/wordlens/ag;

.field private az:Ljava/lang/Boolean;

.field n:J

.field o:I

.field private p:Lcom/questvisual/wordlens/n;

.field private q:Lcom/questvisual/wordlens/cb;

.field private r:Lcom/questvisual/wordlens/a/b;

.field private s:Landroid/view/SurfaceView;

.field private t:Landroid/view/LayoutInflater;

.field private u:Lcom/questvisual/wordlens/cf;

.field private v:Lcom/questvisual/wordlens/d/f;

.field private w:Landroid/view/View;

.field private x:Landroid/app/AlertDialog;

.field private y:Landroid/content/DialogInterface$OnDismissListener;

.field private z:Lcom/questvisual/wordlens/ch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2984
    const/high16 v0, -0x8000

    sput v0, Lcom/questvisual/wordlens/WordLensActivity;->aF:I

    .line 3747
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    .line 164
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->x:Landroid/app/AlertDialog;

    .line 165
    new-instance v0, Lcom/questvisual/wordlens/az;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/az;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->y:Landroid/content/DialogInterface$OnDismissListener;

    .line 180
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    .line 181
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    .line 182
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    .line 183
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    .line 184
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    .line 209
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->X:[I

    .line 210
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Y:[I

    .line 211
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Z:[I

    .line 234
    iput-boolean v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->af:Z

    .line 239
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    .line 241
    iput-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    .line 242
    iput-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ak:I

    .line 832
    iput-boolean v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->al:Z

    .line 1064
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->am:Ljava/text/NumberFormat;

    .line 1324
    new-instance v0, Lcom/questvisual/wordlens/bk;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bk;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->an:Landroid/view/View$OnClickListener;

    .line 1403
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    .line 1404
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    .line 1406
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    .line 2439
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    .line 2440
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ax:Lcom/questvisual/wordlens/ag;

    .line 2441
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    .line 2444
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->az:Ljava/lang/Boolean;

    .line 2445
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aA:Ljava/lang/Boolean;

    .line 2446
    iput-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->aB:Z

    .line 2447
    iput-boolean v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->aC:Z

    .line 2580
    iput-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->aD:Z

    .line 2627
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aE:Lcom/questvisual/wordlens/LangPackInfo;

    .line 2985
    iput-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->aG:Z

    .line 2986
    iput-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->aH:Z

    .line 3103
    new-instance v0, Lcom/questvisual/wordlens/bt;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bt;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aI:Landroid/view/View$OnClickListener;

    .line 3126
    new-instance v0, Lcom/questvisual/wordlens/bu;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bu;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aJ:Landroid/view/View$OnClickListener;

    .line 3207
    new-instance v0, Lcom/questvisual/wordlens/ca;

    invoke-direct {v0, p0, v2}, Lcom/questvisual/wordlens/ca;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ca;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aK:Ljava/lang/Runnable;

    .line 3414
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    .line 3672
    new-instance v0, Lcom/questvisual/wordlens/bv;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bv;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aM:Landroid/view/View$OnClickListener;

    .line 3679
    new-instance v0, Lcom/questvisual/wordlens/bw;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bw;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aN:Landroid/view/View$OnClickListener;

    .line 3686
    new-instance v0, Lcom/questvisual/wordlens/bx;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bx;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aO:Landroid/view/View$OnClickListener;

    .line 3708
    new-instance v0, Lcom/questvisual/wordlens/by;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/by;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aP:Lcom/questvisual/wordlens/c/e;

    .line 3718
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->n:J

    .line 3720
    iput v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->o:I

    .line 251
    return-void

    .line 209
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 210
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 211
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1359
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_1

    .line 1360
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v2, Lcom/questvisual/wordlens/aq;->language_header_ab:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    .line 1364
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->an:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1394
    :goto_0
    return-void

    .line 1373
    :cond_0
    const-string v0, "QV"

    const-string v1, "Tried to initialize Action Bar, but no action bar found?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->language_header:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1378
    new-instance v1, Lcom/questvisual/wordlens/d/f;

    sget v2, Lcom/questvisual/wordlens/ao;->langButton:I

    invoke-direct {v1, v0, v2}, Lcom/questvisual/wordlens/d/f;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    .line 1381
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    .line 1382
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v0, p0}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/d/f;->a(Ljava/lang/String;)V

    .line 1385
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    .line 1386
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d/f;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1387
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->an:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1390
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1391
    const/16 v1, 0x31

    .line 1390
    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1392
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic A(Lcom/questvisual/wordlens/WordLensActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1904
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->H()Z

    move-result v0

    return v0
.end method

.method private B()V
    .locals 3

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->camera_rot_adjust_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 1419
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/d/e;->a(Landroid/view/View;)V

    .line 1421
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    .line 1422
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/an;->float_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1423
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/am;->camera_panel_check_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1424
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1426
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    .line 1427
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    sget v1, Lcom/questvisual/wordlens/ao;->button_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1429
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    .line 1430
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    sget v1, Lcom/questvisual/wordlens/ao;->button_rotate_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1432
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    .line 1433
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    sget v1, Lcom/questvisual/wordlens/ao;->button_rotate_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1435
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    .line 1436
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1445
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    new-instance v1, Lcom/questvisual/wordlens/bg;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/bg;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    new-instance v1, Lcom/questvisual/wordlens/bh;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/bh;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    new-instance v1, Lcom/questvisual/wordlens/bi;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/bi;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(I)V

    .line 1501
    return-void

    .line 1438
    :cond_1
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    .line 1439
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/ao;->button_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    .line 1440
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/ao;->button_rotate_left:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    .line 1441
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/ao;->button_rotate_right:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    goto :goto_0

    .line 1499
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v0}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic B(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1979
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->J()V

    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1678
    :cond_0
    const-string v0, "QV"

    const-string v1, "Creating camcheckpanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->camera_rot_confirm_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1681
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 1683
    new-instance v1, Lcom/questvisual/wordlens/d/e;

    invoke-direct {v1, v0}, Lcom/questvisual/wordlens/d/e;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    .line 1686
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    .line 1687
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/an;->float_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1688
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/am;->camera_panel_check_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1689
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1691
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    .line 1692
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    sget v1, Lcom/questvisual/wordlens/ao;->button_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1693
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    .line 1694
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    sget v1, Lcom/questvisual/wordlens/ao;->button_bad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1695
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    .line 1696
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    sget v1, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1706
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    new-instance v1, Lcom/questvisual/wordlens/bj;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/bj;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1725
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    new-instance v1, Lcom/questvisual/wordlens/bl;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/bl;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1734
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->b(I)V

    .line 1735
    return-void

    .line 1699
    :cond_1
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    .line 1701
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/ao;->button_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    .line 1702
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    sget v1, Lcom/questvisual/wordlens/ao;->button_bad:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    goto :goto_0

    .line 1734
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v0}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic C(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1921
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->I()V

    return-void
.end method

.method static synthetic D(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private D()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1738
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    sget-object v1, Lcom/questvisual/wordlens/ci;->b:Lcom/questvisual/wordlens/ci;

    if-eq v0, v1, :cond_0

    .line 1739
    const-string v0, "QV"

    const-string v1, "BUG! Should not go to adjuster except from checker"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BUG! Should not go to adjuster except from checker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1744
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    .line 1745
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    .line 1746
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    .line 1747
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->B()V

    .line 1748
    sget-object v0, Lcom/questvisual/wordlens/ci;->c:Lcom/questvisual/wordlens/ci;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    .line 1749
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Z)V

    .line 1754
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/a;->setVisibility(I)V

    .line 1757
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->C()V

    .line 1760
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    .line 1761
    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v0

    .line 1762
    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    if-eq v1, v0, :cond_0

    .line 1763
    sget-object v0, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ag;Z)V

    .line 1765
    :cond_0
    sget-object v0, Lcom/questvisual/wordlens/ci;->b:Lcom/questvisual/wordlens/ci;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    .line 1766
    return-void
.end method

.method static synthetic E(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->K()V

    return-void
.end method

.method static synthetic F(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ac:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private F()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1769
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    .line 1773
    :cond_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-nez v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1779
    :cond_1
    const-string v0, "word.lens"

    invoke-virtual {p0, v0, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1780
    const-string v1, "key.camera.orientation.compensation.v2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1781
    if-ne v0, v3, :cond_2

    .line 1782
    sget-object v0, Lcom/questvisual/wordlens/ci;->b:Lcom/questvisual/wordlens/ci;

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ci;)V

    .line 1797
    :goto_0
    return-void

    .line 1787
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/d/a;->setVisibility(I)V

    .line 1788
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-nez v0, :cond_3

    .line 1789
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v1}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/a;->a(I)V

    .line 1792
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Z)V

    .line 1794
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->U()V

    .line 1795
    sget-object v0, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    .line 1796
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->p()V

    goto :goto_0
.end method

.method private G()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1800
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->d(Z)V

    .line 1803
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v0, v5}, Lcom/questvisual/wordlens/d/a;->setVisibility(I)V

    .line 1804
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-nez v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    :cond_0
    sget v0, Lcom/questvisual/wordlens/ao;->welcome_overlay:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1810
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ac:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1812
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->tutorial_screen_buttons:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1814
    sget v1, Lcom/questvisual/wordlens/ao;->start_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1816
    new-instance v2, Lcom/questvisual/wordlens/bm;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/bm;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1860
    new-instance v1, Lcom/questvisual/util/ui/d;

    invoke-direct {v1, v4}, Lcom/questvisual/util/ui/d;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->O:Lcom/questvisual/util/ui/d;

    .line 1861
    new-instance v1, Lcom/questvisual/util/ui/d;

    invoke-direct {v1, v4}, Lcom/questvisual/util/ui/d;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->P:Lcom/questvisual/util/ui/d;

    .line 1862
    new-instance v1, Lcom/questvisual/util/ui/d;

    invoke-direct {v1, v4}, Lcom/questvisual/util/ui/d;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->Q:Lcom/questvisual/util/ui/d;

    .line 1865
    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-nez v1, :cond_1

    .line 1867
    sget v1, Lcom/questvisual/wordlens/ao;->bubble_world_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1868
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->O:Lcom/questvisual/util/ui/d;

    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 1869
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->O:Lcom/questvisual/util/ui/d;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1871
    sget v1, Lcom/questvisual/wordlens/ao;->bubble_playpause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1872
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->P:Lcom/questvisual/util/ui/d;

    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 1873
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->P:Lcom/questvisual/util/ui/d;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    sget v1, Lcom/questvisual/wordlens/ao;->bubble_dict:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1876
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->Q:Lcom/questvisual/util/ui/d;

    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 1877
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->Q:Lcom/questvisual/util/ui/d;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1881
    :cond_1
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v1

    .line 1882
    invoke-virtual {v1}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1883
    sget v1, Lcom/questvisual/wordlens/ao;->demo_explanation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1884
    if-eqz v1, :cond_2

    .line 1885
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    :cond_2
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ac:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1892
    sget v0, Lcom/questvisual/wordlens/ao;->tutorial_overlay_gray:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1895
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->tutorial_overlay:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1896
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1899
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ae:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1901
    sget-object v0, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    .line 1902
    return-void
.end method

.method static synthetic G(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3175
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->R()V

    return-void
.end method

.method private H()Z
    .locals 3

    .prologue
    .line 1905
    const/4 v0, 0x0

    .line 1906
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->U:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->X:[I

    invoke-direct {p0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Landroid/view/View;[I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1907
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->V:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->Y:[I

    invoke-direct {p0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Landroid/view/View;[I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1908
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->Z:[I

    invoke-direct {p0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Landroid/view/View;[I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1909
    return v0
.end method

.method private I()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1923
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    sget-object v1, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    if-eq v0, v1, :cond_1

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1931
    :cond_1
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1932
    sget v0, Lcom/questvisual/wordlens/aq;->tutorial_bubble_world:I

    .line 1933
    sget-object v3, Lcom/questvisual/wordlens/e/a/d;->b:Lcom/questvisual/wordlens/e/a/d;

    .line 1934
    sget-object v4, Lcom/questvisual/wordlens/e/a/e;->d:Lcom/questvisual/wordlens/e/a/e;

    move v6, v0

    .line 1940
    :goto_1
    new-instance v0, Lcom/questvisual/wordlens/e/a/a;

    sget-object v2, Lcom/questvisual/wordlens/e/a/b;->f:Lcom/questvisual/wordlens/e/a/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/e/a/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;I)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->R:Lcom/questvisual/wordlens/e/a/a;

    .line 1941
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1942
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->O:Lcom/questvisual/util/ui/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1943
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->R:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v1, v0}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/view/View;)V

    .line 1944
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->R:Lcom/questvisual/wordlens/e/a/a;

    sget v1, Lcom/questvisual/wordlens/am;->tutorial_world_xoffset:I

    sget v2, Lcom/questvisual/wordlens/am;->tutorial_world_yoffset:I

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/e/a/a;->a(II)V

    .line 1946
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->tutorial_bubble_playpause:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1947
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->P:Lcom/questvisual/util/ui/d;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1948
    new-instance v0, Lcom/questvisual/wordlens/e/a/a;

    sget-object v2, Lcom/questvisual/wordlens/e/a/b;->f:Lcom/questvisual/wordlens/e/a/b;

    sget-object v3, Lcom/questvisual/wordlens/e/a/d;->h:Lcom/questvisual/wordlens/e/a/d;

    sget-object v4, Lcom/questvisual/wordlens/e/a/e;->d:Lcom/questvisual/wordlens/e/a/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/e/a/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;I)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->S:Lcom/questvisual/wordlens/e/a/a;

    .line 1949
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->S:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0, v6}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/view/View;)V

    .line 1950
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->S:Lcom/questvisual/wordlens/e/a/a;

    sget v1, Lcom/questvisual/wordlens/am;->tutorial_playpause_xoffset:I

    sget v2, Lcom/questvisual/wordlens/am;->tutorial_playpause_yoffset:I

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/e/a/a;->a(II)V

    .line 1952
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1953
    sget v0, Lcom/questvisual/wordlens/aq;->tutorial_bubble_dict:I

    .line 1954
    sget-object v3, Lcom/questvisual/wordlens/e/a/d;->b:Lcom/questvisual/wordlens/e/a/d;

    .line 1955
    sget-object v4, Lcom/questvisual/wordlens/e/a/e;->d:Lcom/questvisual/wordlens/e/a/e;

    .line 1962
    :goto_2
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1963
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Q:Lcom/questvisual/util/ui/d;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1964
    new-instance v0, Lcom/questvisual/wordlens/e/a/a;

    sget-object v2, Lcom/questvisual/wordlens/e/a/b;->f:Lcom/questvisual/wordlens/e/a/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/questvisual/wordlens/e/a/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/e/a/b;Lcom/questvisual/wordlens/e/a/d;Lcom/questvisual/wordlens/e/a/e;I)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->T:Lcom/questvisual/wordlens/e/a/a;

    .line 1965
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->T:Lcom/questvisual/wordlens/e/a/a;

    invoke-virtual {v0, v6}, Lcom/questvisual/wordlens/e/a/a;->a(Landroid/view/View;)V

    .line 1966
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->T:Lcom/questvisual/wordlens/e/a/a;

    sget v1, Lcom/questvisual/wordlens/am;->tutorial_dict_xoffset:I

    sget v2, Lcom/questvisual/wordlens/am;->tutorial_dict_yoffset:I

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/e/a/a;->a(II)V

    .line 1968
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->U:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->U:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->V:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->R:Lcom/questvisual/wordlens/e/a/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->U:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->X:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/e/a/a;Landroid/view/View;[I)V

    .line 1974
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->S:Lcom/questvisual/wordlens/e/a/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->V:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->Y:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/e/a/a;Landroid/view/View;[I)V

    .line 1975
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->T:Lcom/questvisual/wordlens/e/a/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->Z:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/e/a/a;Landroid/view/View;[I)V

    goto/16 :goto_0

    .line 1936
    :cond_2
    sget v0, Lcom/questvisual/wordlens/aq;->tutorial_bubble_world_top:I

    .line 1937
    sget-object v3, Lcom/questvisual/wordlens/e/a/d;->c:Lcom/questvisual/wordlens/e/a/d;

    .line 1938
    sget-object v4, Lcom/questvisual/wordlens/e/a/e;->e:Lcom/questvisual/wordlens/e/a/e;

    move v6, v0

    goto/16 :goto_1

    .line 1957
    :cond_3
    sget v0, Lcom/questvisual/wordlens/aq;->tutorial_bubble_dict_top:I

    .line 1958
    sget-object v3, Lcom/questvisual/wordlens/e/a/d;->b:Lcom/questvisual/wordlens/e/a/d;

    .line 1959
    sget-object v4, Lcom/questvisual/wordlens/e/a/e;->e:Lcom/questvisual/wordlens/e/a/e;

    goto :goto_2
.end method

.method private J()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1980
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->R:Lcom/questvisual/wordlens/e/a/a;

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/e/a/a;)V

    .line 1981
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->R:Lcom/questvisual/wordlens/e/a/a;

    .line 1982
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->S:Lcom/questvisual/wordlens/e/a/a;

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/e/a/a;)V

    .line 1983
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->S:Lcom/questvisual/wordlens/e/a/a;

    .line 1984
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->T:Lcom/questvisual/wordlens/e/a/a;

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/e/a/a;)V

    .line 1985
    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->T:Lcom/questvisual/wordlens/e/a/a;

    .line 1987
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->X:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1988
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Y:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1989
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Z:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1990
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2002
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->O:Lcom/questvisual/util/ui/d;

    invoke-virtual {v0, v1}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 2003
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->P:Lcom/questvisual/util/ui/d;

    invoke-virtual {v0, v1}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 2004
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Q:Lcom/questvisual/util/ui/d;

    invoke-virtual {v0, v1}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 2005
    return-void
.end method

.method private L()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2255
    const-string v0, "word.lens"

    invoke-virtual {p0, v0, v4}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2256
    const-string v1, "key.lang.code.source"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2257
    const-string v2, "key.lang.code.dest"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2258
    const-string v3, "key.lang.pack.demo.mode"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2260
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2263
    new-instance v4, Lcom/questvisual/wordlens/LangPackInfo;

    invoke-direct {v4, v1, v2}, Lcom/questvisual/wordlens/LangPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    iput v3, v4, Lcom/questvisual/wordlens/LangPackInfo;->demoMode:I

    .line 2265
    invoke-static {v4}, Lcom/questvisual/wordlens/NativeLangMan;->a(Lcom/questvisual/wordlens/LangPackInfo;)Z

    .line 2268
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.lang.code.source"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.lang.code.dest"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.lang.pack.demo.mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2270
    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 2632
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aD:Z

    if-eqz v0, :cond_0

    .line 2633
    sget v0, Lcom/questvisual/wordlens/at;->translation_hidden:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2638
    :goto_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2644
    :goto_1
    return-void

    .line 2635
    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/NativeLangMan;->a()Lcom/questvisual/wordlens/LangPackInfo;

    move-result-object v0

    .line 2636
    invoke-virtual {v0, p0}, Lcom/questvisual/wordlens/LangPackInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2641
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/f;->a(Ljava/lang/String;)V

    .line 2642
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d/f;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private N()V
    .locals 3

    .prologue
    .line 2823
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/questvisual/wordlens/messaging/g;

    const/4 v1, 0x0

    .line 2824
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->e:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2825
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->f:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2826
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->n:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2827
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->h:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 2828
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->m:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 2829
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->o:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 2830
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->p:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 2831
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->j:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 2832
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->q:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 2833
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->r:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 2835
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->t:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 2836
    sget-object v2, Lcom/questvisual/wordlens/messaging/g;->w:Lcom/questvisual/wordlens/messaging/g;

    aput-object v2, v0, v1

    .line 2838
    invoke-static {p0, v0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/b;[Lcom/questvisual/wordlens/messaging/g;)V

    .line 2839
    return-void
.end method

.method private O()V
    .locals 0

    .prologue
    .line 2842
    invoke-static {p0}, Lcom/questvisual/wordlens/messaging/MessageManager;->a(Lcom/questvisual/wordlens/messaging/b;)V

    .line 2843
    return-void
.end method

.method private P()V
    .locals 1

    .prologue
    .line 3005
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->af:Z

    if-eqz v0, :cond_0

    .line 3006
    new-instance v0, Lcom/questvisual/wordlens/bq;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bq;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3012
    :cond_0
    return-void
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->b()V

    .line 3158
    new-instance v0, Lcom/questvisual/wordlens/br;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/br;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3164
    const-string v0, "wl_focus"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 3165
    return-void
.end method

.method private R()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3177
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aK:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3178
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aK:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3181
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ab:Lcom/questvisual/wordlens/ce;

    invoke-static {v0}, Lcom/questvisual/wordlens/ce;->a(Lcom/questvisual/wordlens/ce;)I

    move-result v1

    .line 3182
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ab:Lcom/questvisual/wordlens/ce;

    invoke-static {v0}, Lcom/questvisual/wordlens/ce;->b(Lcom/questvisual/wordlens/ce;)I

    move-result v2

    .line 3183
    if-ltz v1, :cond_0

    if-gez v2, :cond_1

    .line 3203
    :cond_0
    :goto_0
    return-void

    .line 3187
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3188
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 3189
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v5, v0, Lcom/questvisual/wordlens/a/b;->g:I

    .line 3190
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v6, v0, Lcom/questvisual/wordlens/a/b;->h:I

    .line 3192
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3193
    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v1, v7

    sub-int v3, v5, v3

    invoke-static {v1, v8, v3}, Lcom/questvisual/util/b;->a(III)I

    move-result v1

    .line 3194
    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v2, v3

    sub-int v3, v6, v4

    invoke-static {v2, v8, v3}, Lcom/questvisual/util/b;->a(III)I

    move-result v2

    .line 3195
    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3197
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 3198
    const/16 v1, 0xd

    aput v8, v0, v1

    .line 3199
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3200
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 3202
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private S()V
    .locals 3

    .prologue
    .line 3633
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/questvisual/wordlens/at;->camera_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3634
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 3638
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_0

    .line 3639
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->invalidateOptionsMenu()V

    .line 3641
    :cond_0
    return-void
.end method

.method private U()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3644
    const-string v0, "word.lens"

    invoke-virtual {p0, v0, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3645
    const-string v1, "key.tap.to.focus.hint.shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3646
    if-nez v0, :cond_0

    .line 3648
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->V()V

    .line 3650
    :cond_0
    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    .line 3653
    new-instance v0, Lcom/questvisual/wordlens/bs;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bs;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3661
    const-string v0, "word.lens"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3662
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3663
    const-string v1, "key.tap.to.focus.hint.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3664
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3666
    return-void
.end method

.method private W()V
    .locals 0

    .prologue
    .line 3670
    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->x:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0xe

    const/16 v5, 0x9

    const/4 v4, -0x2

    .line 1511
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1517
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/d/e;->b(I)V

    .line 1519
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->button_ok:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1521
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v1, Lcom/questvisual/wordlens/ao;->button_rotate_left:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1522
    if-nez v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v1, Lcom/questvisual/wordlens/aq;->camera_rot_adjust_panel_backup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1526
    sget v0, Lcom/questvisual/wordlens/ao;->button_rotate_left:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1527
    sget v1, Lcom/questvisual/wordlens/ao;->button_rotate_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1528
    const-string v3, "\u2190"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    const-string v0, "\u2192"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/d/e;->a(Landroid/view/View;)V

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->button_rotate_left:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1536
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->button_rotate_right:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1538
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1540
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/am;->camera_panel_button_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1545
    sparse-switch p1, :sswitch_data_0

    .line 1616
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1617
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1618
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1619
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1620
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1622
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1623
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1624
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1625
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1628
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1629
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1630
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1632
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1633
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1634
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1635
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1645
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 1659
    const/16 v0, 0x51

    .line 1665
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1667
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1669
    return-void

    .line 1548
    :sswitch_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1549
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1550
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1551
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1552
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1555
    const/4 v1, 0x6

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1556
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1557
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1560
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1561
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1562
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1564
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1565
    const/16 v1, 0x8

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1566
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1567
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1570
    :sswitch_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1571
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1572
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1573
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1574
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1577
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1578
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1579
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1581
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1582
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1583
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1584
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1586
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1587
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1588
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1589
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1592
    :sswitch_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1593
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1594
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1595
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1596
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1599
    const/16 v1, 0x8

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1600
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1601
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1603
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1604
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1605
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1606
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1608
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1609
    const/4 v1, 0x6

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1610
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1611
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ar:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_0

    .line 1648
    :sswitch_3
    const/16 v0, 0x13

    .line 1649
    goto/16 :goto_1

    .line 1651
    :sswitch_4
    const/16 v0, 0x31

    .line 1652
    goto/16 :goto_1

    .line 1654
    :sswitch_5
    const/16 v0, 0x15

    .line 1655
    goto/16 :goto_1

    .line 1545
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 1645
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method private a(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 652
    sget v0, Lcom/questvisual/wordlens/ao;->menu_world:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->O:Lcom/questvisual/util/ui/d;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 654
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->U:Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 655
    const-string v1, "QV"

    const-string v2, "menu action item changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->U:Landroid/view/View;

    .line 659
    sget v0, Lcom/questvisual/wordlens/ao;->menu_playpause:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 660
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->V:Landroid/view/View;

    .line 661
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->P:Lcom/questvisual/util/ui/d;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->V:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 663
    sget v0, Lcom/questvisual/wordlens/ao;->menu_dict:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 664
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    .line 665
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->Q:Lcom/questvisual/util/ui/d;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/questvisual/util/ui/d;->a(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->W:Landroid/view/View;

    new-instance v1, Lcom/questvisual/wordlens/bc;

    invoke-direct {v1, p0}, Lcom/questvisual/wordlens/bc;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 686
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 694
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    :goto_0
    return-void

    .line 697
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 699
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 701
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ax:Lcom/questvisual/wordlens/ag;

    .line 702
    if-nez v1, :cond_1

    .line 703
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v1

    .line 704
    invoke-virtual {v1}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v1

    .line 706
    :cond_1
    invoke-static {}, Lcom/questvisual/wordlens/WordLensActivity;->h()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 711
    :pswitch_0
    sget v1, Lcom/questvisual/wordlens/an;->vid_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 708
    :pswitch_1
    sget v1, Lcom/questvisual/wordlens/an;->vid_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/questvisual/wordlens/LangPackInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 1313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1314
    const-string v1, "lang_pack_abbreviation"

    invoke-virtual {p1}, Lcom/questvisual/wordlens/LangPackInfo;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const-string v1, "wl_lang_pick"

    invoke-static {v1, v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1317
    invoke-virtual {p1}, Lcom/questvisual/wordlens/LangPackInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    new-instance v0, Lcom/questvisual/wordlens/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/questvisual/wordlens/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/LangPackInfo;Lcom/questvisual/wordlens/c;)V

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a;->a()V

    .line 1322
    :goto_0
    return-void

    .line 1320
    :cond_0
    invoke-static {p1}, Lcom/questvisual/wordlens/NativeLangMan;->a(Lcom/questvisual/wordlens/LangPackInfo;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2582
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->x:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/LangPackInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/LangPackInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ax:Lcom/questvisual/wordlens/ag;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3376
    invoke-direct {p0, p1, p2}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ag;Z)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/cg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3414
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ci;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2007
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ci;)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/messaging/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2873
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->b(Lcom/questvisual/wordlens/messaging/a;)V

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2444
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->az:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/questvisual/wordlens/WordLensActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->b(Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/questvisual/wordlens/ag;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3377
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3380
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    .line 3381
    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v0

    .line 3382
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    if-nez v1, :cond_3

    .line 3388
    if-ne p1, v0, :cond_1

    .line 3389
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3412
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3395
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    .line 3397
    if-eqz p2, :cond_2

    .line 3398
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    .line 3402
    :cond_2
    new-instance v1, Lcom/questvisual/wordlens/cg;

    invoke-direct {v1, p0, v0, p1}, Lcom/questvisual/wordlens/cg;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ag;Lcom/questvisual/wordlens/ag;)V

    iput-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    .line 3403
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/cg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3405
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(Lcom/questvisual/wordlens/ci;)V
    .locals 2
    .parameter

    .prologue
    .line 2011
    invoke-static {}, Lcom/questvisual/wordlens/WordLensActivity;->i()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/questvisual/wordlens/ci;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2025
    :goto_0
    return-void

    .line 2013
    :pswitch_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->D()V

    goto :goto_0

    .line 2016
    :pswitch_1
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->E()V

    goto :goto_0

    .line 2019
    :pswitch_2
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->F()V

    goto :goto_0

    .line 2022
    :pswitch_3
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->G()V

    goto :goto_0

    .line 2011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/questvisual/wordlens/e/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1993
    if-eqz p1, :cond_0

    .line 1994
    invoke-virtual {p1}, Lcom/questvisual/wordlens/e/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {p1}, Lcom/questvisual/wordlens/e/a/a;->a()V

    .line 1998
    :cond_0
    return-void
.end method

.method private a(Lcom/questvisual/wordlens/e/a/a;Landroid/view/View;[I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2342
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/questvisual/wordlens/e/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2343
    invoke-virtual {p1, p2}, Lcom/questvisual/wordlens/e/a/a;->b(Landroid/view/View;)V

    .line 2344
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2346
    :cond_0
    return-void
.end method

.method private a(Lcom/questvisual/wordlens/messaging/d;)V
    .locals 2
    .parameter

    .prologue
    .line 2990
    invoke-virtual {p1}, Lcom/questvisual/wordlens/messaging/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aH:Z

    .line 2993
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    if-eqz v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aH:Z

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/a/b;->d(Z)V

    .line 2998
    :cond_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->P()V

    .line 2999
    return-void
.end method

.method private a(Lcom/questvisual/wordlens/messaging/f;)V
    .locals 1
    .parameter

    .prologue
    .line 3015
    iget-boolean v0, p1, Lcom/questvisual/wordlens/messaging/f;->c:Z

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aG:Z

    .line 3018
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->P()V

    .line 3019
    return-void
.end method

.method private a(Landroid/view/View;[I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1913
    if-eqz p1, :cond_0

    .line 1914
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1915
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1916
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return v0

    .line 1916
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->y:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private b(I)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x9

    const/4 v3, -0x2

    .line 2037
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2040
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2044
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/d/e;->b(I)V

    .line 2046
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->button_ok:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2047
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->button_bad:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2049
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->au:Lcom/questvisual/wordlens/d/e;

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v1, v2}, Lcom/questvisual/wordlens/d/e;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2051
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/am;->camera_panel_button_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2056
    sparse-switch p1, :sswitch_data_0

    .line 2112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2113
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2114
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2115
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2116
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2117
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2120
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2121
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2122
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2125
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2126
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2127
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2143
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 2157
    const/16 v0, 0x51

    .line 2162
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2164
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2165
    return-void

    .line 2059
    :sswitch_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2060
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2061
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2062
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2063
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2066
    const/4 v1, 0x6

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2067
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2068
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2070
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2071
    const/16 v1, 0x8

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2072
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2073
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2076
    :sswitch_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2077
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2078
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2079
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2080
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2082
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2083
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2084
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2085
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2088
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2089
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2090
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2093
    :sswitch_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2094
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2095
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2096
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2097
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2099
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2100
    const/16 v1, 0x8

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2101
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2102
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ao:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2105
    const/4 v1, 0x6

    sget v2, Lcom/questvisual/wordlens/ao;->camcheck_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2106
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->as:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2107
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ap:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2133
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_0

    .line 2146
    :sswitch_3
    const/16 v0, 0x13

    .line 2147
    goto/16 :goto_1

    .line 2149
    :sswitch_4
    const/16 v0, 0x31

    .line 2150
    goto/16 :goto_1

    .line 2152
    :sswitch_5
    const/16 v0, 0x15

    .line 2153
    goto/16 :goto_1

    .line 2056
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 2143
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic b(Lcom/questvisual/wordlens/WordLensActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2036
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/questvisual/wordlens/WordLensActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aA:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic b(Lcom/questvisual/wordlens/WordLensActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->c(Z)V

    return-void
.end method

.method private b(Lcom/questvisual/wordlens/messaging/a;)V
    .locals 2
    .parameter

    .prologue
    .line 2874
    invoke-static {}, Lcom/questvisual/wordlens/WordLensActivity;->j()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/questvisual/wordlens/messaging/a;->a()Lcom/questvisual/wordlens/messaging/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2931
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2877
    :pswitch_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/a;->a(Lcom/questvisual/wordlens/a/b;)V

    .line 2879
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->P()V

    goto :goto_0

    .line 2890
    :pswitch_2
    invoke-static {}, Lcom/questvisual/wordlens/NativeDictionary;->b()V

    .line 2892
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->c(Z)V

    goto :goto_0

    .line 2896
    :pswitch_3
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v0

    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    if-ne v0, v1, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    sget-object v1, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    if-ne v0, v1, :cond_0

    .line 2898
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->Q()V

    goto :goto_0

    .line 2904
    :pswitch_4
    check-cast p1, Lcom/questvisual/wordlens/messaging/d;

    .line 2905
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/messaging/d;)V

    goto :goto_0

    .line 2908
    :pswitch_5
    check-cast p1, Lcom/questvisual/wordlens/messaging/f;

    .line 2909
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/messaging/f;)V

    goto :goto_0

    .line 2919
    :pswitch_6
    new-instance v0, Lcom/questvisual/wordlens/bp;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/bp;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2874
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 778
    if-eqz p1, :cond_0

    .line 779
    const-string v0, "wl_lang_world_icon"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    .line 784
    :goto_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    new-instance v0, Lcom/questvisual/wordlens/y;

    invoke-direct {v0}, Lcom/questvisual/wordlens/y;-><init>()V

    .line 787
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->e()Landroid/support/v4/app/o;

    move-result-object v1

    .line 788
    const-string v2, "lang_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/y;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 793
    :goto_1
    return-void

    .line 781
    :cond_0
    const-string v0, "wl_lang_more"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/questvisual/wordlens/LanguagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 2583
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    if-nez v0, :cond_1

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2586
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2591
    sparse-switch p1, :sswitch_data_0

    .line 2605
    const/16 v0, 0x31

    .line 2613
    :goto_1
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->v:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v1, p1}, Lcom/questvisual/wordlens/d/f;->d(I)V

    .line 2614
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->M()V

    .line 2618
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2622
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2624
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 2594
    :sswitch_0
    const/16 v0, 0x15

    .line 2595
    goto :goto_1

    .line 2597
    :sswitch_1
    const/16 v0, 0x51

    .line 2598
    goto :goto_1

    .line 2600
    :sswitch_2
    const/16 v0, 0x13

    .line 2601
    goto :goto_1

    .line 2591
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic c(Lcom/questvisual/wordlens/WordLensActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1510
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/questvisual/wordlens/WordLensActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2580
    iput-boolean p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aD:Z

    return-void
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {p1}, Lcom/questvisual/wordlens/d;->d(Z)Lcom/questvisual/wordlens/d;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->e()Landroid/support/v4/app/o;

    move-result-object v1

    .line 812
    const-string v2, "dict_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/d;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 820
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/questvisual/wordlens/DictActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 815
    if-eqz p1, :cond_1

    .line 816
    const-string v1, "key.do.init.lookup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 818
    :cond_1
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/a/b;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/questvisual/wordlens/WordLensActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2446
    iput-boolean p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aB:Z

    return-void
.end method

.method private d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 838
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_0

    .line 840
    iput-boolean p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->al:Z

    .line 841
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->invalidateOptionsMenu()V

    .line 847
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 844
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 845
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/c/e;
    .locals 1
    .parameter

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aP:Lcom/questvisual/wordlens/c/e;

    return-object v0
.end method

.method static synthetic e(Lcom/questvisual/wordlens/WordLensActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2447
    iput-boolean p1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aC:Z

    return-void
.end method

.method private e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v0, p1}, Lcom/questvisual/wordlens/d/a;->setOrientationLocked(Z)V

    .line 2730
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 2731
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/questvisual/util/ui/c;->b(Landroid/app/Activity;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->setRequestedOrientation(I)V

    .line 2742
    :goto_1
    return-void

    .line 2731
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 2733
    :cond_1
    if-eqz p1, :cond_2

    .line 2735
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cf;->disable()V

    .line 2740
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 2738
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cf;->enable()V

    goto :goto_2
.end method

.method static synthetic f(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->az:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f(Lcom/questvisual/wordlens/WordLensActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2727
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->e(Z)V

    return-void
.end method

.method static synthetic g(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cb;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    return-object v0
.end method

.method static synthetic h(Lcom/questvisual/wordlens/WordLensActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 2580
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aD:Z

    return v0
.end method

.method static synthetic h()[I
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/questvisual/wordlens/WordLensActivity;->aQ:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/ag;->values()[Lcom/questvisual/wordlens/ag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/ag;->c:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/questvisual/wordlens/WordLensActivity;->aQ:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic i(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2630
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->M()V

    return-void
.end method

.method static synthetic i()[I
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/questvisual/wordlens/WordLensActivity;->aR:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/ci;->values()[Lcom/questvisual/wordlens/ci;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/ci;->c:Lcom/questvisual/wordlens/ci;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ci;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/ci;->b:Lcom/questvisual/wordlens/ci;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ci;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ci;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/ci;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/questvisual/wordlens/WordLensActivity;->aR:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic j(Lcom/questvisual/wordlens/WordLensActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    return v0
.end method

.method static synthetic j()[I
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/questvisual/wordlens/WordLensActivity;->aS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/messaging/g;->values()[Lcom/questvisual/wordlens/messaging/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->t:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_16

    :goto_1
    :try_start_1
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->u:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_15

    :goto_2
    :try_start_2
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->v:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_14

    :goto_3
    :try_start_3
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->w:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_13

    :goto_4
    :try_start_4
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->f:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_12

    :goto_5
    :try_start_5
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->e:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_11

    :goto_6
    :try_start_6
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->s:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_10

    :goto_7
    :try_start_7
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->c:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_f

    :goto_8
    :try_start_8
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->d:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_e

    :goto_9
    :try_start_9
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->a:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_d

    :goto_a
    :try_start_a
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->b:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c

    :goto_b
    :try_start_b
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->n:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_c
    :try_start_c
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->m:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_a

    :goto_d
    :try_start_d
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->l:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_9

    :goto_e
    :try_start_e
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->p:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_8

    :goto_f
    :try_start_f
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->j:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_7

    :goto_10
    :try_start_10
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->k:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_6

    :goto_11
    :try_start_11
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->i:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_5

    :goto_12
    :try_start_12
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->o:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_4

    :goto_13
    :try_start_13
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->r:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_3

    :goto_14
    :try_start_14
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->q:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2

    :goto_15
    :try_start_15
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->h:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1

    :goto_16
    :try_start_16
    sget-object v1, Lcom/questvisual/wordlens/messaging/g;->g:Lcom/questvisual/wordlens/messaging/g;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/messaging/g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_0

    :goto_17
    sput-object v0, Lcom/questvisual/wordlens/WordLensActivity;->aS:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_17

    :catch_1
    move-exception v1

    goto :goto_16

    :catch_2
    move-exception v1

    goto :goto_15

    :catch_3
    move-exception v1

    goto :goto_14

    :catch_4
    move-exception v1

    goto :goto_13

    :catch_5
    move-exception v1

    goto :goto_12

    :catch_6
    move-exception v1

    goto :goto_11

    :catch_7
    move-exception v1

    goto :goto_10

    :catch_8
    move-exception v1

    goto :goto_f

    :catch_9
    move-exception v1

    goto :goto_e

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v1

    goto/16 :goto_c

    :catch_c
    move-exception v1

    goto/16 :goto_b

    :catch_d
    move-exception v1

    goto/16 :goto_a

    :catch_e
    move-exception v1

    goto/16 :goto_9

    :catch_f
    move-exception v1

    goto/16 :goto_8

    :catch_10
    move-exception v1

    goto/16 :goto_7

    :catch_11
    move-exception v1

    goto/16 :goto_6

    :catch_12
    move-exception v1

    goto/16 :goto_5

    :catch_13
    move-exception v1

    goto/16 :goto_4

    :catch_14
    move-exception v1

    goto/16 :goto_3

    :catch_15
    move-exception v1

    goto/16 :goto_2

    :catch_16
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic k(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/cf;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 528
    const-string v0, "QV"

    const-string v1, "CPU does not support NEON. WordLens cannot run on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported! Product: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 530
    const-string v1, ", Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 531
    const-string v1, ", Board: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    const-string v1, ", Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string v1, ", Manufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v1, "QV"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 538
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 539
    sget v1, Lcom/questvisual/wordlens/at;->device_not_supported:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 540
    sget v1, Lcom/questvisual/wordlens/at;->send_email:I

    new-instance v2, Lcom/questvisual/wordlens/ba;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/ba;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 562
    sget v1, Lcom/questvisual/wordlens/at;->exit:I

    new-instance v2, Lcom/questvisual/wordlens/bb;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/bb;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 571
    return-void
.end method

.method static synthetic l(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 749
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/questvisual/wordlens/at;->send_love_prompt:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/at;->send_love_yes:I

    new-instance v2, Lcom/questvisual/wordlens/be;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/be;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 762
    sget v1, Lcom/questvisual/wordlens/at;->send_love_no:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 766
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    check-cast v0, Landroid/widget/TextView;

    .line 769
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 771
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->z()V

    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    new-instance v0, Lcom/questvisual/wordlens/s;

    invoke-direct {v0}, Lcom/questvisual/wordlens/s;-><init>()V

    .line 799
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->e()Landroid/support/v4/app/o;

    move-result-object v1

    .line 800
    const-string v2, "info_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/s;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 805
    :goto_0
    return-void

    .line 802
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/questvisual/wordlens/InfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 803
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/questvisual/wordlens/WordLensActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    return v0
.end method

.method static synthetic o(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    new-instance v0, Lcom/questvisual/wordlens/l;

    invoke-direct {v0}, Lcom/questvisual/wordlens/l;-><init>()V

    .line 825
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->e()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "feedback_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/questvisual/wordlens/l;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    .line 830
    :goto_0
    return-void

    .line 827
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/questvisual/wordlens/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 828
    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->g:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->h:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->af:Z

    if-nez v0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    sget-object v1, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v0

    sget-object v1, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    if-eq v0, v1, :cond_3

    .line 862
    :cond_2
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->q()V

    .line 863
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->r()V

    goto :goto_0

    .line 864
    :cond_3
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aH:Z

    if-nez v0, :cond_4

    .line 865
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->v()V

    .line 866
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->r()V

    goto :goto_0

    .line 867
    :cond_4
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aG:Z

    if-eqz v0, :cond_5

    .line 868
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->q()V

    .line 869
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->s()V

    goto :goto_0

    .line 872
    :cond_5
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->q()V

    .line 873
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->r()V

    goto :goto_0
.end method

.method static synthetic q(Lcom/questvisual/wordlens/WordLensActivity;)Lcom/questvisual/wordlens/d/a;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 879
    sget v0, Lcom/questvisual/wordlens/aj;->fade_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 880
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 882
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 883
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 885
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 888
    sget v0, Lcom/questvisual/wordlens/aj;->fade_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 889
    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3004
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->P()V

    return-void
.end method

.method static synthetic s(Lcom/questvisual/wordlens/WordLensActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aA:Ljava/lang/Boolean;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->t()V

    .line 908
    :goto_0
    return-void

    .line 906
    :cond_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->u()V

    goto :goto_0
.end method

.method static synthetic t(Lcom/questvisual/wordlens/WordLensActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    return-object v0
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 911
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v3, Lcom/questvisual/wordlens/aq;->hint_text_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    .line 913
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    sget v3, Lcom/questvisual/wordlens/an;->grey_background:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 914
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    sget v3, Lcom/questvisual/wordlens/at;->text_too_small:I

    invoke-virtual {p0, v3}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 917
    iget v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 918
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 919
    sget v3, Lcom/questvisual/wordlens/ao;->camera_panel:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 920
    sget v3, Lcom/questvisual/wordlens/ao;->floating_play_pause_icon:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 921
    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->ae:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 924
    :goto_0
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 925
    if-nez v0, :cond_1

    .line 926
    sget v0, Lcom/questvisual/wordlens/aj;->fade_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 927
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 929
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 923
    goto :goto_0
.end method

.method private u()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v4, 0x0

    .line 932
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 933
    const-string v0, "QV"

    const-string v1, "Error! showTooSmallTextHintOldWay called from autorotate mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v0}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 957
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->g:I

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d/a;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 958
    const/16 v2, 0x55

    .line 959
    sget v0, Lcom/questvisual/wordlens/aj;->grow_from_bottomright_to_topleft:I

    move v3, v2

    move v2, v1

    move v1, v0

    .line 963
    :goto_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    if-nez v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    sget v5, Lcom/questvisual/wordlens/aq;->hint_text_layout:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 965
    sget v5, Lcom/questvisual/wordlens/an;->grey_background:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 966
    new-instance v5, Lcom/questvisual/wordlens/d/f;

    sget v6, Lcom/questvisual/wordlens/ao;->hint_text:I

    invoke-direct {v5, v0, v6}, Lcom/questvisual/wordlens/d/f;-><init>(Landroid/view/View;I)V

    iput-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    .line 967
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    sget v5, Lcom/questvisual/wordlens/at;->text_too_small:I

    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/questvisual/wordlens/d/f;->a(Ljava/lang/String;)V

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 972
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    .line 973
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 974
    iget v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v7, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 975
    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    :goto_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    iget v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/d/f;->a(I)V

    .line 984
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_4

    move v0, v4

    :goto_3
    invoke-virtual {v2, v0}, Lcom/questvisual/wordlens/d/f;->d(I)V

    .line 987
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->G:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/d/f;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 988
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 989
    :goto_4
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    if-nez v0, :cond_0

    .line 991
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 941
    :sswitch_0
    const/16 v2, 0x53

    .line 942
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->h:I

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d/a;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v0, v1

    .line 943
    sget v0, Lcom/questvisual/wordlens/aj;->grow_from_bottomleft_to_topright:I

    move v3, v2

    move v2, v1

    move v1, v0

    .line 944
    goto/16 :goto_1

    .line 946
    :sswitch_1
    const/16 v2, 0x33

    .line 947
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->g:I

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d/a;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 948
    sget v0, Lcom/questvisual/wordlens/aj;->grow_from_topleft_to_bottomright:I

    move v3, v2

    move v2, v1

    move v1, v0

    .line 949
    goto/16 :goto_1

    .line 951
    :sswitch_2
    const/16 v2, 0x35

    .line 952
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->h:I

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/d/a;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v0, v1

    .line 953
    sget v0, Lcom/questvisual/wordlens/aj;->grow_from_topright_to_bottomleft:I

    move v3, v2

    move v2, v1

    move v1, v0

    .line 954
    goto/16 :goto_1

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 978
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 979
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    goto/16 :goto_2

    .line 984
    :cond_4
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v0}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v4

    .line 988
    goto :goto_4

    .line 939
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic u(Lcom/questvisual/wordlens/WordLensActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 2446
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aB:Z

    return v0
.end method

.method private v()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const-wide v7, 0x3fe6666666666666L

    const-wide v3, 0x3fc3333333333333L

    const/4 v2, 0x0

    .line 998
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    if-nez v0, :cond_0

    .line 999
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1000
    sget v5, Lcom/questvisual/wordlens/aq;->hint_text_layout:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1001
    new-instance v5, Lcom/questvisual/wordlens/d/f;

    sget v6, Lcom/questvisual/wordlens/ao;->hint_text:I

    invoke-direct {v5, v0, v6}, Lcom/questvisual/wordlens/d/f;-><init>(Landroid/view/View;I)V

    iput-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    .line 1003
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/f;->c()Landroid/view/View;

    move-result-object v0

    sget v5, Lcom/questvisual/wordlens/an;->hint_brackets_grey_bg:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1004
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    sget v5, Lcom/questvisual/wordlens/at;->align_text_instructions:I

    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/questvisual/wordlens/d/f;->a(Ljava/lang/String;)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1009
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    .line 1010
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v0, v9, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1012
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v5, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    :cond_1
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1019
    :goto_0
    iget-boolean v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v5, :cond_5

    .line 1020
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v5, v5, Lcom/questvisual/wordlens/a/b;->g:I

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 1021
    iget-object v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v6, v6, Lcom/questvisual/wordlens/a/b;->h:I

    int-to-float v6, v6

    float-to-double v6, v6

    if-eqz v0, :cond_2

    const-wide/high16 v3, 0x3fd0

    :cond_2
    mul-double/2addr v3, v6

    double-to-int v0, v3

    move v3, v5

    .line 1034
    :goto_1
    iget-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v4, v3, v0}, Lcom/questvisual/wordlens/d/f;->a(II)V

    .line 1037
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 1039
    iget-boolean v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v3, :cond_8

    .line 1040
    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/d/f;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1046
    :goto_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1047
    :goto_3
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    if-nez v1, :cond_3

    .line 1049
    sget v0, Lcom/questvisual/wordlens/aj;->grow_from_center:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1052
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1018
    goto :goto_0

    .line 1022
    :cond_5
    const/16 v0, 0x5a

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v5}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v5

    if-eq v0, v5, :cond_6

    const/16 v0, 0x10e

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v5}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v5

    if-ne v0, v5, :cond_7

    .line 1024
    :cond_6
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->g:I

    int-to-float v0, v0

    float-to-double v3, v0

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 1025
    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v3, v3, Lcom/questvisual/wordlens/a/b;->h:I

    int-to-float v3, v3

    float-to-double v3, v3

    const-wide v5, 0x3fe3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 1026
    goto :goto_1

    .line 1028
    :cond_7
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->g:I

    int-to-float v0, v0

    float-to-double v5, v0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 1029
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget v0, v0, Lcom/questvisual/wordlens/a/b;->h:I

    int-to-float v0, v0

    float-to-double v6, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    move v3, v5

    goto :goto_1

    .line 1042
    :cond_8
    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    iget-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-static {v4}, Lcom/questvisual/wordlens/cf;->a(Lcom/questvisual/wordlens/cf;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/questvisual/wordlens/d/f;->d(I)V

    .line 1043
    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->F:Lcom/questvisual/wordlens/d/f;

    invoke-virtual {v3}, Lcom/questvisual/wordlens/d/f;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_9
    move v1, v2

    .line 1046
    goto :goto_3
.end method

.method static synthetic v(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3668
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->W()V

    return-void
.end method

.method private w()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1188
    new-instance v0, Lcom/questvisual/wordlens/ch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/questvisual/wordlens/ch;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/ch;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->z:Lcom/questvisual/wordlens/ch;

    .line 1189
    new-instance v0, Lcom/questvisual/wordlens/cc;

    invoke-direct {v0, p0, p0}, Lcom/questvisual/wordlens/cc;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Landroid/content/Context;)V

    .line 1190
    new-instance v1, Lcom/questvisual/wordlens/d/d;

    invoke-direct {v1}, Lcom/questvisual/wordlens/d/d;-><init>()V

    .line 1191
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->z:Lcom/questvisual/wordlens/ch;

    iput-object v2, v1, Lcom/questvisual/wordlens/d/d;->a:Landroid/view/View$OnClickListener;

    .line 1192
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aI:Landroid/view/View$OnClickListener;

    iput-object v2, v1, Lcom/questvisual/wordlens/d/d;->b:Landroid/view/View$OnClickListener;

    .line 1193
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aJ:Landroid/view/View$OnClickListener;

    iput-object v2, v1, Lcom/questvisual/wordlens/d/d;->c:Landroid/view/View$OnClickListener;

    .line 1194
    iput-object v0, v1, Lcom/questvisual/wordlens/d/d;->d:Landroid/view/View$OnTouchListener;

    .line 1203
    new-instance v0, Lcom/questvisual/wordlens/d/h;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p0, v2, p0}, Lcom/questvisual/wordlens/d/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/questvisual/wordlens/d/j;)V

    .line 1204
    new-instance v2, Lcom/questvisual/wordlens/d/a;

    iget v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/questvisual/wordlens/d/a;-><init>(Landroid/content/Context;Lcom/questvisual/wordlens/d/d;ILcom/questvisual/wordlens/d/h;)V

    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    .line 1205
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/a;->setAutoRotateMode(Z)V

    .line 1206
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    sget v1, Lcom/questvisual/wordlens/ao;->camera_panel:I

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d/a;->setId(I)V

    .line 1208
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_0

    .line 1209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1210
    iget v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1211
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1212
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1213
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ae:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    :goto_0
    return-void

    .line 1216
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x53

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1217
    iget v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    iget v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1218
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic w(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3632
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->S()V

    return-void
.end method

.method static synthetic x(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->p()V

    return-void
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/questvisual/wordlens/al;->split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1225
    return v0
.end method

.method static synthetic y(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3637
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->T()V

    return-void
.end method

.method private y()Z
    .locals 2

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 1230
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private z()V
    .locals 5

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1262
    iget v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->ak:I

    if-eq v1, v0, :cond_1

    .line 1263
    const-string v1, "QV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current display rotation is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/q;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    if-eqz v1, :cond_0

    .line 1267
    invoke-static {v0}, Lcom/questvisual/wordlens/q;->b(I)I

    move-result v1

    .line 1268
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    iget-object v2, v2, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-virtual {v2, v1}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(I)V

    .line 1275
    :cond_0
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->s:Landroid/view/SurfaceView;

    new-instance v2, Lcom/questvisual/wordlens/bf;

    invoke-direct {v2, p0}, Lcom/questvisual/wordlens/bf;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    .line 1280
    const-wide/16 v3, 0x64

    .line 1275
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1282
    iput v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ak:I

    .line 1284
    :cond_1
    return-void
.end method

.method static synthetic z(Lcom/questvisual/wordlens/WordLensActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->n()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 3767
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->e()Landroid/support/v4/app/o;

    move-result-object v0

    .line 3768
    const-string v1, "dict_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 3770
    if-eqz v0, :cond_0

    .line 3771
    const-class v1, Lcom/questvisual/wordlens/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3772
    check-cast v0, Lcom/questvisual/wordlens/d;

    .line 3773
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/d;->e(Z)V

    .line 3778
    :cond_0
    :goto_0
    return-void

    .line 3775
    :cond_1
    const-string v0, "QV"

    const-string v1, "Why was a fragment not a DictFrag using the tag: dict_dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 3751
    const/16 v0, 0x639

    invoke-virtual {p0, p1, v0}, Lcom/questvisual/wordlens/WordLensActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3752
    return-void
.end method

.method public a(Lcom/questvisual/wordlens/messaging/a;)V
    .locals 1
    .parameter

    .prologue
    .line 2861
    new-instance v0, Lcom/questvisual/wordlens/bo;

    invoke-direct {v0, p0, p1}, Lcom/questvisual/wordlens/bo;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/messaging/a;)V

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2866
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 3024
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3026
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 3029
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->requestWindowFeature(I)Z

    .line 3030
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3032
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3756
    const/16 v0, 0x639

    if-ne v0, p1, :cond_0

    .line 3758
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3762
    :goto_0
    return-void

    .line 3760
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/i;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 1241
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1244
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->x()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->invalidateOptionsMenu()V

    .line 1249
    :cond_0
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 1250
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->z()V

    .line 1253
    :cond_1
    return-void

    .line 1245
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0xe

    const/4 v8, -0x2

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->k()V

    .line 524
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/content/Context;)Z

    move-result v0

    .line 300
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "key.splash.was.first.init"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v4, v0

    .line 302
    if-eqz p1, :cond_1

    .line 303
    const-string v0, "key.first.native.code.init"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    .line 313
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getRequestedOrientation()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    .line 315
    iget-boolean v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_a

    move v0, v1

    :goto_3
    and-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    .line 316
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-nez v0, :cond_2

    .line 318
    invoke-virtual {p0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->setRequestedOrientation(I)V

    .line 322
    :cond_2
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    invoke-static {v0}, Lcom/questvisual/wordlens/NativeGLRenderer;->setIsAppWindowAutoRotate(Z)V

    .line 325
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->t:Landroid/view/LayoutInflater;

    .line 334
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-nez v0, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->g()V

    .line 338
    :cond_3
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->f()V

    .line 340
    sget v0, Lcom/questvisual/wordlens/aq;->main:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->setContentView(I)V

    .line 343
    sget v0, Lcom/questvisual/wordlens/ao;->wl_main_layout:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ac:Landroid/widget/RelativeLayout;

    .line 344
    sget v0, Lcom/questvisual/wordlens/ao;->mainFrame:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    .line 346
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/questvisual/wordlens/am;->camera_panel_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    .line 348
    const-string v0, "word.lens"

    invoke-virtual {p0, v0, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    new-instance v5, Landroid/view/SurfaceView;

    invoke-direct {v5, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->s:Landroid/view/SurfaceView;

    .line 354
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->s:Landroid/view/SurfaceView;

    invoke-virtual {v5, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 356
    const-string v5, "key.camera.orientation.compensation.v2"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 358
    new-instance v6, Lcom/questvisual/wordlens/a/b;

    iget-object v7, p0, Lcom/questvisual/wordlens/WordLensActivity;->s:Landroid/view/SurfaceView;

    invoke-direct {v6, p0, v7, v5}, Lcom/questvisual/wordlens/a/b;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;I)V

    iput-object v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    .line 360
    const-string v5, "key.device.is.high.res.capable"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    if-nez v0, :cond_4

    .line 363
    new-instance v0, Lcom/questvisual/wordlens/r;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/r;-><init>(Landroid/content/Context;)V

    .line 364
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget-object v5, v5, Lcom/questvisual/wordlens/a/b;->d:Lcom/questvisual/wordlens/a/g;

    invoke-virtual {v5, v0}, Lcom/questvisual/wordlens/a/g;->a(Lcom/questvisual/wordlens/a/h;)V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v0, Lcom/questvisual/wordlens/n;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    .line 383
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/n;->setZOrderMediaOverlay(Z)V

    .line 384
    new-instance v0, Lcom/questvisual/wordlens/cb;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-direct {v0, p0, v5}, Lcom/questvisual/wordlens/cb;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/n;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    .line 387
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 389
    const-string v5, "QV"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "On Startup, display rotation is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/questvisual/wordlens/q;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {v0}, Lcom/questvisual/wordlens/q;->b(I)I

    move-result v0

    .line 392
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    iget-object v5, v5, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-virtual {v5, v0}, Lcom/questvisual/wordlens/NativeGLRenderer;->a(I)V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 405
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v0

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-virtual {v0, v5}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/opengl/GLSurfaceView;)V

    .line 410
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 411
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-virtual {v5, v0}, Lcom/questvisual/wordlens/n;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 412
    new-instance v5, Lcom/questvisual/wordlens/ce;

    iget-object v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-direct {v5, p0, p0, v6, v0}, Lcom/questvisual/wordlens/ce;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/WordLensActivity;Landroid/view/View;Landroid/graphics/Rect;)V

    iput-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ab:Lcom/questvisual/wordlens/ce;

    .line 413
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ab:Lcom/questvisual/wordlens/ce;

    invoke-virtual {v0, v5}, Lcom/questvisual/wordlens/n;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 417
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ae:Landroid/widget/RelativeLayout;

    .line 418
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ad:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ae:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 421
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->w()V

    .line 424
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_c

    .line 426
    sget v0, Lcom/questvisual/wordlens/ao;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    .line 431
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    sget v5, Lcom/questvisual/wordlens/an;->vid_pause_selector:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    sget v5, Lcom/questvisual/wordlens/at;->desc_pause_play:I

    invoke-virtual {p0, v5}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->x()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 436
    iget v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->B:I

    mul-int/lit8 v5, v5, 0x2

    .line 437
    invoke-virtual {v0, v2, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 438
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 439
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 440
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    sget v6, Lcom/questvisual/wordlens/ao;->floating_play_pause_icon:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 441
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ae:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    :goto_5
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->aO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->A()V

    .line 474
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    if-nez v0, :cond_d

    move v0, v2

    .line 475
    :goto_6
    if-eqz v0, :cond_6

    iget-boolean v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->ai:Z

    if-nez v5, :cond_6

    .line 476
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v5, v0}, Lcom/questvisual/wordlens/d/a;->a(I)V

    .line 477
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->c(I)V

    .line 482
    :cond_6
    new-instance v5, Lcom/questvisual/wordlens/cf;

    invoke-direct {v5, p0, p0, v0}, Lcom/questvisual/wordlens/cf;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    .line 483
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cf;->enable()V

    .line 486
    sget v0, Lcom/questvisual/wordlens/ao;->focus_reticle:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    .line 487
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aa:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 490
    sget v0, Lcom/questvisual/wordlens/ao;->demoText:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 492
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    new-instance v0, Lcom/questvisual/wordlens/c/b;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/c/b;-><init>(Landroid/content/Context;)V

    new-array v3, v1, [Lcom/questvisual/wordlens/c/c;

    sget-object v5, Lcom/questvisual/wordlens/c/c;->a:Lcom/questvisual/wordlens/c/c;

    aput-object v5, v3, v2

    invoke-virtual {v0, v3}, Lcom/questvisual/wordlens/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 519
    if-eqz v4, :cond_7

    .line 520
    new-instance v0, Lcom/questvisual/wordlens/c/b;

    invoke-direct {v0, p0}, Lcom/questvisual/wordlens/c/b;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Lcom/questvisual/wordlens/c/c;

    sget-object v3, Lcom/questvisual/wordlens/c/c;->b:Lcom/questvisual/wordlens/c/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 523
    :cond_7
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->l()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 310
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 313
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 315
    goto/16 :goto_3

    :cond_b
    move v0, v3

    .line 433
    goto/16 :goto_4

    .line 445
    :cond_c
    sget v0, Lcom/questvisual/wordlens/ao;->toolbar_worldIcon:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->H:Landroid/widget/ImageView;

    .line 446
    sget v0, Lcom/questvisual/wordlens/ao;->toolbar_playPauseIcon:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->I:Landroid/widget/ImageView;

    .line 447
    sget v0, Lcom/questvisual/wordlens/ao;->toolbar_infoIcon:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->J:Landroid/widget/ImageView;

    .line 448
    sget v0, Lcom/questvisual/wordlens/ao;->toolbar_dictIcon:I

    invoke-virtual {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->K:Landroid/widget/ImageView;

    .line 451
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->H:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->aM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->J:Landroid/widget/ImageView;

    new-instance v5, Lcom/questvisual/wordlens/bz;

    invoke-direct {v5, p0}, Lcom/questvisual/wordlens/bz;-><init>(Lcom/questvisual/wordlens/WordLensActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->K:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->aN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 474
    :cond_d
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    iget-object v0, v0, Lcom/questvisual/wordlens/cb;->b:Lcom/questvisual/wordlens/NativeGLRenderer;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeGLRenderer;->b()I

    move-result v0

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 594
    sget v1, Lcom/questvisual/wordlens/ar;->wl_actions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 597
    sget v0, Lcom/questvisual/wordlens/ao;->menu_world:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 598
    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->L:Landroid/widget/ImageView;

    .line 600
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->L:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :cond_0
    sget v0, Lcom/questvisual/wordlens/ao;->menu_playpause:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_1

    .line 605
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->M:Landroid/widget/ImageView;

    .line 606
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->M:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    :cond_1
    sget v0, Lcom/questvisual/wordlens/ao;->menu_dict:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_2

    .line 611
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->N:Landroid/widget/ImageView;

    .line 612
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->N:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 2399
    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroy()V

    .line 2401
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->A:Lcom/questvisual/wordlens/d/a;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/d/a;->a()V

    .line 2405
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    if-eqz v0, :cond_0

    .line 2406
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    monitor-enter v1

    .line 2410
    :try_start_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cg;->a()V

    .line 2413
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/questvisual/wordlens/cg;->cancel(Z)Z

    .line 2406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aL:Lcom/questvisual/wordlens/cg;

    .line 2419
    :cond_0
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->z:Lcom/questvisual/wordlens/ch;

    if-eqz v0, :cond_1

    .line 2420
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->z:Lcom/questvisual/wordlens/ch;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/ch;->a()V

    .line 2424
    :cond_1
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2428
    return-void

    .line 2406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 723
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 725
    sget v2, Lcom/questvisual/wordlens/ao;->menu_info:I

    if-ne v2, v1, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->n()V

    .line 744
    :goto_0
    return v0

    .line 728
    :cond_0
    sget v2, Lcom/questvisual/wordlens/ao;->menu_dict:I

    if-ne v2, v1, :cond_1

    .line 729
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->c(Z)V

    goto :goto_0

    .line 731
    :cond_1
    sget v2, Lcom/questvisual/wordlens/ao;->menu_feedback:I

    if-ne v2, v1, :cond_2

    .line 732
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->o()V

    goto :goto_0

    .line 734
    :cond_2
    sget v2, Lcom/questvisual/wordlens/ao;->menu_love:I

    if-ne v2, v1, :cond_3

    .line 735
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->m()V

    goto :goto_0

    .line 737
    :cond_3
    sget v2, Lcom/questvisual/wordlens/ao;->menu_world:I

    if-ne v2, v1, :cond_4

    .line 738
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->b(Z)V

    goto :goto_0

    .line 740
    :cond_4
    sget v2, Lcom/questvisual/wordlens/ao;->menu_playpause:I

    if-ne v2, v1, :cond_5

    .line 741
    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aO:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 744
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 2351
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2353
    const-string v0, "QV"

    const-string v1, "Skipping onPause, CPU was not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :goto_0
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->J()V

    .line 2386
    invoke-super {p0}, Landroid/support/v4/app/i;->onPause()V

    .line 2387
    return-void

    .line 2355
    :cond_0
    const-string v0, "wl_screen"

    invoke-static {v0}, Lcom/questvisual/wordlens/e/a;->b(Ljava/lang/String;)V

    .line 2357
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->O()V

    .line 2359
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/opengl/GLSurfaceView;)V

    .line 2362
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    if-eqz v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cb;->a()V

    .line 2367
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    if-eqz v0, :cond_2

    .line 2368
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/a/b;->g()V

    .line 2370
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    if-eqz v0, :cond_3

    .line 2371
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cf;->disable()V

    .line 2375
    :cond_3
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/questvisual/wordlens/WordLensSystem;->j()V

    .line 2379
    sget-object v0, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ag;Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ah:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ag:Lcom/questvisual/wordlens/ci;

    sget-object v1, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    if-ne v0, v1, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Landroid/view/Menu;)V

    .line 626
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 630
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->L:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->L:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->al:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->M:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->M:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->al:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->N:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->N:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->al:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 641
    :cond_3
    sget v0, Lcom/questvisual/wordlens/ao;->menu_playpause:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_4

    .line 643
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Landroid/view/MenuItem;)V

    .line 646
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 627
    :cond_5
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->al:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 2484
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2486
    const-string v0, "key.wordlensactivity.saved.ui.mode"

    sget-object v1, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    iget v1, v1, Lcom/questvisual/wordlens/ag;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2487
    const-string v1, "key.first.native.code.init"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2488
    if-eqz v1, :cond_0

    .line 2490
    sget-object v0, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    .line 2498
    :goto_0
    const-string v0, "key.wordlensactivity.saved.torch.on"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->az:Ljava/lang/Boolean;

    .line 2499
    const-string v0, "key.wordlensactivity.saved.zoom.enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aA:Ljava/lang/Boolean;

    .line 2500
    const-string v0, "key.wordlensactivity.saved.rotation.lock.video"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aB:Z

    .line 2501
    const-string v0, "key.wordlensactivity.saved.rotation.lock.snapshot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aC:Z

    .line 2509
    return-void

    .line 2493
    :cond_0
    invoke-static {v0}, Lcom/questvisual/wordlens/ag;->a(I)Lcom/questvisual/wordlens/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2170
    invoke-super {p0}, Landroid/support/v4/app/i;->onResume()V

    .line 2171
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    const-string v2, "wl_screen"

    invoke-static {v2, v0}, Lcom/questvisual/wordlens/e/a;->a(Ljava/lang/String;Z)V

    .line 2179
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->az:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 2181
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->az:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/a/b;->a(Z)V

    .line 2184
    :cond_2
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aA:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 2185
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->aA:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/a/b;->b(Z)V

    .line 2189
    :cond_3
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    sget-object v3, Lcom/questvisual/wordlens/ag;->a:Lcom/questvisual/wordlens/ag;

    if-eq v2, v3, :cond_9

    .line 2193
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    .line 2194
    iput-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->aw:Lcom/questvisual/wordlens/ag;

    .line 2202
    :goto_1
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    if-eqz v2, :cond_4

    .line 2203
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->f()Lcom/questvisual/wordlens/WordLensSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/questvisual/wordlens/WordLensActivity;->p:Lcom/questvisual/wordlens/n;

    invoke-virtual {v2, v3}, Lcom/questvisual/wordlens/WordLensSystem;->a(Landroid/opengl/GLSurfaceView;)V

    .line 2206
    :cond_4
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    if-eqz v2, :cond_5

    .line 2207
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->q:Lcom/questvisual/wordlens/cb;

    invoke-virtual {v2}, Lcom/questvisual/wordlens/cb;->b()V

    .line 2210
    :cond_5
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->N()V

    .line 2212
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->M()V

    .line 2214
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->L()V

    .line 2216
    invoke-virtual {p0}, Lcom/questvisual/wordlens/WordLensActivity;->hasWindowFocus()Z

    move-result v2

    .line 2217
    if-eqz v2, :cond_6

    .line 2219
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    if-eqz v2, :cond_6

    .line 2223
    iget-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    invoke-direct {p0, v2, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ag;Z)V

    .line 2224
    iput-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    .line 2231
    :cond_6
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2232
    sget v3, Lcom/questvisual/wordlens/at;->KEY_DEV_DEBUG_DRAW:I

    invoke-virtual {p0, v3}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2233
    sget v4, Lcom/questvisual/wordlens/at;->KEY_DEV_DISABLE_HINTS:I

    invoke-virtual {p0, v4}, Lcom/questvisual/wordlens/WordLensActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2234
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    iput-boolean v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->af:Z

    .line 2235
    invoke-direct {p0}, Lcom/questvisual/wordlens/WordLensActivity;->p()V

    .line 2241
    const-string v0, "word.lens"

    invoke-virtual {p0, v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2242
    const-string v2, "key.tutorial.shown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2243
    if-eqz v0, :cond_a

    sget-object v0, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    :goto_2
    invoke-direct {p0, v0}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ci;)V

    .line 2245
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-virtual {v0}, Lcom/questvisual/wordlens/cf;->a()V

    goto/16 :goto_0

    .line 2198
    :cond_9
    sget-object v2, Lcom/questvisual/wordlens/ag;->b:Lcom/questvisual/wordlens/ag;

    iput-object v2, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    goto :goto_1

    .line 2243
    :cond_a
    sget-object v0, Lcom/questvisual/wordlens/ci;->a:Lcom/questvisual/wordlens/ci;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2453
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2454
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2455
    const-string v0, "QV"

    const-string v1, "Skipping onSaveInstanceState. CPU not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :goto_0
    return-void

    .line 2461
    :cond_0
    invoke-static {}, Lcom/questvisual/wordlens/NativeWordLensUI;->a()Lcom/questvisual/wordlens/NativeWordLensUI;

    move-result-object v0

    .line 2463
    invoke-virtual {v0}, Lcom/questvisual/wordlens/NativeWordLensUI;->b()Lcom/questvisual/wordlens/ag;

    move-result-object v0

    .line 2464
    const-string v1, "key.wordlensactivity.saved.ui.mode"

    iget v0, v0, Lcom/questvisual/wordlens/ag;->d:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2466
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    if-eqz v0, :cond_1

    .line 2467
    const-string v0, "key.wordlensactivity.saved.torch.on"

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/b;->i()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2468
    const-string v0, "key.wordlensactivity.saved.zoom.enabled"

    iget-object v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->r:Lcom/questvisual/wordlens/a/b;

    invoke-virtual {v1}, Lcom/questvisual/wordlens/a/b;->l()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2471
    :cond_1
    const-string v0, "key.wordlensactivity.saved.rotation.lock.video"

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aB:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2472
    const-string v0, "key.wordlensactivity.saved.rotation.lock.snapshot"

    iget-boolean v1, p0, Lcom/questvisual/wordlens/WordLensActivity;->aC:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 851
    invoke-super {p0}, Landroid/support/v4/app/i;->onStart()V

    .line 852
    invoke-static {p0}, Lcom/questvisual/wordlens/e/a;->a(Landroid/content/Context;)V

    .line 853
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2392
    invoke-static {p0}, Lcom/questvisual/wordlens/e/a;->b(Landroid/content/Context;)V

    .line 2393
    invoke-super {p0}, Landroid/support/v4/app/i;->onStop()V

    .line 2394
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2274
    if-nez p1, :cond_1

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    if-eqz v0, :cond_4

    .line 2283
    iget-object v0, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    invoke-direct {p0, v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ag;Z)V

    .line 2284
    iput-object v6, p0, Lcom/questvisual/wordlens/WordLensActivity;->ay:Lcom/questvisual/wordlens/ag;

    move v0, v1

    .line 2290
    :goto_1
    const-string v3, "word.lens"

    invoke-virtual {p0, v3, v2}, Lcom/questvisual/wordlens/WordLensActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2292
    const-string v4, "key.tutorial.shown"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2294
    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->at:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/questvisual/wordlens/WordLensActivity;->av:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 2296
    sget-object v4, Lcom/questvisual/wordlens/ci;->d:Lcom/questvisual/wordlens/ci;

    invoke-direct {p0, v4}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/ci;)V

    .line 2299
    :cond_2
    iget-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    if-eqz v4, :cond_3

    .line 2300
    iget-object v4, p0, Lcom/questvisual/wordlens/WordLensActivity;->u:Lcom/questvisual/wordlens/cf;

    invoke-virtual {v4}, Lcom/questvisual/wordlens/cf;->a()V

    .line 2303
    :cond_3
    invoke-static {}, Lcom/questvisual/wordlens/WordLensSystem;->d()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    .line 2305
    const-string v0, "key.user.should.prompt.flurry"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2307
    if-eqz v0, :cond_0

    .line 2308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2309
    sget v4, Lcom/questvisual/wordlens/at;->flurry_opt_in:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2310
    sget v4, Lcom/questvisual/wordlens/at;->allow:I

    new-instance v5, Lcom/questvisual/wordlens/bn;

    invoke-direct {v5, p0, v3}, Lcom/questvisual/wordlens/bn;-><init>(Lcom/questvisual/wordlens/WordLensActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2321
    sget v4, Lcom/questvisual/wordlens/at;->deny:I

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2323
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2324
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2326
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2327
    const-string v3, "key.user.prompted.flurry"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2328
    const-string v1, "key.user.should.prompt.flurry"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
