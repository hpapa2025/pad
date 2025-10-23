
### Calling a CDS Service

#### HTTP Request

A CDS Client SHALL call a CDS Service by `POST`ing a JSON document to the service as described in this section. The CDS Service endpoint can be constructed from the CDS Service base URL and an individual service id as `{baseUrl}/cds-services/{service.id}`. CDS Clients may add additional requirements for the triggering of a hook, based upon the user, workflow, CDS Service or other reasons (e.g. if the service is provided by a payer, the patient has active coverage with that payer).

The request SHALL include a JSON `POST` body with the following input fields:

Field | Optionality | Type | Description
----- | ----- | ----- | --------
`hook` | REQUIRED | *string* | The hook that triggered this CDS Service call.
`hookInstance` | REQUIRED | *string* | A universally unique identifier (UUID) for this particular hook call.
`context` | REQUIRED | *object* | Hook-specific contextual data that the CDS service will need.<br />For example, with the `patient-view` hook this will include the FHIR id of the [Patient](https://www.hl7.org/fhir/patient.html) being viewed.
`prefetch` | OPTIONAL | *object* | The FHIR data that was prefetched by the CDS Client.
{:.grid}

##### hookInstance

While working in the CDS Client, a user can perform multiple actions in series or in parallel. For example, a clinician might prescribe two drugs in a row; each prescription action would be assigned a unique `hookInstance`. This allows a CDS Service to uniquely identify each hook invocation.

Note: the `hookInstance` is globally unique and SHOULD contain enough entropy to be un-guessable.

#### Example

```
curl
  -X POST \
  -H 'Content-type: application/json' \
  --data @hook-details-see-example-below
  "https://example.com/cds-services/chronic-disease-risk-evaluator"
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
      "meta": {
        "versionId": "1",
        "lastUpdated": "2025-08-04T07:59:39.058+00:00",
        "source": "#aBinfPish0t3xv3W",
        "profile": [
          "https://www.hpa.gov.tw/pad/StructureDefinition/Patient-pad"
        ]
      },
      "extension": [
        {
          "url": "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/person-age",
          "valueAge": {
            "value": 65,
            "system": "http://unitsofmeasure.org",
            "code": "a"
          }
        }
      ],
      "identifier": [
        {
          "use": "official",
          "type": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "NNxxx"
              }
            ]
          },
          "system": "http://www.moi.gov.tw",
          "value": "Z123456789"
        }
      ],
      "name": [
        {
          "use": "usual",
          "text": "王大明"
        }
      ],
      "gender": "male",
      "birthDate": "2001-01-01"
    },
    "conditions": {
      "resourceType": "Bundle",
      "id": "9089cc61-0baa-4fb5-8830-bcfca65a1d2a",
      "meta": {
        "lastUpdated": "2025-08-04T08:07:44.163+00:00"
      },
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://hapi.fhir.org/baseR4/Condition?_sort=-_id&clinical-status=active&patient=Z123456789"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Condition/48545717",
          "resource": {
            "resourceType": "Condition",
            "id": "48545717",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:06:10.970+00:00",
              "source": "#k2272CUf1cAhHxJa",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Condition-hbp-pad"
              ]
            },
            "clinicalStatus": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                  "code": "active"
                }
              ]
            },
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                    "code": "encounter-diagnosis"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw",
                  "code": "I15.9"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "onsetDateTime": "2025-07-10"
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Condition/48545708",
          "resource": {
            "resourceType": "Condition",
            "id": "48545708",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:04:00.255+00:00",
              "source": "#UcXySQKzfSYxOEsI",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Condition-dm-pad"
              ]
            },
            "clinicalStatus": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                  "code": "active"
                }
              ]
            },
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                    "code": "encounter-diagnosis"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw",
                  "code": "E08.649"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "onsetDateTime": "2025-07-10"
          },
          "search": {
            "mode": "match"
          }
        }
      ]
    },
    "observations": {
      "resourceType": "Bundle",
      "id": "f7bc41a5-1fb3-4f5e-adc4-781074683808",
      "meta": {
        "lastUpdated": "2025-08-04T08:24:23.428+00:00"
      },
      "type": "searchset",
      "total": 8,
      "link": [
        {
          "relation": "self",
          "url": "https://hapi.fhir.org/baseR4/Observation?code=8302-2%2C29463-7%2C8280-0%2C85354-9%2C2093-3%2C2571-8%2C1558-6%2C72166-2&patient=Z123456789"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545823",
          "resource": {
            "resourceType": "Observation",
            "id": "48545823",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:12:56.498+00:00",
              "source": "#b0EMI4d8zOR0zyrH",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-height-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "vital-signs",
                    "display": "Vital Signs"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8302-2",
                  "display": "Body height"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueQuantity": {
              "value": 165,
              "unit": "cm",
              "system": "http://unitsofmeasure.org",
              "code": "cm"
            }
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545864",
          "resource": {
            "resourceType": "Observation",
            "id": "48545864",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:15:23.582+00:00",
              "source": "#CdQDGu9HeTmulRVb",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-weight-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "vital-signs"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "29463-7",
                  "display": "Body weight"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueQuantity": {
              "value": 85,
              "unit": "kg",
              "system": "http://unitsofmeasure.org",
              "code": "kg"
            }
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545889",
          "resource": {
            "resourceType": "Observation",
            "id": "48545889",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:16:52.350+00:00",
              "source": "#tRKnpkY57Ja2vsCm",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-waistCircumference-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "vital-signs"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8280-0",
                  "display": "Waist Circumference at umbilicus by Tape measure"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueQuantity": {
              "value": 98,
              "unit": "cm",
              "system": "http://unitsofmeasure.org",
              "code": "cm"
            }
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545891",
          "resource": {
            "resourceType": "Observation",
            "id": "48545891",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:18:07.748+00:00",
              "source": "#a6wS3JNaemC85SzW",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/observation-bloodPressure-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "vital-signs"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "85354-9",
                  "display": "Blood pressure panel with all children optional"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "component": [
              {
                "code": {
                  "coding": [
                    {
                      "system": "http://loinc.org",
                      "code": "8480-6",
                      "display": "Systolic blood pressure"
                    }
                  ]
                },
                "valueQuantity": {
                  "value": 150,
                  "unit": "mmHg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                }
              },
              {
                "code": {
                  "coding": [
                    {
                      "system": "http://loinc.org",
                      "code": "8462-4",
                      "display": "Diastolic blood pressure"
                    }
                  ]
                },
                "valueQuantity": {
                  "value": 75,
                  "unit": "mmHg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                }
              }
            ]
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545896",
          "resource": {
            "resourceType": "Observation",
            "id": "48545896",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:20:27.951+00:00",
              "source": "#qnFU0QStwBcQfix1",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-cholesterol-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "laboratory",
                    "display": "Laboratory"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "2093-3",
                  "display": "Cholesterol [Mass/volume] in Serum or Plasma"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueQuantity": {
              "value": 250,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org",
              "code": "mg/dL"
            },
            "component": [
              {
                "code": {
                  "coding": [
                    {
                      "system": "http://loinc.org",
                      "code": "2085-9",
                      "display": "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
                    }
                  ]
                },
                "valueQuantity": {
                  "value": 35,
                  "unit": "mg/dL",
                  "system": "http://unitsofmeasure.org",
                  "code": "mg/dL"
                }
              },
              {
                "code": {
                  "coding": [
                    {
                      "system": "http://loinc.org",
                      "code": "2089-1",
                      "display": "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
                    }
                  ]
                },
                "valueQuantity": {
                  "value": 170,
                  "unit": "mg/dL",
                  "system": "http://unitsofmeasure.org",
                  "code": "mg/dL"
                }
              }
            ]
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545921",
          "resource": {
            "resourceType": "Observation",
            "id": "48545921",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:21:53.885+00:00",
              "source": "#rdDTWmhF4tUTTkHz",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-triglycerides-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "laboratory",
                    "display": "Laboratory"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "2571-8",
                  "display": "Triglyceride [Mass/volume] in Serum or Plasma"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueQuantity": {
              "value": 210,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org",
              "code": "mg/dL"
            }
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545934",
          "resource": {
            "resourceType": "Observation",
            "id": "48545934",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:22:32.596+00:00",
              "source": "#WKAuh5Zyq1EO1DYj",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-fastingGlucose-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "laboratory",
                    "display": "Laboratory"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "1558-6",
                  "display": "Fasting glucose [Mass/volume] in Serum or Plasma"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueQuantity": {
              "value": 135,
              "unit": "mg/dL",
              "system": "http://unitsofmeasure.org",
              "code": "mg/dL"
            }
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://hapi.fhir.org/baseR4/Observation/48545953",
          "resource": {
            "resourceType": "Observation",
            "id": "48545953",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2025-08-04T08:23:34.755+00:00",
              "source": "#zCSd7G13k0IWlZ4p",
              "profile": [
                "https://www.hpa.gov.tw/pad/StructureDefinition/Observation-smokingStatus-pad"
              ]
            },
            "status": "final",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                    "code": "social-history",
                    "display": "Social History"
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "72166-2",
                  "display": "Tobacco smoking status"
                }
              ]
            },
            "subject": {
              "reference": "Patient/Z123456789"
            },
            "effectiveDateTime": "2025-06-30",
            "performer": [
              {
                "reference": "Patient/Z123456789"
              }
            ],
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "77176002"
                }
              ]
            }
          },
          "search": {
            "mode": "match"
          }
        }
      ]
    }
  }
}
```

### CDS Service Response
For successful responses, CDS Services SHALL respond with a 200 HTTP response with an object containing a cards array.

#### HTTP Status Codes

Code | Description
---- | -----------
`200 OK` | A successful response.
`412 Precondition Failed` | The CDS Service is unable to retrieve the necessary FHIR data to execute its decision support, either through a prefetch request or directly calling the FHIR server.
{:.grid}

CDS Services MAY return other HTTP statuses, specifically 4xx and 5xx HTTP error codes.

#### CDS Service Response
##### Example

> Example response

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