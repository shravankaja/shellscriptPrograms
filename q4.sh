head -12 access.log | awk '{print($15)}'| awk -F/ '{print($3)}'
