.class Landroid/widget/AbsListView$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/AbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$performClick"    # Landroid/widget/AbsListView$PerformClick;

    .prologue
    .line 4048
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4051
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-set3(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4052
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4053
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4054
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4055
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-get8(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4050
    :cond_0
    :goto_0
    return-void

    .line 4055
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4056
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_0
.end method
