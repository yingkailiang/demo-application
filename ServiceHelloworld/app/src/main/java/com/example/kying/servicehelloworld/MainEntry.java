package com.example.kying.servicehelloworld;

import android.os.Bundle;
import android.view.View;
/**
 * Created by kailiangying on 8/4/14.
 *
 * Android dummy main function
 * set entry point for android application
 */
public class MainEntry {
    public static void main(String args[]){
        MyActivity ma = new MyActivity();
        /* framework lib test */
        Bundle bd = new Bundle();
        ma.onCreate(bd);
        View view = null;
        ma.startGPSService(view);

        /* no framework lib test */
        EventEntry ee = new EventEntry();
        ee.getInfo("hello");
    }
}
