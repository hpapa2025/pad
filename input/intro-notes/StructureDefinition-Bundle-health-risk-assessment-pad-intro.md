
[CDS Hooks欄位整理(試算表)](cds/202510_cds-hooks_五大風險評估欄位.xlsx)

### 呼叫CDS Service

#### HTTP Request

CDS Client（臨床決策支援用戶端）必須以`POST`方法，將一份JSON文件送給CDS Service（臨床決策支援服務）。  
CDS Service（臨床決策支援服務）呼叫端點（endpoint）：`http://34.81.89.26/cds-services/chronic-disease-risk-evaluator`.

要求欄位如下：

CDS Hook欄位 | 必選填 | 資料類型 | 說明
----- | ----- | ----- | --------
`hookInstance` | 必填 | *string* | 用於此次呼叫CDS Hooks的唯一識別碼(UUID)
`hook` | 必填 | *string* | 固定填"patient-view"
`context` | 必填 | *object* | 因CDS Hooks規範須填userId、patientId。格式為 `[ResourceType]/[id]`
`prefetch` | 必填 | *object* |  `"patient": "Patient/{{context.patientId}}"`  <br>  `"conditions": "Condition?patient={{context.patientId}}&clinical-status=active&_sort=-_id"` <br> `"observations": "Observation?patient={{context.patientId}}&code=8302-2,29463-7,8280-0,85354-9,2093-3,2571-8,1558-6,72166-2"`
{:.grid}



#### 範例

- [hookInstance-有風險1.json](cds/hookInstance-有風險1.json)
- [hookInstance-有風險2.json](cds/hookInstance-有風險2.json)
- [hookInstance-無風險.json](cds/hookInstance-無風險.json)

```
curl
  -X POST \
  -H 'Content-type: application/json' \
  "http://34.81.89.26/cds-services/chronic-disease-risk-evaluator"
```

```json
{
  "hookInstance": "d1577c69-dfbe-44ad-ba6d-3e05e953b2ea",
  "hook": "patient-view",
  "context": {
    "userId": "Patient/Z123456789",
    "patientId": "Z123456789"
  },
  "prefetch": {
    "patient": {
      "resourceType": "Patient",
      "id": "Z123456789",
      ...
    },
    "conditions": {
      "resourceType": "Bundle",
      ...
    },
    "observations": {
      "resourceType": "Bundle",
      "id": "f7bc41a5-1fb3-4f5e-adc4-781074683808",
      ...
    }
  }
}
```

### CDS Service回覆
當呼叫成功時，CDS Service 必須（SHALL）回傳一個`HTTP 200`的回應，其內容為一個包含cards陣列（array）的物件。
For successful responses, CDS Services SHALL respond with a 200 HTTP response with an object containing a cards array.

#### HTTP狀態碼（HTTP Status Codes）

狀態碼 | 說明
---- | -----------
`200 OK` | 呼叫成功並正確回傳結果。
`412 Precondition Failed` | CDS Service無法取得執行決策支援所需的FHIR資料，可能是prefetch資料格式有誤。
{:.grid}

##### 範例

> Example response

- [card-有風險1.json](cds/card-有風險1.json)
- [card-有風險2.json](cds/card-有風險2.json)
- [card-無風險.json](cds/card-無風險.json)

```json
{
    "cards": [
        {
            "summary": "47%",
            "indicator": "critical",
            "source": {
                "label": "CHD",
                "url": "https://cdrc.hpa.gov.tw/health-guide.html"
            }
        },
        {
            "summary": "54%",
            "indicator": "critical",
            "source": {
                "label": "Stroke",
                "url": "https://cdrc.hpa.gov.tw/health-guide.html"
            }
        },
        {
            "summary": "您本身已有糖尿病，請多注意血糖變化。",
            "indicator": "info",
            "source": {
                "label": "Diabetes",
                "url": "https://cdrc.hpa.gov.tw/health-guide.html"
            }
        },
        {
            "summary": "您已有高血壓，請多注意血壓變化。",
            "indicator": "info",
            "source": {
                "label": "Hypertension",
                "url": "https://cdrc.hpa.gov.tw/health-guide.html"
            }
        },
        {
            "summary": "65%",
            "indicator": "critical",
            "source": {
                "label": "MACE",
                "url": "https://cdrc.hpa.gov.tw/health-guide.html"
            }
        }
    ]
}
```



更多CDS Hooks內容請參考：[https://cds-hooks.hl7.org/](https://cds-hooks.hl7.org/){:target="_blank"}