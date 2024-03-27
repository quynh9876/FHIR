# Define the database connection to be used for this model.
connection: "looker-private-demo"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

include: "/views/patient.view.lkml"

datagroup: fhir_q_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fhir_q_default_datagroup

explore: patient {
  hidden: no
  join: patient__link {
    view_label: "Patient: Link"
    sql: LEFT JOIN UNNEST(${patient.link}) as patient__link ;;
    relationship: one_to_many
  }
  join: patient__name {
    view_label: "Patient: Name"
    sql: LEFT JOIN UNNEST(${patient.name}) as patient__name ;;
    relationship: one_to_many
  }
  join: patient__photo {
    view_label: "Patient: Photo"
    sql: LEFT JOIN UNNEST(${patient.photo}) as patient__photo ;;
    relationship: one_to_many
  }
  join: patient__contact {
    view_label: "Patient: Contact"
    sql: LEFT JOIN UNNEST(${patient.contact}) as patient__contact ;;
    relationship: one_to_many
  }
  join: patient__telecom {
    view_label: "Patient: Telecom"
    sql: LEFT JOIN UNNEST(${patient.telecom}) as patient__telecom ;;
    relationship: one_to_many
  }
  join: patient__address {
    view_label: "Patient: Address"
    sql: LEFT JOIN UNNEST(${patient.address}) as patient__address ;;
    relationship: one_to_many
  }
  join: patient__identifier {
    view_label: "Patient: Identifier"
    sql: LEFT JOIN UNNEST(${patient.identifier}) as patient__identifier ;;
    relationship: one_to_many
  }
  join: patient__name__given {
    view_label: "Patient: Name Given"
    sql: LEFT JOIN UNNEST(${patient__name.given}) as patient__name__given ;;
    relationship: one_to_many
  }
  join: patient__name__prefix {
    view_label: "Patient: Name Prefix"
    sql: LEFT JOIN UNNEST(${patient__name.prefix}) as patient__name__prefix ;;
    relationship: one_to_many
  }
  join: patient__name__suffix {
    view_label: "Patient: Name Suffix"
    sql: LEFT JOIN UNNEST(${patient__name.suffix}) as patient__name__suffix ;;
    relationship: one_to_many
  }
  join: patient__address__line {
    view_label: "Patient: Address Line"
    sql: LEFT JOIN UNNEST(${patient__address.line}) as patient__address__line ;;
    relationship: one_to_many
  }
  join: patient__meta__profile {
    view_label: "Patient: Meta Profile"
    sql: LEFT JOIN UNNEST(${patient.meta__profile}) as patient__meta__profile ;;
    relationship: one_to_many
  }
  join: patient__communication {
    view_label: "Patient: Communication"
    sql: LEFT JOIN UNNEST(${patient.communication}) as patient__communication ;;
    relationship: one_to_many
  }
  join: patient__meta__tag {
    view_label: "Patient: Meta Tag"
    sql: LEFT JOIN UNNEST(${patient.meta__tag}) as patient__meta__tag ;;
    relationship: one_to_many
  }
  join: patient__contact__name__given {
    view_label: "Patient: Contact Name Given"
    sql: LEFT JOIN UNNEST(${patient__contact.name__given}) as patient__contact__name__given ;;
    relationship: one_to_many
  }
  join: patient__meta__security {
    view_label: "Patient: Meta Security"
    sql: LEFT JOIN UNNEST(${patient.meta__security}) as patient__meta__security ;;
    relationship: one_to_many
  }
  join: patient__contact__name__prefix {
    view_label: "Patient: Contact Name Prefix"
    sql: LEFT JOIN UNNEST(${patient__contact.name__prefix}) as patient__contact__name__prefix ;;
    relationship: one_to_many
  }
  join: patient__contact__name__suffix {
    view_label: "Patient: Contact Name Suffix"
    sql: LEFT JOIN UNNEST(${patient__contact.name__suffix}) as patient__contact__name__suffix ;;
    relationship: one_to_many
  }
  join: patient__contact__telecom {
    view_label: "Patient: Contact Telecom"
    sql: LEFT JOIN UNNEST(${patient__contact.telecom}) as patient__contact__telecom ;;
    relationship: one_to_many
  }
  join: patient__general_practitioner {
    view_label: "Patient: Generalpractitioner"
    sql: LEFT JOIN UNNEST(${patient.general_practitioner}) as patient__general_practitioner ;;
    relationship: one_to_many
  }
  join: patient__contact__address__line {
    view_label: "Patient: Contact Address Line"
    sql: LEFT JOIN UNNEST(${patient__contact.address__line}) as patient__contact__address__line ;;
    relationship: one_to_many
  }
  join: patient__animal__breed__coding {
    view_label: "Patient: Animal Breed Coding"
    sql: LEFT JOIN UNNEST(${patient.animal__breed__coding}) as patient__animal__breed__coding ;;
    relationship: one_to_many
  }
  join: patient__contact__relationship {
    view_label: "Patient: Contact Relationship"
    sql: LEFT JOIN UNNEST(${patient__contact.relationship}) as patient__contact__relationship ;;
    relationship: one_to_many
  }
  join: patient__marital_status__coding {
    view_label: "Patient: Maritalstatus Coding"
    sql: LEFT JOIN UNNEST(${patient.marital_status__coding}) as patient__marital_status__coding ;;
    relationship: one_to_many
  }
  join: patient__animal__species__coding {
    view_label: "Patient: Animal Species Coding"
    sql: LEFT JOIN UNNEST(${patient.animal__species__coding}) as patient__animal__species__coding ;;
    relationship: one_to_many
  }
  join: patient__identifier__type__coding {
    view_label: "Patient: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__identifier.type__coding}) as patient__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__animal__gender_status__coding {
    view_label: "Patient: Animal Genderstatus Coding"
    sql: LEFT JOIN UNNEST(${patient.animal__gender_status__coding}) as patient__animal__gender_status__coding ;;
    relationship: one_to_many
  }
  join: patient__contact__relationship__coding {
    view_label: "Patient: Contact Relationship Coding"
    sql: LEFT JOIN UNNEST(${patient__contact__relationship.coding}) as patient__contact__relationship__coding ;;
    relationship: one_to_many
  }
  join: patient__communication__language__coding {
    view_label: "Patient: Communication Language Coding"
    sql: LEFT JOIN UNNEST(${patient__communication.language__coding}) as patient__communication__language__coding ;;
    relationship: one_to_many
  }
  join: patient__link__other__identifier__type__coding {
    view_label: "Patient: Link Other Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__link.other__identifier__type__coding}) as patient__link__other__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__general_practitioner__identifier__type__coding {
    view_label: "Patient: Generalpractitioner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__general_practitioner.identifier__type__coding}) as patient__general_practitioner__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__identifier.assigner__identifier__type__coding}) as patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__contact__organization__identifier__type__coding {
    view_label: "Patient: Contact Organization Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__contact.organization__identifier__type__coding}) as patient__contact__organization__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__managing_organization__identifier__type__coding {
    view_label: "Patient: Managingorganization Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient.managing_organization__identifier__type__coding}) as patient__managing_organization__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__link__other__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Link Other Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__link.other__identifier__assigner__identifier__type__coding}) as patient__link__other__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__general_practitioner__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Generalpractitioner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__general_practitioner.identifier__assigner__identifier__type__coding}) as patient__general_practitioner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__contact__organization__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Contact Organization Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__contact.organization__identifier__assigner__identifier__type__coding}) as patient__contact__organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
  join: patient__managing_organization__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Managingorganization Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient.managing_organization__identifier__assigner__identifier__type__coding}) as patient__managing_organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}
