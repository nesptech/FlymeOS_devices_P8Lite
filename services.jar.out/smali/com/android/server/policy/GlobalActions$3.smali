.class Lcom/android/server/policy/GlobalActions$3;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1354
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1353
    if-eqz v2, :cond_2

    .line 1355
    :cond_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1357
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1351
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1359
    :cond_2
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1362
    const-string/jumbo v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    .line 1362
    if-eqz v2, :cond_1

    .line 1364
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1365
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1366
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method
