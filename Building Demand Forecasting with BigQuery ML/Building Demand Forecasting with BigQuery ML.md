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

# Building Demand Forecasting with BigQuery ML || `[GSP852]`

### Run the following Commands in Cloud Shell

```bash
gsutil cp gs://cloudhustlers/gsp852-1.sh .

sudo chmod +x gsp852-1.sh

./gsp852-1.sh
```

### Create the table

```bash
SELECT
 DATE(starttime) AS trip_date,
 start_station_id,
 COUNT(*) AS num_trips
FROM
 `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
 starttime BETWEEN DATE('2014-01-01') AND ('2016-01-01')
 AND start_station_id IN (521,435,497,293,519)
GROUP BY
 start_station_id,
 trip_date
```

- Select `SAVE RESULTS` .

- In the dropdown menu, select `BigQuery Table`.

- For Dataset select `bqmlforecast`.

- Add a Table name `training_data` .

- Click _EXPORT_.

### Run again the following Commands in Cloud Shell

```bash
gsutil cp gs://cloudhustlers/gsp852-2.sh .

sudo chmod +x gsp852-2.sh

./gsp852-2.sh
```

### Congratulations for completing the Lab !


</div>
<img src="https://raw.githubusercontent.com/Abhishek-kumar-202063/content/f9a8642976ea21cd234c91239431e41f05264842/gif/baby.gif" align="right" width="400">

<p align="left">
  <a href="https://youtu.be/8bQOoeeif7A">
    <img src="https://img.youtube.com/vi/8bQOoeeif7A/maxresdefault.jpg" width="500">
  </a>
</p>
