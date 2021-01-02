SELECT round(long_w,4) FROM station
-- choose lat_n that the maximum value of lat_n from station if lat_n < 137.2345.
WHERE lat_n = (SELECT max(lat_n) FROM station WHERE lat_n < 137.2345)
