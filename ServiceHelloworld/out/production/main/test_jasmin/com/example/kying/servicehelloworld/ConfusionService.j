.bytecode 50.0
.class public synchronized com/example/kying/servicehelloworld/ConfusionService
.super android/app/Service
.inner class private final ServiceHandler inner com/example/kying/servicehelloworld/ConfusionService$ServiceHandler outer com/example/kying/servicehelloworld/ConfusionService

.field private 'mServiceHandler' Lcom/example/kying/servicehelloworld/ConfusionService$ServiceHandler;

.field private 'mServiceLooper' Landroid/os/Looper;

.method public <init>()V
aload 0
invokespecial android/app/Service/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public onCreate()V
new android/os/HandlerThread
dup
ldc "ServiceStartArguments"
bipush 10
invokespecial android/os/HandlerThread/<init>(Ljava/lang/String;I)V
astore 1
aload 1
invokevirtual android/os/HandlerThread/start()V
aload 0
aload 1
invokevirtual android/os/HandlerThread/getLooper()Landroid/os/Looper;
putfield com/example/kying/servicehelloworld/ConfusionService/mServiceLooper Landroid/os/Looper;
aload 0
new com/example/kying/servicehelloworld/ConfusionService$ServiceHandler
dup
aload 0
aload 0
getfield com/example/kying/servicehelloworld/ConfusionService/mServiceLooper Landroid/os/Looper;
invokespecial com/example/kying/servicehelloworld/ConfusionService$ServiceHandler/<init>(Lcom/example/kying/servicehelloworld/ConfusionService;Landroid/os/Looper;)V
putfield com/example/kying/servicehelloworld/ConfusionService/mServiceHandler Lcom/example/kying/servicehelloworld/ConfusionService$ServiceHandler;
return
.limit locals 2
.limit stack 5
.end method

.method public onDestroy()V
aload 0
ldc "service done"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
aload 0
ldc "Service Confusion"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/example/kying/servicehelloworld/ConfusionService/mServiceHandler Lcom/example/kying/servicehelloworld/ConfusionService$ServiceHandler;
invokevirtual com/example/kying/servicehelloworld/ConfusionService$ServiceHandler/obtainMessage()Landroid/os/Message;
astore 4
aload 4
iload 3
putfield android/os/Message/arg1 I
aload 0
getfield com/example/kying/servicehelloworld/ConfusionService/mServiceHandler Lcom/example/kying/servicehelloworld/ConfusionService$ServiceHandler;
aload 4
invokevirtual com/example/kying/servicehelloworld/ConfusionService$ServiceHandler/sendMessage(Landroid/os/Message;)Z
pop
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method
