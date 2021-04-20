provider "google" {
  
    credentials = file(abspath("../Yourserviceaccount.json"))  //change to your service account key       
    project = "dataprep-project-8216"       //change to your project id
    region  = "europe-west2"
    zone    = "europe-west2-a"
  }
