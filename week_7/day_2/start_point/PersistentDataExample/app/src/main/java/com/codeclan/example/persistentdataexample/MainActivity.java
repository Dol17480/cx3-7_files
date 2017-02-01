package com.codeclan.example.persistentdataexample;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

/**
 * Created by sandy on 10/08/2016.
 */
public class MainActivity extends AppCompatActivity {
    EditText mTextToSave;
    Button mSaveButton;
    TextView mSavedText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mTextToSave = (EditText)findViewById(R.id.text_to_save);
        mSaveButton = (Button)findViewById(R.id.save_button);
        mSavedText = (TextView)findViewById(R.id.saved_text);
        mSavedText.setVisibility(View.INVISIBLE);

        mSaveButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String textToSave = mTextToSave.getText().toString();
                Log.d("PersistenceExample:", "Save Button Clicked!");
                Log.d("PersistenceExample:", "The text to save is: '" + textToSave + "'");
                mSaveButton.setVisibility(View.INVISIBLE);
                mTextToSave.setVisibility(View.INVISIBLE);
                mSavedText.setVisibility(View.VISIBLE);
                mSavedText.setText(textToSave);
            }
        });
    }

}
