.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;
    }
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2528
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2530
    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2531
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 2529
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5
    .param p1, "array"    # [Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2641
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2642
    return v4

    .line 2644
    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-boolean v0, p1, v1

    .line 2645
    .local v0, "value":Z
    if-eqz v0, :cond_1

    .line 2646
    return v2

    .line 2644
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2649
    .end local v0    # "value":Z
    :cond_2
    return v4
.end method


# virtual methods
.method synthetic -com_android_server_AppOpsService$ClientRestrictionState_lambda$1(I)V
    .locals 1
    .param p1, "changedCode"    # I

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->-wrap0(Lcom/android/server/AppOpsService;I)V

    .line 0
    return-void
.end method

.method public binderDied()V
    .locals 9

    .prologue
    .line 2616
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    .line 2617
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v6}, Lcom/android/server/AppOpsService;->-get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit v7

    .line 2619
    return-void

    .line 2621
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2622
    .local v5, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 2623
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 2624
    .local v4, "restrictions":[Z
    array-length v3, v4

    .line 2625
    .local v3, "restrictionCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2626
    aget-boolean v6, v4, v2

    if-eqz v6, :cond_1

    .line 2627
    move v0, v2

    .line 2628
    .local v0, "changedCode":I
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;

    invoke-direct {v8, p0, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;-><init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2625
    .end local v0    # "changedCode":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2622
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2632
    .end local v2    # "j":I
    .end local v3    # "restrictionCount":I
    .end local v4    # "restrictions":[Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 2615
    return-void

    .line 2616
    .end local v1    # "i":I
    .end local v5    # "userCount":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2636
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2581
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 2582
    return v2

    .line 2584
    :cond_0
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 2585
    .local v1, "restrictions":[Z
    if-nez v1, :cond_1

    .line 2586
    return v2

    .line 2588
    :cond_1
    aget-boolean v4, v1, p1

    if-nez v4, :cond_2

    .line 2589
    return v2

    .line 2591
    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v4, :cond_3

    .line 2592
    return v3

    .line 2594
    :cond_3
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2595
    .local v0, "perUserExclusions":[Ljava/lang/String;
    if-nez v0, :cond_4

    .line 2596
    return v3

    .line 2598
    :cond_4
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_0
    return v2

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2611
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2602
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2604
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2605
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2601
    :cond_0
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2536
    const/4 v0, 0x0

    .line 2538
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 2539
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 2542
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v3, :cond_5

    .line 2543
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 2544
    .local v2, "userRestrictions":[Z
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 2545
    const/16 v3, 0x42

    new-array v2, v3, [Z

    .line 2546
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2548
    :cond_1
    if-eqz v2, :cond_3

    aget-boolean v3, v2, p1

    if-eq v3, p2, :cond_3

    .line 2549
    aput-boolean p2, v2, p1

    .line 2550
    if-nez p2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2551
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->remove(I)V

    .line 2552
    const/4 v2, 0x0

    .line 2554
    .end local v2    # "userRestrictions":[Z
    :cond_2
    const/4 v0, 0x1

    .line 2557
    :cond_3
    if-eqz v2, :cond_5

    .line 2558
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 2559
    .local v1, "noExcludedPackages":Z
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    if-eqz v1, :cond_6

    .line 2562
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v3, :cond_5

    .line 2563
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 2562
    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2577
    .end local v1    # "noExcludedPackages":Z
    :cond_5
    :goto_1
    return v0

    .line 2560
    .restart local v1    # "noExcludedPackages":Z
    :cond_6
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_0

    .line 2564
    :cond_7
    if-eqz v1, :cond_9

    .line 2565
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->remove(I)V

    .line 2566
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_8

    .line 2567
    iput-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2572
    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 2570
    :cond_9
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method
