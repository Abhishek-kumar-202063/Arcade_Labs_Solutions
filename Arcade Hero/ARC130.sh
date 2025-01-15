gsutil cp gs://cloudhustlers/welcome.sh .
chmod +x welcome.sh
./welcome.sh


bq --location=US mk --dataset $DEVSHELL_PROJECT_ID:sports

bq --location=US mk --dataset $DEVSHELL_PROJECT_ID:soccer

bq mk --table $DEVSHELL_PROJECT_ID:soccer.premiership


gsutil cp gs://cloudhustlers/subscribe.sh .
chmod +x subscribe.sh
./subscribe.sh
