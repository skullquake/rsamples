library(httr)
query<-"cmd=div&a=4&b=2";
resp<-GET(
	"http://localhost:8081/kweexamples/src/api_basic/api/",
	query=query
);
print(resp);
print(http_type(resp));
print(content(resp,as="text"));
print(content(resp,as="parsed"));
print(http_error(resp));
#odata test service
query<-"$format=json";
resp<-GET(
	"https://services.odata.org/V3/Northwind/Northwind.svc/Employees/",
	query=query
);
print(resp);
print(http_type(resp));
print(content(resp,as="text"));
print(content(resp,as="parsed"));
print(http_error(resp));
resp<-POST(
	"http://localhost:8081/kweexamples/src/api_basic/api/",
	body="{\"cmd\":\"div\",\"a\":2,\"b\":4}",
	add_headers(.headers=c(
		"Content-Type"="application/json"
	)),
	encode="raw"
)
print(resp);
print(http_type(resp));
print(content(resp,as="text"));
print(content(resp,as="parsed"));
print(http_error(resp));

