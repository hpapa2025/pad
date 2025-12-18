Instance: CapabilityStatementPADServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://hpacorepa.hpa.gov.tw/pad/CapabilityStatement/CapabilityStatementPADServer"
* version = "0.1.0"
* name = "CapabilityStatementPADServer"
* title = "身體活動與飲食-伺服端(PAD Server)"
* status = #active
* experimental = false
* publisher = "衛生福利部國民健康署"
* date = "2025-10-30"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://hpacorepa.hpa.gov.tw/pad/ImplementationGuide/tw.gov.mohw.hpa.pad"
* description = "臺灣身體活動與飲食實作指引(PAD IG)伺服端(Server)之能力聲明"
* rest.mode = #server
* rest.documentation = "身體活動與飲食-伺服端(PAD Server)必須(SHALL)：(1)支援本實作指引中所有profiles (2)根據FHIR規範實作RESTful (3)回傳狀態碼-①(Status 400)：無效參數(invalid parameter)、②(Status 401/4xx)：未經授權的請求(unauthorized request)、③(Status 403)：未充分授權的資料存取範圍(insufficient premission scope)、④(Status 404)：未知的resource(unknown resource) (4)支援JSON格式 (5)可識別每個新增到Server的實例(instance)之meta.profile是否為臺灣癌藥事前審查Profiles Defining URL，並確認實例是否依循Profile製作。身體活動與飲食-伺服端(PAD Server)伺服端建議應該(SHOULD)：(1)支援XML格式。"
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "Server必須(SHALL)透過回傳 HTTP 401「未授權」， HTTP 403「禁止」，或 HTTP 404 「未找到」，來拒絕任何未經授權的請求。"

* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #batch

* rest.resource[+].type = #Bundle
* rest.resource[=].supportedProfile[0] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Bundle-physical-activity-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Bundle-diet-record-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Bundle-health-risk-assessment-pad"
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

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Patient-pad"
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
* rest.resource[=].searchParam[=].definition = "https://hpacorepa.hpa.gov.tw/pad/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hpacorepa.hpa.gov.tw/pad/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Basic
* rest.resource[=].profile = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Basic-diet-record-pad"
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

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-daily-steps-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-daily-floors-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-daily-distance-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-heart-rate-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-sleep-hours-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-stress-index-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-stand-hours-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-exercise-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-body-height-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-body-weight-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-waist-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-bloodPressure-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-chol-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-tg-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-fg-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Observation-smokingStatus-pad"
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

* rest.resource[+].type = #Condition
* rest.resource[=].supportedProfile[0] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Condition-dm-pad"
* rest.resource[=].supportedProfile[+] = "https://hpacorepa.hpa.gov.tw/pad/StructureDefinition/Condition-hbp-pad"
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