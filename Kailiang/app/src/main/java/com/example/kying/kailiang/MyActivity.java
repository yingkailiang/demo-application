package com.example.kying.kailiang;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.apache.http.protocol.HTTP;


public class MyActivity extends Activity {
    public final static String EXTRA_MESSAGE = "com.example.myfirstapp.MESSAGE";
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
    /** Called when the user clicks the Send button */
    public void sendExplicitMessage(View view) {
        // Do something in response to button
        Intent intent = new Intent(this, DisplayMessageActivity.class); //send intent to Disp[ayMessageActivity activity
        EditText editText = (EditText) findViewById(R.id.edit_message);
        String message = editText.getText().toString();
        intent.putExtra(EXTRA_MESSAGE, message);
        startActivity(intent);
    }

    /* send implicit intent */
    public void sendImplicitMessage(View view) {
        // Create the text message with a string
        Intent sendIntent = new Intent();
        sendIntent.setAction(Intent.ACTION_SEND);
        EditText editText = (EditText) findViewById(R.id.edit_message);
        String message = editText.getText().toString();
        sendIntent.putExtra(EXTRA_MESSAGE, message);
        sendIntent.setType(HTTP.PLAIN_TEXT_TYPE); // "text/plain" MIME type

        // Verify that the intent will resolve to an activity
        if (sendIntent.resolveActivity(getPackageManager()) != null) {
            startActivity(sendIntent);
        } else {
            Context context = getApplicationContext();
            CharSequence text = "Fail to resolve activity";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        }
    }

    /* send implicit intent to service */
    public void requestGPSService(View view) {
        Intent intent = new Intent();
        intent.setAction("com.x.gps");
        startService(intent);

    }

    /* send implict intent to com.x.abc */
    public void requestABCService(View view) {
        Intent intent = new Intent();
        intent.setAction("com.x.abc");
        startService(intent);

    }

}
