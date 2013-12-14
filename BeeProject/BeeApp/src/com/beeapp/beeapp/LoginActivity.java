package com.beeapp.beeapp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;

public class LoginActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);
		
		// Set the signup link to clickable otherwise it can't be clicked
		TextView tv = (TextView) this.findViewById(R.id.signupLink);		
		tv.setClickable(true);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.login, menu);
		return true;
	}
	
	public void onSignupClicked(View v) {
		Log.d("debug", "onSignupClicked");
		Intent i = new Intent(this, SignupActivity.class);
		startActivity(i); 
	}
	
	public void onLoginClicked(View v) {
		Log.d("debug", "onLoginClicked");
		// TODO: handle authentication
		Intent i = new Intent(this, MainActivity.class);
		startActivity(i); 
	}

}
