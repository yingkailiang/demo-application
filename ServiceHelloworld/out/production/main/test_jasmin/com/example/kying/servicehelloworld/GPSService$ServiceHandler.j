.bytecode 50.0
.class final synchronized com/example/kying/servicehelloworld/GPSService$ServiceHandler
.super android/os/Handler
.inner class private final ServiceHandler inner com/example/kying/servicehelloworld/GPSService$ServiceHandler outer com/example/kying/servicehelloworld/GPSService

.field final synthetic 'this$0' Lcom/example/kying/servicehelloworld/GPSService;

.method public <init>(Lcom/example/kying/servicehelloworld/GPSService;Landroid/os/Looper;)V
aload 0
aload 1
putfield com/example/kying/servicehelloworld/GPSService$ServiceHandler/this$0 Lcom/example/kying/servicehelloworld/GPSService;
aload 0
aload 2
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
return
.limit locals 3
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L1 to L4 using L3
.catch all from L5 to L6 using L3
ldc2_w 5000L
invokestatic java/lang/System/currentTimeMillis()J
ladd
lstore 2
L7:
invokestatic java/lang/System/currentTimeMillis()J
lload 2
lcmp
ifge L8
aload 0
monitorenter
L0:
aload 0
lload 2
invokestatic java/lang/System/currentTimeMillis()J
lsub
invokevirtual java/lang/Object/wait(J)V
L1:
aload 0
monitorexit
L4:
goto L7
L3:
astore 5
L5:
aload 0
monitorexit
L6:
aload 5
athrow
L8:
aload 0
getfield com/example/kying/servicehelloworld/GPSService$ServiceHandler/this$0 Lcom/example/kying/servicehelloworld/GPSService;
aload 1
getfield android/os/Message/arg1 I
invokevirtual com/example/kying/servicehelloworld/GPSService/stopSelf(I)V
return
L2:
astore 4
goto L1
.limit locals 6
.limit stack 5
.end method
