-- 1) Give the total number of recordings in this table
select count(time) from graded_classwork;

-- 2) The number of packages listed in this table?
select count(package) from graded_classwork where package notnull;

-- 3) How many times the package "Rcpp" was downloaded?
select count(package) from graded_classwork where package = 'Rcpp';

-- 4) How many recordings are from China ("CN")?
select count(country) from graded_classwork where country = 'CN';

-- 5) Give the package name and how many times they're downloaded. Order by the 2nd column descently.
select graded_classwork.package, count(graded_classwork.package) as download_count from graded_classwork group by graded_classwork.package, graded_classwork.time order by graded_classwork.time desc;

-- 6) Give the package ranking (based on how many times it was downloaded) during 9AM to 11AM
select count(graded_classwork.package) from graded_classwork where time between 9 and 11;

-- 7) How many recordings are from China ("CN") or Japan("JP") or Singapore ("SG")?
select country, count(country) from graded_classwork where country in('CN', 'JP','SG') group by graded_classwork.country;


-- 8) Print the countries whose downloaded are more than the downloads from China ("CN")
select country, count(country) from graded_classwork group by graded_classwork.country having country > (select count(country) from graded_classwork where country='CN');

-- 9) Print the average length of the package name of all the UNIQUE packages


-- 10) Get the package whose downloading count ranks 2nd (print package name and it's download count).


-- 11) Print the name of the package whose download count is bigger than 1000.


-- 12) The field "r_os" is the operating system of the users. -- Here we would like to know what main system we have (ignore version number), the relevant counts, and the proportion (in percentage).

