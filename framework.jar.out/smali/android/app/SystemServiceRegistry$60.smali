.class final Landroid/app/SystemServiceRegistry$60;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/ThemeManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/ThemeManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 653
    const-string/jumbo v2, "theme"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 654
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThemeService;

    move-result-object v1

    .line 655
    .local v1, "service":Landroid/app/IThemeService;
    new-instance v2, Landroid/app/ThemeManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/ThemeManager;-><init>(Landroid/content/Context;Landroid/app/IThemeService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$60;->createService(Landroid/app/ContextImpl;)Landroid/app/ThemeManager;

    move-result-object v0

    return-object v0
.end method
