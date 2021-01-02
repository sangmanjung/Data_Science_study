SELECT concat(name,'(',substr(occupation,1,1),')') as N FROM occupations
ORDER BY N;

SELECT concat('There are a total of ',count(occupation),' ',lower(occupation),'s.') FROM occupations
GROUP BY occupation -- occupation 기준으로 doctor,singer,actor,professor의 count를 알고자 함
ORDER BY count(occupation),lower(occupation); -- 1st ordering: count, 2nd ordering: occupation
