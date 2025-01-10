![API Gateway Banner](https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/12.gif)

<div align="center">

# Connect with Cloud Hustlers Community
</div>

<p align="center">
  <a href="https://whatsapp.cloudhustlers.in" target="_blank">
    <img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/whatsapp.gif" alt="WhatsApp" width="80">
  </a>
  <a href="https://in.linkedin.com/company/cloud-hustlers" target="_blank">
    <img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/linkedin%20gif.gif" alt="LinkedIn" width="80">
  </a>
  <a href="https://www.youtube.com/@CloudHustlers" target="_blank">
    <img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/youtube.png" alt="Youtube" width="80">
  </a>
  <a href="https://instagram.com/cloud_hustlers" target="_blank">
    <img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/insta.gif" alt="Instagram" width="80">
  </a>
  <a href="https://discord.gg/MdbVq7BJNd" target="_blank">
    <img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/discord.gif" alt="GitHub" width="80">
  </a>
</p>

# Analyzing Findings with Security Command Center || `[GSP1164]`

### Run the following Commands in Cloud Shell

```bash
export ZONE=
```

```bash
gsutil cp gs://cloudhustlers/gsp1164-1.sh .

sudo chmod +x gsp1164-1.sh

./gsp1164-1.sh

echo "SCC LINK : https://console.cloud.google.com/security/command-center/config/continuous-exports/pubsub?project=$PROJECT_ID"
```

### Set Up Continuous Export

# Click SCC Link in Terminal

#### In `Incognito Window`:
### Follow these steps in the browser

* EXPORT NAME: `export-findings-pubsub`
* EXPORT DESCRIPTION: `Continuous exports of Findings to Pub/Sub and BigQuery`
* PROJECT: `YOUR_PROJECT_ID`
* TOPIC: Select `export-findings-pubsub-topic` from dropdown
* FINDINGS QUERY: Automatically populated
* Click `SAVE`

### Run again the following Commands in Cloud Shell

```bash
gsutil cp gs://cloudhustlers/gsp1164-2.sh .

sudo chmod +x gsp1164-2.sh

./gsp1164-2.sh
```
### Click Pull Button Link in Terminal

#### Follow these steps in the browser

* Click the `Pull` button in the Google Cloud Console.

### Continue with Cloud Shell commands

```bash
bq query --apilog=/dev/null --use_legacy_sql=false  \
"SELECT finding_id,event_time,finding.category FROM continuous_export_dataset.findings"

echo "----------------------"
echo "                      "

echo "CLOUD STORAGE LINK : https://console.cloud.google.com/storage/create-bucket?project=$PROJECT_ID"

echo "----------------------"
echo "                      "

echo "SSC LINK : https://console.cloud.google.com/security/command-center/findingsv2;filter=state%3D%22ACTIVE%22%0AAND%20NOT%20mute%3D%22MUTED%22;timeRange=allTime?project=$PROJECT_ID"

echo "----------------------"
echo "                      "
echo "BIGQUERY LINK : https://console.cloud.google.com/bigquery?project=$PROJECT_ID&ws=!1m0"

echo "----------------------"
echo "                      "

echo "BUCKET NAME : scc-export-bucket-$PROJECT_ID"

echo "----------------------"
echo "                      "

```

#### Note: It may take `10+ minutes` for these findings to be generated. Rerun the above command if you don't receive a similar output.

#### YOU CAN DO FURTHER STEPS TILL THE TIME
* Go to `Create a bucket` from [here](https://console.cloud.google.com/storage/create-bucket)

* For BUCKET NAME type `scc-export-bucket-`YOUR_PROJECT_ID and CLICK `CONTINUE`
* `REGION` : *REGION GIVEN IN INSTRUCTIONS* > CLICK `CREATE` 
* FOR POP UP "Public access will be prevented" > CLICK `CONFIRM`

* Now go to `Export findings to Cloud Storage` from [here](https://console.cloud.google.com/security/command-center/export)

* Set the filename to `findings.jsonl`

* Go to `BigQuery Studio` from [here](https://console.cloud.google.com/bigquery)

* Set the TABLE NAME to `old_findings`

* Now paste in the following schema

```json
[
  {
    "mode": "NULLABLE",
    "name": "resource",
    "type": "JSON"
  },
  {
    "mode": "NULLABLE",
    "name": "finding",
    "type": "JSON"
  }
]
```

### Congratulations for completing the Lab !

</div>
<img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/baby.gif" align="right" width="400">

<p align="left">
  <a href="https://youtu.be/8bQOoeeif7A">
    <img src="https://img.youtube.com/vi/8bQOoeeif7A/maxresdefault.jpg" width="500">
  </a>
</p>
