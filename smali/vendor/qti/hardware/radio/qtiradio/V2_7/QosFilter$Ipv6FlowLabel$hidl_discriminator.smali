.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel$hidl_discriminator;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# direct methods
.method public static final getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 222
    const-string p0, "Unknown"

    return-object p0

    .line 221
    :cond_0
    const-string p0, "value"

    return-object p0

    .line 220
    :cond_1
    const-string p0, "noinit"

    return-object p0
.end method
