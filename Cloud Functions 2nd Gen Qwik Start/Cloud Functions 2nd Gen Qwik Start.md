# Cloud Functions 2nd Gen: Qwik Start || `[GSP1089]`

* Go to `Audit Logs` from [here](https://console.cloud.google.com/iam-admin/audit?)

* Type or Paste in filter `Compute Engine API`

* Check the box next to `Compute Engine API`

* Now Check all `Admin Read` , `Data Read` & `Data Write`

### Run the following Commands in Cloud Shell

### Assign Variable

```bash
export ZONE=
```

```bash
gsutil cp gs://cloudhustlers/gsp1089-1.sh .

sudo chmod +x gsp1089-1.sh

./gsp1089-1.sh
```

### Now Check The Score Upto `Task 6` then Process Next, `Wait for 5-10 minutes`

```bash
gsutil cp gs://cloudhustlers/gsp1089-2.sh .

sudo chmod +x gsp1089-2.sh

./gsp1089-2.sh
```

### Congratulations for completing the Lab !
