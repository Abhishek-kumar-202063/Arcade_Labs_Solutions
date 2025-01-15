gsutil cp gs://cloudhustlers/welcome.sh .
chmod +x welcome.sh
./welcome.sh


gcloud pubsub topics create sports_topic

gcloud pubsub topics create app_topic

gcloud pubsub subscriptions create app_subscription --topic=app_topic


gsutil cp gs://cloudhustlers/subscribe.sh .
chmod +x subscribe.sh
./subscribe.sh
