.class public final Landroid/content/pm/ActivityInfo$WindowLayout;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowLayout"
.end annotation


# instance fields
.field public final gravity:I

.field public final height:I

.field public final heightFraction:F

.field public final minHeight:I

.field public final minWidth:I

.field public final width:I

.field public final widthFraction:F


# direct methods
.method public constructor <init>(IFIFIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "widthFraction"    # F
    .param p3, "height"    # I
    .param p4, "heightFraction"    # F
    .param p5, "gravity"    # I
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput p1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 1012
    iput p2, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 1013
    iput p3, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 1014
    iput p4, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 1015
    iput p5, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 1016
    iput p6, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1017
    iput p7, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 1010
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 1020
    return-void
.end method
