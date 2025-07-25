Instance: AttachmentImagingReport2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/lab/ConceptMap/AttachmentImagingReport2FHIR-cz"
* name = "AttachmentImagingReport2FHIRcz"
* title = "CZ Attachment Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Report Attachment Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/PresentedFormCz"
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-diagnostic-report"	
* group[=].element[+].code = #PresentedForm
* group[=].element[=].display = "A.3 - Presented Form"
* group[=].element[=].target.code = #DiagnosticReport.presentedForm
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/PresentedFormCz"
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-attachment"				
* group[=].element[+].code = #PresentedForm.contentType
* group[=].element[=].display = "A.3.1 - Content type of presented form"
* group[=].element[=].target.code = #content.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedForm.language
* group[=].element[=].display = "A.3.2 - Language of presented form"
* group[=].element[=].target.code = #content.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #PresentedForm.data
* group[=].element[=].display = "A.3.3 - Data of presented form"
* group[=].element[=].target.code = #content.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent				
* group[=].element[+].code = #PresentedForm.url
* group[=].element[=].display = "A.3.4 - URL of presented form"
* group[=].element[=].target.code = #content.url					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedForm.title
* group[=].element[=].display = "A.3.5 - Title of presented form"
* group[=].element[=].target.code = #content.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PresentedForm.creation
* group[=].element[=].display = "A.3.6 - Date and time of creation"
* group[=].element[=].target.code = #content.creation				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	

* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-diagnostic-report"	
* group[=].element[+].code = #Attachments
* group[=].element[=].display = "A.4 - Attachments"
* group[=].element[=].target.code = #DiagnosticReport.media.link.content.attachment
* group[=].element[=].target.display = "If it is additional MEDIA attachments"
* group[=].element[=].target.equivalence = #equivalent		
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-attachment"			
* group[=].element[+].code = #Attachments.contentType
* group[=].element[=].display = "A.4.1 - Content type of media attachments"
* group[=].element[=].target.code = #content.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Attachments.language
* group[=].element[=].display = "A.4.2 - Language of media attachments"
* group[=].element[=].target.code = #content.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Attachments.data
* group[=].element[=].display = "A.4.3 - Data of media attachments"
* group[=].element[=].target.code = #content.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Attachments.url
* group[=].element[=].display = "A.4.4 - URL of media attachments"
* group[=].element[=].target.code = #content.url					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Attachments.title
* group[=].element[=].display = "A.4.5 - Title of media attachments"
* group[=].element[=].target.code = #content.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Attachments.creation
* group[=].element[=].display = "A.4.6 - Date and time of creation"
* group[=].element[=].target.code = #content.creation				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	