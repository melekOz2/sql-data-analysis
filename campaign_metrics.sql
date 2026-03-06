SELECT
    ad_date,
    campaign_id,
    SUM(spend) AS total_spend, 
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(value) AS total_value,
    SUM(spend) / NULLIF(SUM(clicks), 0) AS cpc, -- cost per click (tıklama başına maliyet)
    (SUM(spend) / NULLIF(SUM(impressions), 0)) * 1000 AS cpm,-- cost per mille (1000 gösterim başına maliyet)
    (SUM(clicks) / NULLIF(SUM(impressions), 0)) * 100 AS ctr, -- click through rate (tıklama oranı)
    ((SUM(value) - SUM(spend)) / NULLIF(SUM(spend), 0)) * 100 AS romi -- return on investment (yatırım getirisi)
FROM facebook_ads_basic_daily
GROUP BY ad_date, campaign_id -- verileri tarih ve kampanya bazında gruplandırıyoruz
ORDER BY ad_date, campaign_id;


 