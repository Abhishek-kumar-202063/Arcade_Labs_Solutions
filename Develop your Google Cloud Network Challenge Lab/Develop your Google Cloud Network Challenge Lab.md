# Develop your Google Cloud Network: Challenge Lab || `[GSP321]`

### Run the following Commands in Cloud Shell

```bash
export ZONE=
```

```bash
gsutil cp gs://cloudhustlers/gsp321.sh .

sudo chmod +x gsp321.sh

./gsp321.sh
```

###For ` Task 8` Enable monitoring

1. Go to [Services and Ingress](https://console.cloud.google.com/kubernetes/discovery)
2. Copy `endpoint's`(wordpress) `IP address`.
3. Then go to -> [Uptime Checks](https://console.cloud.google.com/monitoring/uptime) -> `+ CREATE UPTIME CHECK`.
4. Fill in the details as provided below :

- Hostname : `endpoint's IP address` (without http and port number)

- Path : `/`

- Title: `Wordpress Uptime`

5. Leave everything as default. Click `Next` -> `Next` -> `Create`

### Congratulations for completing the Lab !
