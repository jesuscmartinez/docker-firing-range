# Google Firing Range Dockerized
Dockerized Google Firing Range.

## Reference:
[https://github.com/google/firing-range](https://github.com/google/firing-range)

## Build:
Expose port 8080 - server

Expose port 5050 - admin server

`sudo docker build --rm=true --tag google/firing-range .`

## Run:
`sudo docker run -d -p 8080:8080 --name firing-range-server google/firing-range`
