.class public Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_ImsSms"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIms:Z

.field private mImsSmsEnabled:Z

.field private mImsSmsFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p3, v3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 53
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEnabled:Z

    .line 65
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "ImsSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v0, p1, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 70
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 72
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 72
    invoke-static {v1, p2, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p1, p3, p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 75
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->registerNewMessageNotificationActionHandler(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCdmaMo()Z
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImsSmsFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 144
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    .line 134
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const-string/jumbo v0, "3gpp"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "3gpp2"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 152
    .local v0, "responseArray":[I
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 153
    aget v1, v0, v3

    if-ne v1, v4, :cond_1

    .line 154
    const-string/jumbo v1, "RIL_ImsSms"

    const-string/jumbo v2, "IMS is registered!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 160
    :goto_0
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    .line 162
    const-string/jumbo v1, "unknown"

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "RIL_ImsSms"

    const-string/jumbo v2, "IMS format was unknown!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 149
    :cond_0
    return-void

    .line 157
    :cond_1
    const-string/jumbo v1, "RIL_ImsSms"

    const-string/jumbo v2, "IMS is NOT registered!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 376
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    .line 94
    return-void
.end method

.method public enableSendSmsOverIms(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEnabled:Z

    .line 432
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "getFormat should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "format"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p13, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p14, "messageUri"    # Landroid/net/Uri;
    .param p15, "fullMessageText"    # Ljava/lang/String;
    .param p16, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 109
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 121
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 124
    :cond_0
    const-string/jumbo v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMS State query failed with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 230
    const-string/jumbo v4, "RIL_ImsSms"

    const-string/jumbo v5, "ImsSMSDispatcher:injectSmsPdu"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 238
    .local v3, "msg":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v4

    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v4, v5, :cond_3

    .line 240
    :cond_0
    if-nez v3, :cond_1

    .line 241
    const-string/jumbo v4, "RIL_ImsSms"

    const-string/jumbo v5, "injectSmsPdu: createFromPdu returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    if-eqz p3, :cond_2

    .line 244
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V

    .line 246
    :cond_2
    return-void

    .line 249
    :cond_3
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v0, p3, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 251
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v4, "3gpp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    const-string/jumbo v4, "RIL_ImsSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImsSMSDispatcher:injectSmsText Sending msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 253
    const-string/jumbo v6, ", format="

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 253
    const-string/jumbo v6, "to mGsmInboundSmsHandler"

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 229
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_4
    :goto_0
    return-void

    .line 255
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_5
    const-string/jumbo v4, "3gpp2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 256
    const-string/jumbo v4, "RIL_ImsSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImsSMSDispatcher:injectSmsText Sending msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    const-string/jumbo v6, ", format="

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    const-string/jumbo v6, "to mCdmaInboundSmsHandler"

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RIL_ImsSms"

    const-string/jumbo v5, "injectSmsPdu failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    if-eqz p3, :cond_4

    .line 269
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 270
    :catch_1
    move-exception v2

    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_6
    :try_start_2
    const-string/jumbo v4, "RIL_ImsSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid pdu format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz p3, :cond_4

    .line 263
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    return v0
.end method

.method public isImsSmsEnabled()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEnabled:Z

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 186
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 276
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 280
    .local v6, "oldFormat":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v11, v10, :cond_0

    .line 281
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "newFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 286
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 287
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "old format matched new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    .line 289
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 290
    return-void

    .line 282
    .end local v5    # "newFormat":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 292
    .restart local v5    # "newFormat":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "old format matched new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 294
    return-void

    .line 299
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v4

    .line 304
    .local v4, "map":Ljava/util/HashMap;
    const-string/jumbo v10, "scAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "destAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 305
    const-string/jumbo v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 306
    const-string/jumbo v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "destPort"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 304
    :goto_1
    if-nez v10, :cond_6

    .line 308
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1, v10, v11, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 310
    return-void

    .line 305
    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    .line 306
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 304
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 312
    :cond_6
    const-string/jumbo v10, "scAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 313
    .local v8, "scAddr":Ljava/lang/String;
    const-string/jumbo v10, "destAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    .local v1, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 317
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string/jumbo v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 318
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "sms failed was text"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string/jumbo v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 321
    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 322
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    .line 323
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 325
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    .line 351
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .end local v9    # "text":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string/jumbo v10, "smsc"

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string/jumbo v10, "pdu"

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 357
    .local v3, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 358
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 275
    return-void

    .line 324
    .end local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 327
    :cond_9
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_5
    const/4 v11, 0x0

    .line 328
    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_3

    .line 329
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 331
    .end local v9    # "text":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 332
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "sms failed was data"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string/jumbo v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 334
    .local v0, "data":[B
    const-string/jumbo v10, "destPort"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 336
    .local v2, "destPort":Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 337
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 340
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    .line 338
    :goto_6
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 341
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    goto :goto_3

    .line 340
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_c
    const/4 v10, 0x0

    goto :goto_6

    .line 343
    :cond_d
    const-string/jumbo v10, "RIL_ImsSms"

    const-string/jumbo v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 346
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    .line 344
    :goto_7
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto/16 :goto_3

    .line 346
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    .line 355
    .end local v0    # "data":[B
    .end local v2    # "destPort":Ljava/lang/Integer;
    .end local v7    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto/16 :goto_4
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 202
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "sendSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 208
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "sendSmsByPstn should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 362
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I

    .prologue
    .line 215
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "sendText"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 214
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_0
.end method

.method public shouldSendSmsOverIms()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 453
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 454
    const v5, 0x1120081

    .line 453
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 455
    .local v3, "sendSmsOn1x":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 456
    .local v0, "currentCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 457
    .local v2, "currentVoiceNetwork":I
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 459
    .local v1, "currentDataNetwork":I
    const-string/jumbo v4, "RIL_ImsSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " voice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 460
    const-string/jumbo v6, " call state = "

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v3, :cond_0

    .line 465
    const/16 v4, 0xe

    if-ne v1, v4, :cond_0

    .line 466
    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 467
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v4, :cond_0

    .line 468
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsSMSDispatcher;->enableSendSmsOverIms(Z)V

    .line 469
    return v7

    .line 472
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 86
    const-string/jumbo v0, "RIL_ImsSms"

    const-string/jumbo v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 85
    return-void
.end method
