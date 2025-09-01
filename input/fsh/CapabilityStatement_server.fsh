Instance: CapabilityStatementPADServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.hpa.gov.tw/pad/CapabilityStatement/CapabilityStatementPADServer"
* version = "0.1.0"
* name = "CapabilityStatementPADServer"
* title = "身體活動與飲食-伺服端(PAD Server)"
* status = #active
* experimental = false
* publisher = "衛生福利部國民健康署"
* date = "2025-08-30"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://www.hpa.gov.tw/pad/ImplementationGuide/tw.gov.mohw.hpa.pad"
* description = "臺灣身體活動與飲食實作指引(PAD IG)伺服端(Server)之能力聲明"
* rest.mode = #server
* rest.documentation = "身體活動與飲食-伺服端(PAD Server)必須（SHALL）使用身體活動與飲食伺服端（PAD Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個身體活動與飲食Profile(s)。"
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "Server必須(SHALL)透過回傳 HTTP 401「未授權」， HTTP 403「禁止」，或 HTTP 404 「未找到」，來拒絕任何未經授權的請求。"


* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://www.hpa.gov.tw/pad/StructureDefinition/Patient-pad"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "name"
* rest.resource[=].searchParam[=].definition = "https://www.hpa.gov.tw/pad/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://www.hpa.gov.tw/pad/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

/* text.status = #extensions
* text.div = ""*/