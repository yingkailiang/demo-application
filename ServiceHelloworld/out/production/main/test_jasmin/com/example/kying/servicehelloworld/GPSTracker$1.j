.bytecode 50.0
.class synchronized com/example/kying/servicehelloworld/GPSTracker$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/example/kying/servicehelloworld/GPSTracker/showSettingsAlert()V
.inner class inner com/example/kying/servicehelloworld/GPSTracker$1

.field final synthetic 'this$0' Lcom/example/kying/servicehelloworld/GPSTracker;

.method <init>(Lcom/example/kying/servicehelloworld/GPSTracker;)V
aload 0
aload 1
putfield com/example/kying/servicehelloworld/GPSTracker$1/this$0 Lcom/example/kying/servicehelloworld/GPSTracker;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
new android/content/Intent
dup
ldc "android.settings.LOCATION_SOURCE_SETTINGS"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 0
getfield com/example/kying/servicehelloworld/GPSTracker$1/this$0 Lcom/example/kying/servicehelloworld/GPSTracker;
invokestatic com/example/kying/servicehelloworld/GPSTracker/access$000(Lcom/example/kying/servicehelloworld/GPSTracker;)Landroid/content/Context;
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 3
.end method
