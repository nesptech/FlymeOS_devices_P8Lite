.class Lcom/android/server/display/DisplayPowerController$5;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityPositive()V

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1129
    return-void
.end method
