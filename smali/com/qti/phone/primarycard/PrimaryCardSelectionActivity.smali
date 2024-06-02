.class public Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;
.super Landroid/app/Activity;
.source "PrimaryCardSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOkButton:Landroid/widget/Button;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSubscriptionsRadioGroup(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSimName(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->getSimName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    new-instance v0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;-><init>(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;)V

    iput-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 154
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrimaryCardSelect"

    const-string v2, "SecurityException while reading subInfo records"

    .line 156
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0d002e

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    instance-of v0, p1, Landroid/widget/RadioButton;

    const-string v1, "PrimaryCardSelect"

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 99
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mOkButton:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Radio button clicked for slot: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set primary card to slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->setSlotAsPrimary(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f09009a

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;

    .line 42
    iget-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 44
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f09008c

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mOkButton:Landroid/widget/Button;

    .line 59
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "onPause"

    const-string v1, "PrimaryCardSelect"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception in unregisterReceiver"

    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "primary_slot_from_algorithm"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, primarySlotFromAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrimaryCardSelect"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    const/4 v1, 0x0

    move v2, v1

    .line 75
    :goto_0
    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mSubscriptionsRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 77
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->mOkButton:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method
