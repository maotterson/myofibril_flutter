package com.example.myofibril_flutter

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    private val CHANNEL = "intent"

      override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
          call, result ->
            if (call.method == "getStravaToken") {

                // todo add values into a config file
                const authUri = "https://www.strava.com/oauth/mobile/authorize";
                const clientId = "";
                const redirectUri = ""; 
                const responseType = "code";
                const approvalPrompt = "auto";
                const scope = "";

                val intentUri = Uri.parse(authUri)
                    .buildUpon()
                    .appendQueryParameter("client_id", clientId)
                    .appendQueryParameter("redirect_uri", redirectUri)
                    .appendQueryParameter("response_type", responseType)
                    .appendQueryParameter("approval_prompt", approvalPrompt)
                    .appendQueryParameter("scope", scope)
                    .build()

                val intent = Intent(Intent.ACTION_VIEW, intentUri)
                startActivity(intent)

          } else{
             result.notImplemented()
          }
        }
      }
}
