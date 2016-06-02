.class Lcom/questvisual/wordlens/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/questvisual/wordlens/WordLensActivity;

.field private final synthetic b:Lcom/questvisual/wordlens/messaging/a;


# direct methods
.method constructor <init>(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/messaging/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/questvisual/wordlens/bo;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iput-object p2, p0, Lcom/questvisual/wordlens/bo;->b:Lcom/questvisual/wordlens/messaging/a;

    .line 2861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/questvisual/wordlens/bo;->a:Lcom/questvisual/wordlens/WordLensActivity;

    iget-object v1, p0, Lcom/questvisual/wordlens/bo;->b:Lcom/questvisual/wordlens/messaging/a;

    invoke-static {v0, v1}, Lcom/questvisual/wordlens/WordLensActivity;->a(Lcom/questvisual/wordlens/WordLensActivity;Lcom/questvisual/wordlens/messaging/a;)V

    .line 2864
    return-void
.end method
