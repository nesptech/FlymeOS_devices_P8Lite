.class Lcom/android/server/net/NetworkStatsService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 856
    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 857
    .local v0, "uid":I
    if-ne v0, v2, :cond_0

    return-void

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 862
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsService;->-wrap5(Lcom/android/server/net/NetworkStatsService;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    :try_start_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 852
    return-void

    .line 863
    :catchall_0
    move-exception v1

    .line 864
    :try_start_3
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 863
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 859
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method
