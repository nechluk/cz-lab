// -------------------------------------------------------------------------------					
//  Concept Model. File: 					labRpt-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: labRpt2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "LabRpt2FHIR"					
* title = "eHN Lab Report to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Lab Report to this guide Map"					
* purpose = "It shows how the Laboratory Report data set defined by the EU eHN guidelines is mapped into this guide"					
//* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/LabReportCz"					
//* targetUri = "https://hl7.cz/fhir/lab/StructureDefinition/cz-bundle-lab"					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/LabReportCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-diagnostic-report-lab"					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = "A.1 Report header data elements"					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = "A.1.1 - A1.2 Patient/subject"					
* group[=].element[=].target.code = #DiagnosticReport.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = "A.1.3 Health insurance and payment information"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "basedOn.resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)"		

* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = "A.1.4 Information recipient"					
* group[=].element[=].target.code = #DiagnosticReport.extension:information-recipient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"	

* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #DiagnosticReport.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the perfomer"		

* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = "A.1.6 Legal authenticator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"			

* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = "A.1.7 Result validator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"			

* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = "A.1.8 Laboratory report metadata"					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.documentId					
* group[=].element[=].display = "A.1.8.1 Document Id"					
* group[=].element[=].target.code = #DiagnosticReport.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it is the identifier of the report indipendently by its version. Otherwise you should refer to the Bundle.indentifier"		

* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = "A.1.8.2 Document type"					
* group[=].element[=].target.code = #DiagnosticReport.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = "A.1.8.3 Document status"					
* group[=].element[=].target.code = #DiagnosticReport.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "For FHIR R4 the more granular status is recorded in the DiagnosticReport.status"	

* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = "A.1.8.4 Report date and time"					
* group[=].element[=].target.code = #DiagnosticReport.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = "A.1.8.5 Document title"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"							
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = "A.1.8.6 Report custodian"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"		

* group[=].element[+].code = #LabReport.header.metadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 Confidentiality"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"		

* group[=].element[+].code = #LabReport.header.metadata.language					
* group[=].element[=].display = "A.1.8.8 Language"					
* group[=].element[=].target.code = #DiagnosticReport.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.version					
* group[=].element[=].display = "A.1.8.9 Version"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource if it refers to the business report version"			

* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = "A.2.1-A.2.2 Order"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "basedOn.resolve().ofType(CZ_ServiceRequest)"		

* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.2.3 Specimen information"					
* group[=].element[=].target.code = #DiagnosticReport.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.2.3 Specimen information"					
* group[=].element[=].target.code = #DiagnosticReport.result.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "result.resolve().ofType(CZ_ObservationResultLaboratory)"		
					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "A.2.4 Results data elements"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					

* group[=].element[+].code = #LabReport.presentedForm					
* group[=].element[=].display = "A.3 Laboratory report presented form"					
* group[=].element[=].target.code = #DiagnosticReport.presentedForm					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					

* group[=].element[+].code = #LabReport.attachment					
* group[=].element[=].display = "A.4 Laboratory report attachment"					
* group[=].element[=].target.code = #DiagnosticReport.media.link.content.attachment					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto				
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/LabReportCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-composition-lab-report"					
					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = "A.1 Report header data elements"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = "A.1.1 - A1.2 Patient/subject"					
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = "A.1.3 Health insurance and payment information"					
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "extension(http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)"					
* group[=].element[+].code = #LabReport.header.informationRecipient		

* group[=].element[=].display = "A.1.4 Information recipient"					
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "A.1.5 Author"					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = "A.1.6 Result validator"					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The person authenticated the content in their professional capacity.
attester.where(mode='professional')"	
					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = "A.1.7 Legal authenticator"					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The person authenticated the content and accepted legal responsibility for its content.
attester.where(mode='legal')"					

* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = "A.1.8 Laboratory report metadata"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.documentId					
* group[=].element[=].display = "A.1.8.1 Document Id"					
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the identifier of the report indipendently by its version. Otherwise you should refer to the Bundle.indentifier"	

* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = "A.1.8.2 Document type"					
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = "A.1.8.3 Document status"					
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "For FHIR R4 the more granular status is recorded in the DiagnosticReport.status. Mapping rules for valuing the Compisition.status are specified in http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus"					

* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = "A.1.8.4 Report date and time"					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = "A.1.8.5 Document title"					
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = "A.1.8.6 Report custodian"					
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 Confidentiality"					
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.language					
* group[=].element[=].display = "A.1.8.8 Language"					
* group[=].element[=].target.code = #Composition.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.version					
* group[=].element[=].display = "A.1.8.9 Version"					
* group[=].element[=].target.code = #Composition.extension:versionNumber					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if it refers to the business report version"			

* group[=].element[+].code = #LabReport.order	
* group[=].element[=].display = "A.2.1-A.2.2 Order"					
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "extension(http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest)"	

* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.2.3 Specimen information"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If no sub sections"		

* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "A.2.4 Results data elements"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If no sub sections"		

* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "A.2.3 Specimen information"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If sub sections"			
		
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "A.2.4 Results data elements"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If sub sections"					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
