Instance:       bundle-diet-record-min
InstanceOf:     BundleDietRecord
Title:          "飲食紀錄"
Description:    "依據飲食紀錄-Bundle Diet Record PAD Profile呈現飲食紀錄之範例"
Usage: #example
* type = #transaction

* entry[basic-diet-record].fullUrl = "https://hpacorepa.hpa.gov.tw/pad/Basic/bas-diet-record"
* entry[basic-diet-record].resource = bas-diet-record
* entry[basic-diet-record].request.method = #POST
* entry[basic-diet-record].request.url = "Basic"