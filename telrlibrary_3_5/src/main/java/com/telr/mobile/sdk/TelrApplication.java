package com.telr.mobile.sdk;

import android.app.Application;
import android.content.Context;
import android.util.Log;



public class TelrApplication extends Application {

    private static Context context;

    public void onCreate(){
        super.onCreate();
        Log.d("Divya","Context Started....");
        TelrApplication.context = getApplicationContext();
    }

    public static Context getContext(){
        return TelrApplication.context;
    }
}
