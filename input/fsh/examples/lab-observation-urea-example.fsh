Instance: CZ-LabResult-Observation-Example-Urea
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Mocovina v séru"
Description: "Příklad lab. výsledku numerický vč. nejistoty měření, hodnocení pomocí škály, ref. meze pro ženu věk 15-150 let, uvolněný"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #03086
* code.coding[0].display = "Mocovina; látková koncentrace; sérum/plazma"
* code.text = "Urea"

* subject = Reference(Zyrgana)
* specimen = Reference(CZ-LabResult-Specimen-Example)

* performer[+] = Reference(practitionerRoleSejdlova)
* performer[=].extension[performerFunction].valueCodeableConcept = http://hl7.org/fhir/StructureDefinition/event-performerFunction#PPRF "Primary performer"

* performer[+] = Reference(practitionerRoleZybradlo)
* performer[=].extension[performerFunction].valueCodeableConcept = http://hl7.org/fhir/StructureDefinition/event-performerFunction#LA "Legal authenticator"

* effectiveDateTime = "2025-04-24T08:45:00+01:00"
* issued = "2025-04-24T09:30:00+01:00"

* valueQuantity.value = 8.3
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L

* valueQuantity.extension[uncertainty].url = "http://hl7.org/fhir/StructureDefinition/iso21090-uncertainty"
* valueQuantity.extension[uncertainty].valueDecimal = 0.2
* valueQuantity.extension[uncertaintyType].url = "http://hl7.org/fhir/StructureDefinition/iso21090-uncertaintyType"
* valueQuantity.extension[uncertaintyType].valueCode = #normal

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

* method = $sct#70621000052105 "Spectrophotometric technique"

* referenceRange[0].low.value = 2.0
* referenceRange[0].low.unit = "mmol/L"
* referenceRange[0].low.system = $ucum
* referenceRange[0].low.code = #mmol/L

* referenceRange[0].high.value = 6.7
* referenceRange[0].high.unit = "mmol/L"
* referenceRange[0].high.system = $ucum
* referenceRange[0].high.code = #mmol/L

* referenceRange[0].age.low.value = 15
* referenceRange[0].age.high.value = 150
* referenceRange[0].age.low.unit = "a"
* referenceRange[0].age.high.unit = "a"
* referenceRange[0].type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"

* referenceRange[0].appliesTo[0] = $sct#248152002 "Female"

// kalibrátor
* extension[ObservationCertifiedRefMaterialCodeable].valueCodeableConcept = http://nibsc.org#11/222 "Urea, certified reference material, 10 mmol/L"
* extension[ObservationCertifiedRefMaterialIdentifer].valueIdentifier
  * system = "http://nibsc.org"
  * value = "11/222"

* contained[+] = deviceKitUrea
* contained[+] = deviceAnalyzerUrea
* extension[DeviceLabTestKit].valueReference = Reference (deviceKitUrea)
* device = Reference (deviceAnalyzerUrea)


// Analyzátor
Instance: deviceAnalyzerUrea
InstanceOf: Device
Usage: #example
Description: "Analyzátor BioAnalyt 6000"
* id = "device-analyzer-urea"
* deviceName[0].name = "BioAnalyt 6000"
* deviceName[0].type = #manufacturer-name
* manufacturer = "Best manufacturer"
//* type = $sct#706168006 "Automated clinical chemistry analyzer"

// Testovací souprava - kit
Instance: deviceKitUrea
InstanceOf: Device
Usage: #example
Description: "Testovací souprava Urea enzymatic assay"
* id = "device-kit-urea"
* deviceName[0].name = "Urea Enzymatic Assay Kit"
* deviceName[0].type = #manufacturer-name
* manufacturer = "Best manufacturer"
//* type = $sct#706167001 "Reagent kit"
