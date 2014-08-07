.bytecode 50.0
.class public synchronized com/example/kying/servicehelloworld/MainEntry
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static main([Ljava/lang/String;)V
new com/example/kying/servicehelloworld/MyActivity
dup
invokespecial com/example/kying/servicehelloworld/MyActivity/<init>()V
astore 1
aload 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
invokevirtual com/example/kying/servicehelloworld/MyActivity/onCreate(Landroid/os/Bundle;)V
aload 1
aconst_null
invokevirtual com/example/kying/servicehelloworld/MyActivity/startGPSService(Landroid/view/View;)V
new com/example/kying/servicehelloworld/EventEntry
dup
invokespecial com/example/kying/servicehelloworld/EventEntry/<init>()V
ldc "he"
invokevirtual com/example/kying/servicehelloworld/EventEntry/getInfo(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
