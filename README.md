## [ https://caseydceramics.com ] 
### basic content managment script:
``` 
update index   (will update the index and update content delivery network :cdn) 

update sync    (will sync local drive with s3 website and update cdn)

```
### example: update index
```

$ update index
skippign sync...
aws s3 cp index.html s3://caseydeceramics.com/index.thml
upload: ./index.html to s3://caseydceramics.com/index.html
.....sleeping 3
Cloudfront invalidation of website ...
{
    "Location": "https://cloudfront.amazonaws.com/2018-11-05/distribution/E2VN0HE9WQCJQ8/invalidation/I1CUS7LPGIAMCN",
    "Invalidation": {
        "Id": "I1CUS7LPGIAMCN",
        "Status": "InProgress",
        "CreateTime": "2019-01-01T17:55:05.970Z",
        "InvalidationBatch": {
            "Paths": {
                "Quantity": 1,
                "Items": [
                    "/*"
                ]
            },
            "CallerReference": "cli-1546365305-873169"
        }
    }
}

Done!
```

