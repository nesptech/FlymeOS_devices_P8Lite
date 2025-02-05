.class public Lcom/android/server/policy/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$1;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$2;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"


# instance fields
.field private mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mConfirmed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field mVrModeEnabled:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->saveSetting()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 363
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$2;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$H;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    const v1, 0x10e009b

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    return-void
.end method

.method private getNavBarExitDuration()J
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v2, 0x10a0024

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 93
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 184
    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 180
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 4

    .prologue
    .line 351
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 354
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 355
    const/16 v2, 0x300

    .line 354
    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 359
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 360
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    return-void
.end method

.method private saveSetting()V
    .locals 5

    .prologue
    .line 115
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "confirmed"

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 117
    const-string/jumbo v3, "immersive_mode_confirmations"

    .line 119
    const/4 v4, -0x2

    .line 116
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    return-void

    .line 115
    :cond_0
    const/4 v1, 0x0

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error saving confirmations, mConfirmed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    return-void
.end method

.method public getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    .line 206
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 208
    const v2, 0x10500a3

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 209
    const/4 v2, -0x2

    .line 210
    const/16 v3, 0x31

    .line 206
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 189
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 192
    const/16 v3, 0x7de

    .line 193
    const v4, 0x1000100

    .line 197
    const/4 v5, -0x3

    move v2, v1

    .line 189
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 198
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 199
    const-string/jumbo v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    const v1, 0x1030301

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 201
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 202
    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public immersiveModeChangedLw(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z
    .param p4, "navBarEmpty"    # Z

    .prologue
    const/4 v4, 0x1

    .line 140
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 141
    if-eqz p2, :cond_2

    .line 142
    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .line 145
    .local v0, "disabled":Z
    if-nez v0, :cond_0

    .line 146
    iget-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    if-eqz v1, :cond_1

    .line 139
    .end local v0    # "disabled":Z
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local v0    # "disabled":Z
    :cond_1
    if-eqz p3, :cond_0

    .line 148
    iget-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez v1, :cond_0

    .line 149
    if-nez p4, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 154
    .end local v0    # "disabled":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public loadSetting(I)V
    .locals 5
    .param p1, "currentUserId"    # I

    .prologue
    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    .line 98
    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mCurrentUserId:I

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    const-string/jumbo v3, "immersive_mode_confirmations"

    .line 104
    const/4 v4, -0x2

    .line 102
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "confirmed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading confirmations, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPowerKeyDown(ZJZZ)Z
    .locals 6
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z
    .param p5, "navBarEmpty"    # Z

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_3

    .line 168
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    .line 170
    :goto_0
    return v0

    .line 166
    :cond_3
    iput-wide p2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_0
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 128
    const-string/jumbo v2, "vrmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    .line 129
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 132
    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
