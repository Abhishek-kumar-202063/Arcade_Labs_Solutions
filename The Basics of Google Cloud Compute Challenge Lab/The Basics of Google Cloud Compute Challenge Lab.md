# The Basics of Google Cloud Compute: Challenge Lab || [ARC120]

### Run the following Commands in Cloud Shell

```
echo -e "\033[32m$DEVSHELL_PROJECT_ID-bucket\033[0m"
```
**`Or Copy bucket Name given in the lab insrtuctions directly`**
### Now copy the green color highlited text and go to `Navitaion Menu > Cloud Storage > Buckets`
- Click `Create` and in name paste the highlited text that you copyed earlier.
- Click `Create` and if pop-up appear click `Confirm`
---

## Go back to Cloud Shell > Run in Cloud Shell

```bash
export ZONE=
```

```bash
gsutil cp gs://cloudhustlers/arc120.sh .

sudo chmod +x arc120.sh

./arc120.sh
```

### Congratulations for completing the Lab !