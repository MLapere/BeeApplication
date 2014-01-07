package com.beeapp.beeapp;

import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class DiseaseImageAdapter extends ArrayAdapter<JSONObject> {
	
	Context context;
	List<JSONObject> list;

	public DiseaseImageAdapter(Context context, int resource, List<JSONObject> list) {
		super(context, resource, list);
		this.context = context;
		this.list = list;
	}

	@Override
	  public View getView(int position, View convertView, ViewGroup parent) {
	    LayoutInflater inflater = (LayoutInflater) context
	        .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	    View rowView = inflater.inflate(R.layout.disease_list_layout, parent, false);
	    TextView textView = (TextView) rowView.findViewById(R.id.diseaseName);
	    ImageView imageView = (ImageView) rowView.findViewById(R.id.diseaseImage);
	    imageView.setImageResource(R.drawable.ic_launcher);
	    try {
			textView.setText(list.get(position).getString("name"));
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    // Change the icon for Windows and iPhone
	    /*
	    String s = list[position];
	    if (s.startsWith("iPhone")) {
	      imageView.setImageResource(R.drawable.no);
	    } else {
	      imageView.setImageResource(R.drawable.ok);
	    }
		*/
	    return rowView;
	  }

}
