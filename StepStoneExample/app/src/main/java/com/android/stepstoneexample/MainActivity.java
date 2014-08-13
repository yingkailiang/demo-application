package com.android.stepstoneexample;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
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

    @Override
    protected void onResume() {
        super.onResume();

        // -------------- < SAMPLE CODE TO INVOKE PUBLIC ACTIVITY > ------------------
        /*

        This public activity is the step stone to invoke a private activity.

        To invoke this public activity from an outside application, code similar to
        follow might be used :

        Intent intent = new Intent("com.example.stepstone");

        Intent next_intent = new Intent("com.example.priv.action");
        next_intent.putExtra("msg", "hello from malicious app !");

        intent.putExtra("Next_Intent", next_intent);
        startActivity(intent);


        */
        // ---------------------------------------------------------------------------

        Intent intent = getIntent();

        if(intent != null) {

            // SOURCE :
            Intent intent1 = intent.getParcelableExtra("Next_Intent");

            if(intent1 != null) {

                try {

                    Log.d("AMIT", "Step stone - public activity");

                    // SINK :
                    startActivity(intent1);

                } catch (Exception e) {

                    Log.d("AMIT", e.getLocalizedMessage());
                }
            }

        }
    }
}
