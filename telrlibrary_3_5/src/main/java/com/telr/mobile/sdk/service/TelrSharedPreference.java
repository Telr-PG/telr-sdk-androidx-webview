package com.telr.mobile.sdk.service;

import android.content.Context;
import android.content.SharedPreferences;

public class TelrSharedPreference {
    private static final String TAG = "TelrSharedPreference";


    private static TelrSharedPreference telrSharedPreference;

    private SharedPreferences sharedPreferences;

    public static TelrSharedPreference getInstance(Context context) {
        if (telrSharedPreference == null) {
            telrSharedPreference = new TelrSharedPreference(context);
        }
        return telrSharedPreference;
    }


    public TelrSharedPreference(Context context) {
        sharedPreferences = context.getSharedPreferences(TAG,Context.MODE_PRIVATE);
    }


    public void saveDataToPreference(String key,String value) {
        SharedPreferences.Editor prefsEditor = sharedPreferences.edit();
//            prefsEditor.clear();
        prefsEditor .putString(key, value);
        prefsEditor.commit();
    }

    public String getDataFromPreference(String key) {
        if (sharedPreferences!= null) {
            return sharedPreferences.getString(key, "");
        }
        return "";
    }

}
