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

# VPC Flow Logs - Analyzing Network Traffic || `[GSP212]`

### Run the following Commands in Cloud Shell
```bash
export ZONE=
```

```bash
gsutil cp gs://cloudhustlers/gsp212.sh .

sudo chmod +x gsp212.sh

./gsp212.sh
```

* Go to `allow-http-ssh` Firewall from [here](https://console.cloud.google.com/net-security/firewall-manager/firewall-policies/details/allow-http-ssh?)

* Go to `Create sink` from [here](https://console.cloud.google.com/logs/router/sink?)

* For `Sink Name`, type or paste `vpc-flows` 

* Paste the following in `Build inclusion filter` and Change `PROJECT_ID`

```bash
resource.type="gce_subnetwork"
log_name="projects/PROJECT_ID/logs/compute.googleapis.com%2Fvpc_flows"
```

### Run again the following Commands in Cloud Shell

```bash
export MY_SERVER=$(gcloud compute instances describe web-server --zone=$ZONE \
  --format='get(networkInterfaces[0].accessConfigs[0].natIP)')

for ((i=1;i<=50;i++)); do curl $MY_SERVER; done
```

### Congratulations for Completing the Lab !

</div>
<img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/baby.gif" align="right" width="400">

<p align="left">
  <a href="https://youtu.be/8bQOoeeif7A">
    <img src="https://img.youtube.com/vi/8bQOoeeif7A/maxresdefault.jpg" width="500">
  </a>
</p>
