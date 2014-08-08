package com.example.kying.asynctask;

import android.os.Bundle;

/**
 * Created by kying on 8/7/14.
 */
public class MainEntry {
    public static void main(String args[]){
        Bundle db = new Bundle();
        MyActivity ma = new MyActivity();
        ma.onCreate(db);
    }
}
