.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;,
        Landroid/app/AlarmManager$ListenerWrapper;,
        Landroid/app/AlarmManager$OnAlarmListener;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_IDLE_UNTIL:I = 0x10

.field public static final FLAG_STANDALONE:I = 0x1

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final POWER_OFF_ALARM_HANDLED:Ljava/lang/String; = "1"

.field public static final POWER_OFF_ALARM_HANDLE_FILE:Ljava/lang/String; = "/persist/alarm/powerOffAlarmHandle"

.field public static final POWER_OFF_ALARM_INSTANCE_FILE:Ljava/lang/String; = "/persist/alarm/powerOffAlarmInstance"

.field public static final POWER_OFF_ALARM_NOT_HANDLED:Ljava/lang/String; = "0"

.field public static final POWER_OFF_ALARM_NOT_SET:Ljava/lang/String; = "0"

.field public static final POWER_OFF_ALARM_SET:Ljava/lang/String; = "1"

.field public static final POWER_OFF_ALARM_SET_FILE:Ljava/lang/String; = "/persist/alarm/powerOffAlarmSet"

.field public static final RTC:I = 0x1

.field public static final RTC_POWEROFF_WAKEUP:I = 0x5

.field public static final RTC_WAKEUP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L

.field private static sWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            "Landroid/app/AlarmManager$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlwaysExact:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static synthetic -get0(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;
    .locals 1

    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 303
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    .line 305
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 300
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static readPowerOffAlarmFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1089
    const/4 v3, 0x0

    .line 1090
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1092
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1097
    .local v2, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1099
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 1105
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v2

    .line 1100
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 1101
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1094
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v2, "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1095
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1097
    if-eqz v3, :cond_1

    .line 1099
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1100
    :catch_2
    move-exception v1

    .line 1101
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1096
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1097
    :goto_3
    if-eqz v3, :cond_2

    .line 1099
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1096
    :cond_2
    :goto_4
    throw v5

    .line 1100
    :catch_3
    move-exception v1

    .line 1101
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1096
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1094
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p11, "listenerTag"    # Ljava/lang/String;
    .param p12, "targetHandler"    # Landroid/os/Handler;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 683
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gez v5, :cond_0

    .line 691
    const-wide/16 p2, 0x0

    .line 694
    :cond_0
    const/16 v16, 0x0

    .line 695
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-eqz p10, :cond_3

    .line 696
    const-class v6, Landroid/app/AlarmManager;

    monitor-enter v6

    .line 697
    :try_start_0
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 698
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    .line 701
    :cond_1
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;

    move-object/from16 v16, v0

    .line 703
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-nez v16, :cond_2

    .line 704
    new-instance v21, Landroid/app/AlarmManager$ListenerWrapper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v2}, Landroid/app/AlarmManager$ListenerWrapper;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .local v21, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :try_start_1
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    move-object/from16 v0, p10

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v21

    .end local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_2
    monitor-exit v6

    .line 709
    if-eqz p12, :cond_4

    move-object/from16 v20, p12

    .line 710
    .local v20, "handler":Landroid/os/Handler;
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager$ListenerWrapper;->setHandler(Landroid/os/Handler;)V

    .line 714
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .end local v20    # "handler":Landroid/os/Handler;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v17, p11

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-interface/range {v5 .. v19}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 682
    return-void

    .line 696
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit v6

    throw v5

    .line 709
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    .restart local v20    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 716
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .end local v20    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v4

    .line 717
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 696
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :catchall_1
    move-exception v5

    move-object/from16 v16, v21

    .end local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    goto :goto_1
.end method

.method public static writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1115
    const/4 v2, 0x0

    .line 1117
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1123
    if-eqz v3, :cond_0

    .line 1125
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 1114
    .end local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 1126
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/lang/Exception;
    goto :goto_0

    .line 1120
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 1123
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_1

    .line 1125
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1126
    :catch_2
    move-exception v1

    .restart local v1    # "e1":Ljava/lang/Exception;
    goto :goto_1

    .line 1122
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    .line 1123
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_3
    if-eqz v2, :cond_2

    .line 1125
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1122
    :cond_2
    :goto_4
    throw v4

    .line 1126
    :catch_3
    move-exception v1

    .restart local v1    # "e1":Ljava/lang/Exception;
    goto :goto_4

    .line 1122
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 1120
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .prologue
    .line 958
    if-nez p1, :cond_0

    .line 959
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "cancel() called with a null OnAlarmListener"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 962
    :cond_0
    const/4 v0, 0x0

    .line 963
    .local v0, "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    const-class v2, Landroid/app/AlarmManager;

    monitor-enter v2

    .line 964
    :try_start_0
    sget-object v1, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 965
    sget-object v1, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 969
    if-nez v0, :cond_2

    .line 970
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized alarm listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void

    .line 963
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 974
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlarmManager$ListenerWrapper;->cancel()V

    .line 957
    return-void
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 935
    if-nez p1, :cond_1

    .line 936
    const-string/jumbo v1, "cancel() called with a null PendingIntent"

    .line 937
    .local v1, "msg":Ljava/lang/String;
    iget v2, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 938
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "cancel() called with a null PendingIntent"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_0
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "cancel() called with a null PendingIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void

    .line 946
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .prologue
    .line 1055
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1076
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNextWakeFromIdleTime()J
    .locals 4

    .prologue
    .line 1034
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p9, "targetHandler"    # Landroid/os/Handler;
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 676
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 677
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 676
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 675
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 643
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 644
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v13, p9

    .line 643
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 642
    return-void
.end method

.method public set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "tag"    # Ljava/lang/String;
    .param p9, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p10, "targetHandler"    # Landroid/os/Handler;
    .param p11, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 659
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 660
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 659
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 658
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 385
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 384
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 383
    return-void
.end method

.method public set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 413
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 414
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 413
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 412
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 15
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 636
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    .line 635
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 634
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 866
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v8, 0x4

    .line 867
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 866
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 865
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 580
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 581
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 580
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 579
    return-void
.end method

.method public setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 595
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 596
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 595
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 594
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 920
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x4

    .line 921
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 920
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 919
    return-void
.end method

.method public setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 606
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 607
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 606
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 605
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 816
    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 817
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    .line 816
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 815
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 475
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v8, 0x0

    .line 476
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    .line 475
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 474
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 985
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1008
    return-void

    .line 1012
    :cond_0
    iget v3, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 1013
    const/4 v1, 0x0

    .line 1015
    .local v1, "hasTimeZone":Z
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v3

    invoke-virtual {v3, p1}, Llibcore/util/ZoneInfoDB$TzData;->hasTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1019
    .end local v1    # "hasTimeZone":Z
    :goto_0
    if-nez v1, :cond_1

    .line 1020
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timezone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not an Olson ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1025
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v3, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1006
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1016
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "hasTimeZone":Z
    :catch_1
    move-exception v2

    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 526
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 527
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v9, p6

    .line 526
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 525
    return-void
.end method

.method public setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p8, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 541
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 542
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    .line 541
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 540
    return-void
.end method
