.class public Landroid/service/gesture/EdgeGestureManager;
.super Ljava/lang/Object;
.source "EdgeGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "EdgeGestureManager"

.field private static sInstance:Landroid/service/gesture/EdgeGestureManager;


# instance fields
.field private final mPs:Landroid/service/gesture/IEdgeGestureService;


# direct methods
.method private constructor <init>(Landroid/service/gesture/IEdgeGestureService;)V
    .locals 0
    .param p1, "ps"    # Landroid/service/gesture/IEdgeGestureService;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/service/gesture/EdgeGestureManager;->mPs:Landroid/service/gesture/IEdgeGestureService;

    .line 131
    return-void
.end method

.method public static getInstance()Landroid/service/gesture/EdgeGestureManager;
    .locals 4

    .prologue
    .line 142
    const-class v2, Landroid/service/gesture/EdgeGestureManager;

    monitor-enter v2

    .line 143
    :try_start_0
    sget-object v1, Landroid/service/gesture/EdgeGestureManager;->sInstance:Landroid/service/gesture/EdgeGestureManager;

    if-nez v1, :cond_0

    .line 144
    const-string/jumbo v1, "edgegestureservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 145
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/service/gesture/EdgeGestureManager;

    invoke-static {v0}, Landroid/service/gesture/IEdgeGestureService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gesture/IEdgeGestureService;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/service/gesture/EdgeGestureManager;-><init>(Landroid/service/gesture/IEdgeGestureService;)V

    sput-object v1, Landroid/service/gesture/EdgeGestureManager;->sInstance:Landroid/service/gesture/EdgeGestureManager;

    .line 147
    :cond_0
    sget-object v1, Landroid/service/gesture/EdgeGestureManager;->sInstance:Landroid/service/gesture/EdgeGestureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public isPresent()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/service/gesture/EdgeGestureManager;->mPs:Landroid/service/gesture/IEdgeGestureService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEdgeGestureActivationListener(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Z
    .locals 6
    .param p1, "listener"    # Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v2, p0, Landroid/service/gesture/EdgeGestureManager;->mPs:Landroid/service/gesture/IEdgeGestureService;

    if-nez v2, :cond_0

    .line 178
    const-string/jumbo v2, "EdgeGestureManager"

    const-string/jumbo v3, "Failed to set edge gesture activation listener: Service not present"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v5

    .line 182
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/service/gesture/EdgeGestureManager;->mPs:Landroid/service/gesture/IEdgeGestureService;

    invoke-static {p1}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->-get0(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/gesture/IEdgeGestureService;->registerEdgeGestureActivationListener(Landroid/service/gesture/IEdgeGestureActivationListener;)Landroid/service/gesture/IEdgeGestureHostCallback;

    move-result-object v0

    .line 183
    .local v0, "callback":Landroid/service/gesture/IEdgeGestureHostCallback;
    invoke-virtual {p1, v0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->setHostCallback(Landroid/service/gesture/IEdgeGestureHostCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const/4 v2, 0x1

    return v2

    .line 185
    .end local v0    # "callback":Landroid/service/gesture/IEdgeGestureHostCallback;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "EdgeGestureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set edge gesture activation listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v5
.end method

.method public updateEdgeGestureActivationListener(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
    .param p2, "positions"    # I

    .prologue
    .line 202
    iget-object v1, p0, Landroid/service/gesture/EdgeGestureManager;->mPs:Landroid/service/gesture/IEdgeGestureService;

    if-nez v1, :cond_0

    .line 203
    const-string/jumbo v1, "EdgeGestureManager"

    const-string/jumbo v2, "Failed to update edge gesture activation listener: Service not present"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/gesture/EdgeGestureManager;->mPs:Landroid/service/gesture/IEdgeGestureService;

    invoke-static {p1}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->-get0(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/gesture/IEdgeGestureActivationListener$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/service/gesture/IEdgeGestureService;->updateEdgeGestureActivationListener(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EdgeGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to update edge gesture activation listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
