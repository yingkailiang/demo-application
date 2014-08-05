package com.example.kying.servicehelloworld;

import android.os.Bundle;
/**
 * Created by kailiangying on 8/4/14.
 *
 * Android dummy main function
 * set entry point for android application
 */
public class MainEntry {
    public static void main(String args[]){
        MyActivity ma = new MyActivity();
        Bundle bd = new Bundle();
        ma.onCreate(bd);
    }
}
