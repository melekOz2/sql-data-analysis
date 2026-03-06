# SQL Data Analysis Project

This project analyzes advertising campaign data using PostgreSQL.

## Dataset
The analysis is based on the **facebook_ads_basic_daily** dataset which contains daily marketing campaign performance data.

## Metrics Calculated
In this project, the following marketing performance metrics were calculated:

- **Total Spend** – total advertising cost
- **Total Impressions** – number of ad views
- **Total Clicks** – number of clicks
- **Total Value** – generated value from campaigns
- **CPC (Cost Per Click)**
- **CPM (Cost Per Mille – cost per 1000 impressions)**
- **CTR (Click Through Rate)**
- **ROMI (Return on Marketing Investment)**

## SQL Concepts Used
- `GROUP BY`
- `SUM()`
- `NULLIF()` to prevent division by zero
- calculated metrics using SQL expressions
- query optimization and readable SQL formatting

## Query Example

```sql
SELECT
    ad_date,
    campaign_id,
    SUM(spend) AS total_spend,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(value) AS total_value
FROM facebook_ads_basic_daily
GROUP BY ad_date, campaign_id
ORDER BY ad_date, campaign_id;

## Tools
- PostgreSQL
- DBeaver
- GitHub

## Author
Melike Emine Özyavuz
