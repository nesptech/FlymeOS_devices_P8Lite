.class Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x50005

    .line 1044
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1043
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1042
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v1, 0x0

    .line 1049
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    .line 1051
    new-instance v0, Landroid/net/NetworkState;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const v1, 0x50005

    .line 1050
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1049
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1048
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    .line 1058
    new-instance v0, Landroid/net/NetworkState;

    move-object v2, p2

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const v1, 0x50005

    .line 1057
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1056
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1055
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x50005

    .line 1064
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1063
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1062
    return-void
.end method
