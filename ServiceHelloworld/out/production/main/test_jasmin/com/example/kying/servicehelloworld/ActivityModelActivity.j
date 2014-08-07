.bytecode 50.0
.class public synchronized com/example/kying/servicehelloworld/ActivityModelActivity
.super android/app/Activity

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public ActivityModel()V
aload 0
aconst_null
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onCreate(Landroid/os/Bundle;)V
L0:
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onStart()V
new java/lang/Double
dup
ldc2_w 2.0D
invokestatic java/lang/Math/random()D
dmul
invokestatic java/lang/Math/floor(D)D
invokespecial java/lang/Double/<init>(D)V
invokevirtual java/lang/Double/intValue()I
ifne L1
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onStop()V
new java/lang/Double
dup
ldc2_w 2.0D
invokestatic java/lang/Math/random()D
dmul
invokestatic java/lang/Math/floor(D)D
invokespecial java/lang/Double/<init>(D)V
invokevirtual java/lang/Double/intValue()I
ifne L2
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onRestart()V
goto L0
L2:
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onDestroy()V
return
L3:
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onPause()V
L1:
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onResume()V
new java/lang/Double
dup
ldc2_w 2.0D
invokestatic java/lang/Math/random()D
dmul
invokestatic java/lang/Math/floor(D)D
invokespecial java/lang/Double/<init>(D)V
invokevirtual java/lang/Double/intValue()I
ifne L3
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onStop()V
new java/lang/Double
dup
ldc2_w 2.0D
invokestatic java/lang/Math/random()D
dmul
invokestatic java/lang/Math/floor(D)D
invokespecial java/lang/Double/<init>(D)V
invokevirtual java/lang/Double/intValue()I
ifne L4
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onRestart()V
goto L0
L4:
aload 0
invokevirtual com/example/kying/servicehelloworld/ActivityModelActivity/onDestroy()V
return
.limit locals 1
.limit stack 6
.end method
