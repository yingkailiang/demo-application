.bytecode 50.0
.class synchronized com/example/kying/servicehelloworld/GPSTracker$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/example/kying/servicehelloworld/GPSTracker/showSettingsAlert()V
.inner class inner com/example/kying/servicehelloworld/GPSTracker$2

.field final synthetic 'this$0' Lcom/example/kying/servicehelloworld/GPSTracker;

.method <init>(Lcom/example/kying/servicehelloworld/GPSTracker;)V
aload 0
aload 1
putfield com/example/kying/servicehelloworld/GPSTracker$2/this$0 Lcom/example/kying/servicehelloworld/GPSTracker;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
return
.limit locals 3
.limit stack 1
.end method
