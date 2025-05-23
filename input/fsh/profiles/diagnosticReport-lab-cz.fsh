Profile: CZ_DiagnosticReportLab
Parent: DiagnosticReport
Id: cz-diagnostic-report-lab
Title: "DiagnosticReport: Laboratory Report"
Description: "Diagnostic Report used to represent an entry of a Laboratory Report, including its context, for the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 Czech Republic"
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"

* insert ImposeProfile($DiagnosticReport-eu-lab)

* insert SetFmmandStatusRule ( 0, draft )

* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5].valueReference only Reference(CZ_CompositionLabReport)
* extension[DiagnosticReportCompositionR5].valueReference 1..1

* basedOn only Reference(CZ_ServiceRequestLab)
//* basedOn.extension contains DiagnosticReportBasedOnRequisition named basedOn-requisition 0..*
* status ^short = "Status of this report"
* category 1.. // 1.. ?
* code from CZ_LabStudyTypesVS (preferred)
* code 1..
* subject 1..
* subject only Reference(CZ_PatientCore or Patient or Group or Location or Device or CZ_MedicalDevice)
* encounter only Reference(Encounter) // profile defined for other scopes to be checked
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* specimen ^short = "Specimens this report is based on." // add reference to the used profile
* result ^short = "results" // add reference to the used profiles
* imagingStudy 0..0
