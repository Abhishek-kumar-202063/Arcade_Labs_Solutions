
gsutil cp gs://cloudhustlers/welcome.sh .
chmod +x welcome.sh
./welcome.sh

gcloud compute networks create staging --subnet-mode=custom --project=$DEVSHELL_PROJECT_ID

gcloud compute networks create development --project=$DEVSHELL_PROJECT_ID

gcloud compute networks subnets create dev-1 \
    --network=development \
    --region=$REGION \
    --range=10.1.0.0/24 \
    --project=$DEVSHELL_PROJECT_ID


gsutil cp gs://cloudhustlers/subscribe.sh .
chmod +x subscribe.sh
./subscribe.sh
