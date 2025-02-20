.class public Lcom/qti/phone/subsidylock/SubsidyDeviceController;
.super Ljava/lang/Object;
.source "SubsidyDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mNumPhones:I

.field private mRadioState:[I

.field private mRetrySettingPrimaryCard:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubsidyDevHandler:Landroid/os/Handler;

.field private mSubsidyDevHandlerThread:Landroid/os/HandlerThread;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioState(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRadioState:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetrySettingPrimaryCard(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRetrySettingPrimaryCard:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRetrySettingPrimaryCard(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRetrySettingPrimaryCard:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecideAndSetPrimarySlot(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->decideAndSetPrimarySlot(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSimStateChanged(Lcom/qti/phone/subsidylock/SubsidyDeviceController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->handleSimStateChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAirplaneModeOn(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->isAirplaneModeOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRadioOnForAllSlots(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->isRadioOnForAllSlots()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPrimaryCardIfRequired(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->setPrimaryCardIfRequired()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRetrySettingPrimaryCard:Z

    .line 88
    new-instance v0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;-><init>(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)V

    iput-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    const-string v1, "Started SubsidyDeviceController"

    const-string v2, "SubsidyDeviceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandlerThread:Landroid/os/HandlerThread;

    .line 51
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;

    iget-object v2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;-><init>(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    .line 55
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 59
    :cond_0
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    iput v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mNumPhones:I

    .line 61
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRadioState:[I

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 70
    invoke-direct {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->handleSimStates()V

    return-void
.end method

.method private decideAndSetPrimarySlot(Z)V
    .locals 8

    .line 178
    const-string v0, "decideAndSetPrimarySlot"

    const-string v1, "SubsidyDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->isRadioOnForAllSlots()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->isAirplaneModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRetrySettingPrimaryCard:Z

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Radio is not Powered On, mRetrySettingPrimaryCard is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRetrySettingPrimaryCard:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, -0x1

    move v4, v0

    move v5, v4

    move v6, v3

    .line 188
    :goto_0
    iget v7, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mNumPhones:I

    if-ge v4, v7, :cond_3

    .line 189
    iget-object v7, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->isPrimaryCapableSimCard(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "primarySimCount: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ddsChanged: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eqz v5, :cond_6

    if-eq v5, v2, :cond_5

    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_4
    if-nez p1, :cond_7

    .line 201
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->setPrimaryCardOnSlot(Landroid/content/Context;I)V

    .line 202
    invoke-direct {p0, v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->showSubsidyCardSelectionPopup(I)V

    goto :goto_1

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->setPrimaryCardOnSlot(Landroid/content/Context;I)V

    goto :goto_1

    .line 211
    :cond_6
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->saveIccIdMccMncOfSimCardsInSP(Landroid/content/Context;)V

    .line 215
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    if-eq p1, v3, :cond_7

    .line 217
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 218
    invoke-virtual {p1, v3}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 223
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    if-ne v5, v1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v0

    :goto_2
    invoke-static {p0, v2}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->setAllowUsertoSetDDS(Landroid/content/Context;Z)V

    return-void
.end method

.method private handleSimStateChanged(II)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->isValidSlotId(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleSimStateChanged: invalid slot index: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SubsidyDeviceController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->isPreferredSimState(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private handleSimStates()V
    .locals 2

    const/4 v0, 0x0

    .line 74
    :goto_0
    iget v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->handleSimStateChanged(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 2

    .line 227
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isPreferredSimState(I)Z
    .locals 1

    .line 0
    const/4 p0, 0x5

    const/4 v0, 0x1

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isRadioOnForAllSlots()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    iget v2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mNumPhones:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mRadioState:[I

    aget v2, v2, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private setPrimaryCardIfRequired()V
    .locals 2

    .line 156
    const-string v0, "SubsidyDeviceController"

    const-string v1, "setPrimaryCardIfRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->didSimCardsChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->decideAndSetPrimarySlot(Z)V

    :cond_0
    return-void
.end method

.method private showSubsidyCardSelectionPopup(I)V
    .locals 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showing subdisy cards selection popup, defaultSlotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30800000

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    const-string v1, "subsidy_primary_slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 250
    const-string v0, "dispose"

    const-string v1, "SubsidyDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandlerThread:Landroid/os/HandlerThread;

    .line 256
    iput-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->mSubsidyDevHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    const-string v0, "dispose: Exception: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
