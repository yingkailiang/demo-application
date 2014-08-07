.bytecode 50.0
.class public synchronized com/example/kying/servicehelloworld/GPSTracker
.super android/app/Service
.implements android/location/LocationListener
.inner class inner com/example/kying/servicehelloworld/GPSTracker$1
.inner class inner com/example/kying/servicehelloworld/GPSTracker$2

.field private static final 'MIN_DISTANCE_CHANGE_FOR_UPDATES' J = 10L


.field private static final 'MIN_TIME_BW_UPDATES' J = 60000L


.field 'canGetLocation' Z

.field 'isGPSEnabled' Z

.field 'isNetworkEnabled' Z

.field 'latitude' D

.field 'location' Landroid/location/Location;

.field protected 'locationManager' Landroid/location/LocationManager;

.field 'longitude' D

.field private final 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/app/Service/<init>()V
aload 0
iconst_0
putfield com/example/kying/servicehelloworld/GPSTracker/isGPSEnabled Z
aload 0
iconst_0
putfield com/example/kying/servicehelloworld/GPSTracker/isNetworkEnabled Z
aload 0
iconst_0
putfield com/example/kying/servicehelloworld/GPSTracker/canGetLocation Z
aload 0
aload 1
putfield com/example/kying/servicehelloworld/GPSTracker/mContext Landroid/content/Context;
aload 0
invokevirtual com/example/kying/servicehelloworld/GPSTracker/getLocation()Landroid/location/Location;
pop
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/example/kying/servicehelloworld/GPSTracker;)Landroid/content/Context;
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public canGetLocation()Z
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/canGetLocation Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLatitude()D
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
ifnull L0
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
invokevirtual android/location/Location/getLatitude()D
putfield com/example/kying/servicehelloworld/GPSTracker/latitude D
L0:
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/latitude D
dreturn
.limit locals 1
.limit stack 3
.end method

.method public getLocation()Landroid/location/Location;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/mContext Landroid/content/Context;
ldc "location"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/location/LocationManager
putfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ldc "gps"
invokevirtual android/location/LocationManager/isProviderEnabled(Ljava/lang/String;)Z
putfield com/example/kying/servicehelloworld/GPSTracker/isGPSEnabled Z
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ldc "network"
invokevirtual android/location/LocationManager/isProviderEnabled(Ljava/lang/String;)Z
putfield com/example/kying/servicehelloworld/GPSTracker/isNetworkEnabled Z
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/isGPSEnabled Z
ifne L3
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/isNetworkEnabled Z
istore 4
L1:
iload 4
ifne L3
L6:
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
areturn
L3:
aload 0
iconst_1
putfield com/example/kying/servicehelloworld/GPSTracker/canGetLocation Z
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/isNetworkEnabled Z
ifeq L4
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ldc "network"
ldc2_w 60000L
ldc_w 10.0F
aload 0
invokevirtual android/location/LocationManager/requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
ldc "Network"
ldc "Network"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ifnull L4
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ldc "network"
invokevirtual android/location/LocationManager/getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
putfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
ifnull L4
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
invokevirtual android/location/Location/getLatitude()D
putfield com/example/kying/servicehelloworld/GPSTracker/latitude D
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
invokevirtual android/location/Location/getLongitude()D
putfield com/example/kying/servicehelloworld/GPSTracker/longitude D
L4:
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/isGPSEnabled Z
ifeq L6
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
ifnonnull L6
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ldc "gps"
ldc2_w 60000L
ldc_w 10.0F
aload 0
invokevirtual android/location/LocationManager/requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
ldc "GPS Enabled"
ldc "GPS Enabled"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ifnull L6
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ldc "gps"
invokevirtual android/location/LocationManager/getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
putfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
ifnull L6
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
invokevirtual android/location/Location/getLatitude()D
putfield com/example/kying/servicehelloworld/GPSTracker/latitude D
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
invokevirtual android/location/Location/getLongitude()D
putfield com/example/kying/servicehelloworld/GPSTracker/longitude D
L5:
goto L6
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
.limit locals 5
.limit stack 6
.end method

.method public getLongitude()D
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
ifnull L0
aload 0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/location Landroid/location/Location;
invokevirtual android/location/Location/getLongitude()D
putfield com/example/kying/servicehelloworld/GPSTracker/longitude D
L0:
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/longitude D
dreturn
.limit locals 1
.limit stack 3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
return
.limit locals 4
.limit stack 0
.end method

.method public showSettingsAlert()V
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/mContext Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
ldc "GPS is settings"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "GPS is not enabled. Do you want to go to settings menu?"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "Settings"
new com/example/kying/servicehelloworld/GPSTracker$1
dup
aload 0
invokespecial com/example/kying/servicehelloworld/GPSTracker$1/<init>(Lcom/example/kying/servicehelloworld/GPSTracker;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "Cancel"
new com/example/kying/servicehelloworld/GPSTracker$2
dup
aload 0
invokespecial com/example/kying/servicehelloworld/GPSTracker$2/<init>(Lcom/example/kying/servicehelloworld/GPSTracker;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public stopUsingGPS()V
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
ifnull L0
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker/locationManager Landroid/location/LocationManager;
aload 0
invokevirtual android/location/LocationManager/removeUpdates(Landroid/location/LocationListener;)V
L0:
return
.limit locals 1
.limit stack 2
.end method
