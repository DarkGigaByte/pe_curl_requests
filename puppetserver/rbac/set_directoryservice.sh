SET_SERVER=$(puppet config print server)
CONSOLE="${CONSOLE:-$SET_SERVER}"
curl -k -X PUT https://${CONSOLE}:4433/rbac-api/v1/ds \
  --cert $(puppet config print hostcert) \
  --key $(puppet config print hostprivkey) \
  --cacert $(puppet config print localcacert) \
  -H "Content-Type: application/json" -d @ds.json
