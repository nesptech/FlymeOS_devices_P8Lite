.class final Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPermissionChangeListeners"
.end annotation


# static fields
.field private static final MSG_ON_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mPermissionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 20919
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20916
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 20915
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 20918
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 20948
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 20950
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20951
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20954
    .local v0, "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/content/pm/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20950
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20955
    :catch_0
    move-exception v2

    .line 20956
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Permission listener is dead"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 20959
    .end local v0    # "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 20960
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 20959
    throw v4

    .line 20960
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 20947
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    .prologue
    .line 20933
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 20932
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 20924
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 20923
    :goto_0
    return-void

    .line 20926
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 20927
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->handleOnPermissionsChanged(I)V

    goto :goto_0

    .line 20924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionsChanged(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 20942
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 20943
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 20941
    :cond_0
    return-void
.end method

.method public removeListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    .prologue
    .line 20938
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 20937
    return-void
.end method
