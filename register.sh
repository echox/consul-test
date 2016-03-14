curl -XPUT -H "Content-Type: application/json" -d '{
  "Name": "testservice",
  "Address": "127.0.0.1",
  "Port": 5553
}' http://192.168.99.100:8503/v1/agent/service/register
