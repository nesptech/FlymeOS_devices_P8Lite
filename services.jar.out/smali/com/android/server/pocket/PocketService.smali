.class public Lcom/android/server/pocket/PocketService;
.super Lcom/android/server/SystemService;
.source "PocketService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pocket/PocketService$1;,
        Lcom/android/server/pocket/PocketService$2;,
        Lcom/android/server/pocket/PocketService$PocketHandler;,
        Lcom/android/server/pocket/PocketService$PocketObserver;,
        Lcom/android/server/pocket/PocketService$PocketServiceWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LIGHT_AMBIENT:I = 0x2

.field private static final LIGHT_POCKET:I = 0x1

.field private static final LIGHT_SENSOR_DELAY:I = 0x61a80

.field private static final LIGHT_UNKNOWN:I = 0x0

.field private static final POCKET_LIGHT_MAX_THRESHOLD:F = 3.0f

.field private static final PROXIMITY_NEGATIVE:I = 0x2

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x61a80

.field private static final PROXIMITY_UNKNOWN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/pocket/IPocketCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

.field private mInteractive:Z

.field private mLastLightState:I

.field private mLastProximityState:I

.field private final mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightMaxRange:F

.field private mLightRegistered:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightState:I

.field private mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

.field private mPending:Z

.field private final mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityMaxRange:F

.field private mProximityRegistered:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityState:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSystemBooted:Z

.field private mSystemReady:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pocket/PocketService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mSystemBooted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/pocket/PocketService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mSystemReady:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pocket/PocketService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pocket/PocketService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleSystemReady()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleUnregisterTimeout()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->setEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleAddCallback(Landroid/pocket/IPocketCallback;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleDispatchCallbacks()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleInteractiveChanged(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleLightSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleProximitySensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleRemoveCallback(Landroid/pocket/IPocketCallback;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0
    .param p1, "listen"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleSetListeningExternal(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleSystemBooted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/server/pocket/PocketService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    .line 131
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    .line 132
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    .line 138
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    .line 139
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    .line 361
    new-instance v1, Lcom/android/server/pocket/PocketService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pocket/PocketService$1;-><init>(Lcom/android/server/pocket/PocketService;)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 374
    new-instance v1, Lcom/android/server/pocket/PocketService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pocket/PocketService$2;-><init>(Lcom/android/server/pocket/PocketService;)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 146
    iput-object p1, p0, Lcom/android/server/pocket/PocketService;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 148
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pocket/PocketService$PocketHandler;-><init>(Lcom/android/server/pocket/PocketService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    .line 150
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 151
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 152
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/server/pocket/PocketService;->mProximityMaxRange:F

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    .line 156
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/server/pocket/PocketService;->mLightMaxRange:F

    .line 159
    :cond_1
    new-instance v1, Lcom/android/server/pocket/PocketService$PocketObserver;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pocket/PocketService$PocketObserver;-><init>(Lcom/android/server/pocket/PocketService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    .line 160
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pocket/PocketService$PocketObserver;->onChange(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    invoke-virtual {v1}, Lcom/android/server/pocket/PocketService$PocketObserver;->register()V

    .line 144
    return-void
.end method

.method private cleanUpCallbacksLocked(Landroid/pocket/IPocketCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 544
    iget-object v3, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 546
    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pocket/IPocketCallback;

    .line 547
    .local v0, "found":Landroid/pocket/IPocketCallback;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "found":Landroid/pocket/IPocketCallback;
    :cond_2
    monitor-exit v3

    .line 543
    return-void

    .line 544
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dispatchCallbacks()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 682
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    .line 683
    .local v0, "isDeviceInPocket":Z
    iget-boolean v1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 684
    if-nez v0, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 690
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeMessages(I)V

    .line 691
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessage(I)Z

    .line 681
    return-void

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 695
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 697
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "service"

    const-string/jumbo v3, "POCKET"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 699
    const-string/jumbo v2, "isDeviceInPocket"

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 700
    const-string/jumbo v2, "interactive"

    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 701
    const-string/jumbo v2, "proximityState"

    iget v3, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 702
    const-string/jumbo v2, "lastProximityState"

    iget v3, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 703
    const-string/jumbo v2, "proximityRegistered"

    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 704
    const-string/jumbo v2, "proximityMaxRange"

    iget v3, p0, Lcom/android/server/pocket/PocketService;->mProximityMaxRange:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 705
    const-string/jumbo v2, "lightState"

    iget v3, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 706
    const-string/jumbo v2, "lastLightState"

    iget v3, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 707
    const-string/jumbo v2, "lightRegistered"

    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 708
    const-string/jumbo v2, "lightMaxRange"

    iget v3, p0, Lcom/android/server/pocket/PocketService;->mLightMaxRange:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 694
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    sget-object v2, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 711
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    .line 712
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 711
    throw v2
.end method

.method private handleAddCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 569
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleDispatchCallbacks()V
    .locals 8

    .prologue
    .line 522
    iget-object v6, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 523
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 524
    .local v0, "N":I
    const/4 v2, 0x0

    .line 525
    .local v2, "cleanup":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 526
    iget-object v5, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pocket/IPocketCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    .local v1, "callback":Landroid/pocket/IPocketCallback;
    if-eqz v1, :cond_0

    .line 529
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v5

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 533
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "callback":Landroid/pocket/IPocketCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    if-eqz v2, :cond_2

    .line 538
    const/4 v5, 0x0

    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/server/pocket/PocketService;->cleanUpCallbacksLocked(Landroid/pocket/IPocketCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v6

    .line 521
    return-void

    .line 522
    .end local v0    # "N":I
    .end local v2    # "cleanup":Z
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private handleInteractiveChanged(Z)V
    .locals 1
    .param p1, "interactive"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    .line 589
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-eqz v0, :cond_0

    .line 591
    return-void

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mSystemBooted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mSystemReady:Z

    if-eqz v0, :cond_2

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->update()V

    .line 585
    return-void

    .line 594
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    .line 595
    return-void
.end method

.method private handleLightSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 602
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v1

    .line 604
    .local v1, "isDeviceInPocket":Z
    iget v5, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    iput v5, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    .line 612
    if-nez p1, :cond_1

    .line 614
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/pocket/PocketService;->mLightState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    .line 601
    :cond_0
    :goto_1
    return-void

    .line 615
    :cond_1
    :try_start_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v5, v5

    if-nez v5, :cond_3

    .line 617
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/pocket/PocketService;->mLightState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v4, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event: something went wrong, exception caught, e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/pocket/PocketService;->mLightState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    goto :goto_1

    .line 619
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_3
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 620
    .local v3, "value":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_4

    .line 621
    const/high16 v5, 0x40400000    # 3.0f

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_4

    move v2, v4

    .line 627
    .local v2, "isPoor":Z
    :cond_4
    if-eqz v2, :cond_6

    :goto_2
    iput v4, p0, Lcom/android/server/pocket/PocketService;->mLightState:I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 632
    .end local v2    # "isPoor":Z
    .end local v3    # "value":F
    :catchall_0
    move-exception v4

    .line 633
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v5

    if-eq v1, v5, :cond_5

    .line 634
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    .line 632
    :cond_5
    throw v4

    .line 627
    .restart local v2    # "isPoor":Z
    .restart local v3    # "value":F
    :cond_6
    const/4 v4, 0x2

    goto :goto_2
.end method

.method private handleProximitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v1

    .line 642
    .local v1, "isDeviceInPocket":Z
    iget v4, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    iput v4, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    .line 650
    if-nez p1, :cond_1

    .line 652
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    .line 639
    :cond_0
    :goto_1
    return-void

    .line 653
    :cond_1
    :try_start_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    if-nez v4, :cond_3

    .line 655
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v4, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event: something went wrong, exception caught, e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 670
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    goto :goto_1

    .line 657
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_3
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 658
    .local v3, "value":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v5, p0, Lcom/android/server/pocket/PocketService;->mProximityMaxRange:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    const/4 v2, 0x1

    .line 664
    .local v2, "isPositive":Z
    :goto_2
    if-eqz v2, :cond_6

    const/4 v4, 0x1

    :goto_3
    iput v4, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 669
    .end local v2    # "isPositive":Z
    .end local v3    # "value":F
    :catchall_0
    move-exception v4

    .line 670
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v5

    if-eq v1, v5, :cond_4

    .line 671
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    .line 669
    :cond_4
    throw v4

    .line 658
    .restart local v3    # "value":F
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isPositive":Z
    goto :goto_2

    .line 664
    :cond_6
    const/4 v4, 0x2

    goto :goto_3
.end method

.method private handleRemoveCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 577
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleSetListeningExternal(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 555
    if-eqz p1, :cond_1

    .line 559
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->registerSensorListeners()V

    .line 566
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    .line 554
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 564
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    goto :goto_0
.end method

.method private handleSystemBooted()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 511
    iput-boolean v1, p0, Lcom/android/server/pocket/PocketService;->mSystemBooted:Z

    .line 512
    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-eqz v3, :cond_0

    .line 513
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 514
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    .line 515
    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-eqz v3, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 516
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    .line 507
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v1, v2

    .line 515
    goto :goto_0
.end method

.method private handleSystemReady()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    iput-boolean v1, p0, Lcom/android/server/pocket/PocketService;->mSystemReady:Z

    .line 498
    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-eqz v3, :cond_0

    .line 499
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 500
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    .line 501
    iget-boolean v3, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-eqz v3, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 502
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    .line 493
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v1, v2

    .line 501
    goto :goto_0
.end method

.method private handleUnregisterTimeout()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 678
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 676
    return-void
.end method

.method private isDeviceInPocket()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 388
    iget v2, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    if-eqz v2, :cond_2

    .line 389
    iget v2, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    if-ne v2, v0, :cond_1

    .line 390
    iget v2, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    if-ne v2, v0, :cond_0

    .line 389
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 390
    goto :goto_0

    :cond_1
    move v0, v1

    .line 389
    goto :goto_0

    .line 392
    :cond_2
    iget v2, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    if-ne v2, v0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private registerSensorListeners()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->startListeningForProximity()V

    .line 419
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->startListeningForLight()V

    .line 417
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    if-eq p1, v0, :cond_0

    .line 397
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    .line 398
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 399
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->update()V

    .line 395
    :cond_0
    return-void
.end method

.method private startListeningForLight()V
    .locals 5

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot detect light sensor, sensor is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void

    .line 474
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    .line 476
    iget-object v3, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const v4, 0x61a80

    .line 475
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    .line 460
    :cond_1
    return-void
.end method

.method private startListeningForProximity()V
    .locals 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot detect proximity sensor, sensor is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 443
    iget-object v3, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const v4, 0x61a80

    .line 442
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    .line 427
    :cond_1
    return-void
.end method

.method private stopListeningForLight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    if-eqz v0, :cond_0

    .line 487
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    iput v2, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    .line 488
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 489
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    .line 481
    :cond_0
    return-void
.end method

.method private stopListeningForProximity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    if-eqz v0, :cond_0

    .line 454
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    iput v2, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    .line 455
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 456
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    .line 448
    :cond_0
    return-void
.end method

.method private unregisterSensorListeners()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->stopListeningForProximity()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->stopListeningForLight()V

    .line 422
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-eqz v0, :cond_2

    .line 405
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    return-void

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 403
    :goto_0
    return-void

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeMessages(I)V

    .line 413
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->registerSensorListeners()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    .prologue
    .line 274
    iget-object v5, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 275
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    .line 276
    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 277
    .local v0, "callbacksSize":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 278
    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 280
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/pocket/IPocketCallback;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-interface {v4, v6, v7}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to invoke sendPocketState: "

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 274
    .end local v0    # "callbacksSize":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 281
    .restart local v0    # "callbacksSize":I
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_3
    sget-object v4, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Death object while invoking sendPocketState: "

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 288
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 290
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 291
    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    invoke-virtual {v4}, Lcom/android/server/pocket/PocketService$PocketObserver;->unregister()V

    .line 273
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 254
    sparse-switch p1, :sswitch_data_0

    .line 262
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Un-handled boot phase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 256
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 259
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 269
    const-string/jumbo v0, "pocket"

    new-instance v1, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;-><init>(Lcom/android/server/pocket/PocketService;Lcom/android/server/pocket/PocketService$PocketServiceWrapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pocket/PocketService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 268
    return-void
.end method
