package com.example.kying.servicehelloworld;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;


public class MyActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.my, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    //start MyService by same activity
    public void startNewService(View view){

        startService(new Intent(this, MyService.class));

    }

    //stop MyService by same activity
    public void stopNewService(View view) {

        stopService(new Intent(this, MyService.class));

    }

    //start traceGPS service by same activity
    public void startGPSService(View view) {
        //implicit intent
        Intent intent2 = new Intent();
        intent2.setAction("com.x.gps");
        //startService(new Intent(this, GPSService.class));
        startService(intent2);
    }

    //stop traceGPS service by same activity
    public void stopGPSService(View view) {
        stopService(new Intent(this, GPSTracker.class));
    }
}
