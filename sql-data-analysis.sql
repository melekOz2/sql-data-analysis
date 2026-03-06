select ad_date , spend , clicks , spend/ NULLIF(clicks,0) as  "spend/clicks" /* sadece spend / clicks i from a kadar yazsaydım hata verirdi yani koşulu eklemeseydim hata verirdi o yüzden NULLIF(CLİCKS,0) EKLEDİM */
from facebook_ads_basic_daily
where clicks > 0
order by ad_date;
