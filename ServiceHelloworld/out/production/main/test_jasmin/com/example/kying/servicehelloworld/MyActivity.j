.bytecode 50.0
.class public synchronized com/example/kying/servicehelloworld/MyActivity
.super com/example/kying/servicehelloworld/ActivityModelActivity

.method public <init>()V
aload 0
invokespecial com/example/kying/servicehelloworld/ActivityModelActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/example/kying/servicehelloworld/ActivityModelActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903040
invokevirtual com/example/kying/servicehelloworld/MyActivity/setContentView(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
aload 0
invokevirtual com/example/kying/servicehelloworld/MyActivity/getMenuInflater()Landroid/view/MenuInflater;
ldc_w 2131165184
aload 1
invokevirtual android/view/MenuInflater/inflate(ILandroid/view/Menu;)V
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 1
invokeinterface android/view/MenuItem/getItemId()I 0
ldc_w 2131230724
if_icmpne L0
iconst_1
ireturn
L0:
aload 0
aload 1
invokespecial com/example/kying/servicehelloworld/ActivityModelActivity/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public startGPSService(Landroid/view/View;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "com.x.gps"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/example/kying/servicehelloworld/MyActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
.limit locals 3
.limit stack 2
.end method

.method public startNewService(Landroid/view/View;)V
aload 0
new android/content/Intent
dup
aload 0
ldc com/example/kying/servicehelloworld/MyService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/example/kying/servicehelloworld/MyActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public stopGPSService(Landroid/view/View;)V
aload 0
new android/content/Intent
dup
aload 0
ldc com/example/kying/servicehelloworld/GPSTracker
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/example/kying/servicehelloworld/MyActivity/stopService(Landroid/content/Intent;)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method public stopNewService(Landroid/view/View;)V
aload 0
new android/content/Intent
dup
aload 0
ldc com/example/kying/servicehelloworld/MyService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/example/kying/servicehelloworld/MyActivity/stopService(Landroid/content/Intent;)Z
pop
return
.limit locals 2
.limit stack 5
.end method
