SELECT 
--TOP(3)

ProductName AS Title,
'1000e3_admin' AS 'AUTHOR ID',
REPLACE(ProductName, ' ', '-') AS 'URL SLUG',
'publish' AS 'STATUS',
Description AS DESCRIPTION,
NULL AS 'EXCERPT',
ProductId AS SKU,
NULL AS 'WEIGHT',
Price AS 'REGULAR PRICE',
NULL AS 'STOCK',
NULL AS 'LENGTH',
NULL AS 'WIDTH',
NULL AS 'HEIGHT',
CONCAT(N'سایز', ' : ', Size) AS  'SHORT DESCRIPTION',
CONCAT('https://1000e3.ir/wp-content/uploads/convertData/IMG/', Products.Picture) AS 'IMAGE NAME',
NULL AS 'Image Gallery',
navs.NavName AS 'CATEGORY',
Tags AS 'TAGS',
NULL AS 'Custom Taxonomy',
NULL AS 'DOWNLOADABLE',
NULL AS 'Download Name',
NULL AS 'Download Limit',
NULL AS 'Dowload Expiry',
NULL AS 'Download Url',
NULL AS 'VIRTUAL',
NULL AS 'PURCHASE NOTE',
NULL AS 'UPSELL IDS',
NULL AS 'CROSSELL IDS'

FROM [eir12349_DMKj3mXFAB].[dbo].[Products] 
INNER JOIN dbo.Navs AS navs
ON Products.NavId = navs.NavId

