provider "google" {
   credentials = "${file("./creds/serviceaccount.json")}"
   project     = "tranquil-symbol-462714-p1" # REPLACE WITH YOUR PROJECT ID
   region      = "US"
 }