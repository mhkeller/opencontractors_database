drop table if exists contract;

CREATE TABLE IF NOT EXISTS contract (
  id SERIAL CONSTRAINT pk_contract PRIMARY KEY,
  unique_transaction_id VARCHAR(32) NOT NULL,
  last_modified_date DATE NOT NULL,
  CONSTRAINT u_contract unique (unique_transaction_id, last_modified_date),
  transaction_status VARCHAR(6),
  CONSTRAINT fk2_transaction_status FOREIGN KEY (transaction_status) REFERENCES transaction_status(status),
  dollars_obligated MONEY,
  base_and_exercised_options_value MONEY,
  base_and_all_options_value MONEY,
  --
  -- contracting department, agency, office:
  contracting_department_id VARCHAR(4),
  contracting_department_name TEXT,
  contracting_agency_id VARCHAR(4),
  contracting_agency_name TEXT,
  contracting_agency_id_redundant VARCHAR(4),
  contracting_agency_name_redundant TEXT,
  contracting_office_id VARCHAR(6),
  contracting_office_name TEXT,
  -- funding department, agency, office
  funding_department_id VARCHAR(4),
  funding_department_name TEXT,
  funding_agency_id VARCHAR(4),
  funding_agency_name TEXT,
  funding_office_id VARCHAR(6),
  funding_office_name TEXT,
  --
  --
  funded_by_foreign_entity CHAR,
  CONSTRAINT fk2_funded_by_foreign_entity FOREIGN KEY (funded_by_foreign_entity) REFERENCES funded_by_foreign_entity(code),
  signed_date DATE,
  effective_date DATE,
  current_completion_date DATE,
  ultimate_completion_date DATE,
  last_date_to_order DATE,
  contract_action_type VARCHAR(8),
  CONSTRAINT fk2_contract_action_type FOREIGN KEY (contract_action_type) REFERENCES contract_action_type (code),
  reason_for_modification CHAR,
  CONSTRAINT fk2_reason_for_modification FOREIGN KEY (reason_for_modification) REFERENCES reason_for_modification (code),
  type_of_contract_pricing VARCHAR(2),
  CONSTRAINT fk2_type_of_contract_pricing FOREIGN KEY (type_of_contract_pricing) REFERENCES type_of_contract_pricing (code),
  price_evaluation_percent_difference REAL,
  subcontract_plan CHAR,
  CONSTRAINT fk2_subcontract_plan FOREIGN KEY (subcontract_plan) REFERENCES subcontract_plan (code),
  letter_contract CHAR,
  CONSTRAINT fk2_letter_contract FOREIGN KEY (letter_contract) REFERENCES letter_contract (code),
  multiyear_contract CHAR,
  CONSTRAINT fk2_multiyear_contract FOREIGN KEY (multiyear_contract) REFERENCES multiyear_contract (code),
  performance_based_service_contract CHAR,
  CONSTRAINT fk2_performance_based_service_contract FOREIGN KEY (performance_based_service_contract) REFERENCES performance_based_service_contract (code),
  major_program_code TEXT,
  contingency_humanitarian_peacekeeping_operation CHAR,
  CONSTRAINT fk2_contingency_humanitarian_peacekeeping_operation FOREIGN KEY (contingency_humanitarian_peacekeeping_operation) REFERENCES contingency_humanitarian_peacekeeping_operation (code),
  contract_financing CHAR,
  CONSTRAINT fk2_contract_financing FOREIGN KEY (contract_financing) REFERENCES contract_financing (code),
  cost_or_pricing_data CHAR,
  CONSTRAINT fk2_cost_or_pricing_data FOREIGN KEY (cost_or_pricing_data) REFERENCES cost_or_pricing_data(code),
  cost_accounting_standards_clause CHAR,
  CONSTRAINT fk2_cost_accounting_standards_clause FOREIGN KEY (cost_accounting_standards_clause) REFERENCES cost_accounting_standards_clause(code),
  descriptionofcontractrequirement TEXT,
  purchase_card_as_payment_method CHAR,
  CONSTRAINT fk2_purchase_card_as_payment_method FOREIGN KEY (purchase_card_as_payment_method) REFERENCES purchase_card_as_payment_method(code),
  number_of_actions INTEGER,
  national_interest_action VARCHAR(4),
  CONSTRAINT fk2_national_interest_action FOREIGN KEY (national_interest_action) REFERENCES national_interest_action(code),
  prog_source_agency VARCHAR(2),
  prog_source_account VARCHAR(4),
  prog_source_subacct VARCHAR(3),
  account_title TEXT,
  recovery_flag VARCHAR(4),
  CONSTRAINT fk2_recovery_flag FOREIGN KEY (recovery_flag) REFERENCES recovery_flag(code),
  type_of_idc CHAR,
  CONSTRAINT fk2_type_of_idc FOREIGN KEY (type_of_idc) REFERENCES type_of_idc(code),
  multiple_or_single_award_idc CHAR,
  CONSTRAINT fk2_multiple_or_single_award_idc FOREIGN KEY (multiple_or_single_award_idc) REFERENCES multiple_or_single_award_idc(code),
  program_acronym TEXT,
  --
  -- vendor:
  --
  contractor_name TEXT,
  contractor_alternate_name TEXT,
  contractor_legal_organization_name TEXT,
  contractor_doing_as_business_name TEXT,
  contractor_division_name TEXT,
  contractor_division_number_or_office_code TEXT,
  contractor_enabled TEXT,
  contractor_location_disable_flag TEXT,
  contractor_ccr_exception CHAR,
  CONSTRAINT fk2_contractor_ccr_exception FOREIGN KEY (contractor_ccr_exception) REFERENCES ccr_exception(code),
  contractor_street_address_1 TEXT,
  contractor_street_address_2 TEXT,
  contractor_street_address_3 TEXT,
  contractor_city TEXT,
  contractor_state TEXT,
  contractor_state_redundant TEXT,
  contractor_zip_code TEXT,
  contractor_country VARCHAR(3),
  CONSTRAINT fk2_country FOREIGN KEY (contractor_country) REFERENCES country(code),
  contractor_congressional_district VARCHAR(4),
  contractor_congressional_district_redundant VARCHAR(4),
  contractor_site_code TEXT,
  contractor_alternate_site_code TEXT,
  contractor_duns_number VARCHAR(9),
  contractor_parent_duns_number VARCHAR(9),
  contractor_phone_number TEXT,
  contractor_fax_number TEXT,
  contractor_registration_date DATE,
  contractor_renewal_date DATE,
  contractor_parent_name TEXT,
  --
  --
  --
  location_code TEXT,
  place_of_performance_city TEXT,
  place_of_performance_state VARCHAR(2),
  CONSTRAINT fk2_place_of_performance_state FOREIGN KEY (place_of_performance_state) REFERENCES state(code),
  place_of_performance_state_redundant VARCHAR(2),
  CONSTRAINT fk2_place_of_performance_state_redundant FOREIGN KEY (place_of_performance_state_redundant) REFERENCES state(code),
  place_of_performance_country VARCHAR(3),
  CONSTRAINT fk2_place_of_performance_country FOREIGN KEY (place_of_performance_country) REFERENCES country(code),
  place_of_performance_zip_code TEXT,
  place_of_performance_congressional_district VARCHAR(4),
  place_of_performance_congressional_district_redundant VARCHAR(4),
  product_or_service_category VARCHAR(2),
  CONSTRAINT fk2_product_or_service_category FOREIGN KEY (product_or_service_category) REFERENCES product_or_service_category(code),
  product_or_service_code VARCHAR(4),
  CONSTRAINT fk2_product_or_service_code FOREIGN KEY (product_or_service_code) REFERENCES product_or_service_code(code),
  --
  --
  --
  system_or_equipment_code VARCHAR(4),
  system_or_equipment_description TEXT,
  --
  --
  --
  claimant_program VARCHAR(3),
  CONSTRAINT fk2_claimant_program FOREIGN KEY (claimant_program) REFERENCES claimant_program(code),
  naics VARCHAR(6),
  CONSTRAINT fk2_naics FOREIGN KEY (naics) REFERENCES naics(code),
  information_technology_commercial_item_category CHAR,
  CONSTRAINT fk2_information_technology_commercial_item_category FOREIGN KEY (information_technology_commercial_item_category) REFERENCES information_technology_commercial_item_category(code),
  gfe_gfp CHAR,
  CONSTRAINT fk2_gfe_gfp FOREIGN KEY (gfe_gfp) REFERENCES gfe_gfp(code),
  use_of_epa_designated_products CHAR,
  CONSTRAINT fk2_use_of_epa_designated_products FOREIGN KEY (use_of_epa_designated_products) REFERENCES use_of_epa_designated_products(code),
  recovered_material_clauses CHAR,
  CONSTRAINT fk2_recovered_material_clauses FOREIGN KEY (recovered_material_clauses) REFERENCES recovered_material_clauses(code),
  sea_transportation CHAR,
  CONSTRAINT fk2_sea_transportation FOREIGN KEY (sea_transportation) REFERENCES sea_transportation(code),
  contract_bundling CHAR,
  CONSTRAINT fk2_contract_bundling FOREIGN KEY (contract_bundling) REFERENCES contract_bundling(code),
  consolidated_contract CHAR,
  CONSTRAINT fk2_consolidated_contract FOREIGN KEY (consolidated_contract) REFERENCES consolidated_contract(code),
  country_of_origin VARCHAR(3),
  CONSTRAINT fk2_country_of_origin FOREIGN KEY (country_of_origin) REFERENCES country(code),
  place_of_manufacture CHAR,
  CONSTRAINT fk2_place_of_manufacture FOREIGN KEY (place_of_manufacture) REFERENCES place_of_manufacture(code),
  manufacturing_organization_type CHAR,
  CONSTRAINT fk2_manufacturing_organization_type FOREIGN KEY (manufacturing_organization_type) REFERENCES manufacturing_organization_type(code),
  agency_id VARCHAR(4),
  agency_name TEXT,
  piid TEXT,
  modification_number TEXT,
  transaction_number TEXT,
  fiscal_year VARCHAR(4),
  idv_agency_id VARCHAR(4),
  idv_piid TEXT,
  idv_modification_number TEXT,
  solicitation_id TEXT,
  extent_competed VARCHAR(3),
  CONSTRAINT fk2_extent_competed FOREIGN KEY (extent_competed) REFERENCES extent_competed(code),
  reason_not_competed VARCHAR(3),
  CONSTRAINT fk2_reason_not_competed FOREIGN KEY (reason_not_competed) REFERENCES reason_not_competed(code),
  number_of_offers_received INTEGER,
  commercial_item_acquisition_procedures CHAR,
  CONSTRAINT fk2_commercial_item_acquisition_procedures FOREIGN KEY (commercial_item_acquisition_procedures) REFERENCES commercial_item_acquisition_procedures(code),
  commercial_item_test_program CHAR,
  CONSTRAINT fk2_commercial_item_test_program FOREIGN KEY (commercial_item_test_program) REFERENCES commercial_item_test_program(code),
  small_business_competitiveness_demonstration_program CHAR,
  CONSTRAINT fk2_small_business_competitiveness_demonstration_program FOREIGN KEY (small_business_competitiveness_demonstration_program) REFERENCES small_business_competitiveness_demonstration_program(code),
  a76action CHAR,
  CONSTRAINT fk2_a76action FOREIGN KEY (a76action) REFERENCES a76action(code),
  competitive_procedures TEXT,
  solicitation_procedures VARCHAR(4),
  CONSTRAINT fk2_solicitation_procedures FOREIGN KEY (solicitation_procedures) REFERENCES solicitation_procedures(code),
  type_of_set_aside VARCHAR(8),
  CONSTRAINT fk2_type_of_set_aside FOREIGN KEY (type_of_set_aside) REFERENCES type_of_set_aside(code),
  local_area_set_aside CHAR,
  CONSTRAINT fk2_local_area_set_aside FOREIGN KEY (local_area_set_aside) REFERENCES local_area_set_aside(code),
  evaluated_preference VARCHAR(4),
  CONSTRAINT fk2_evaluated_preference FOREIGN KEY (evaluated_preference) REFERENCES evaluated_preference(code),
  fedbizopps CHAR,
  CONSTRAINT fk2_fedbizopps FOREIGN KEY (fedbizopps) REFERENCES fedbizopps(code),
  research VARCHAR(3),
  CONSTRAINT fk2_research FOREIGN KEY (research) REFERENCES research(code),
  statutory_exception_to_fair_opportunity VARCHAR(4),
  CONSTRAINT fk2_statutory_exception_to_fair_opportunity FOREIGN KEY (statutory_exception_to_fair_opportunity) REFERENCES statutory_exception_to_fair_opportunity(code),
  contractor_organizational_type TEXT,
  contractor_number_of_employees BIGINT,
  contractor_annual_revenue MONEY,
  firm8aflag CHAR,
  CONSTRAINT fk2_firm8aflag FOREIGN KEY (firm8aflag) REFERENCES flag_value(code),
  hubzoneflag CHAR,
  CONSTRAINT fk2_hubzoneflag FOREIGN KEY (hubzoneflag) REFERENCES flag_value(code),
  sdbflag CHAR,
  CONSTRAINT fk2_sdbflag FOREIGN KEY (sdbflag) REFERENCES flag_value(code),
  issbacertifiedsmalldisadvantagedbusiness CHAR,
  CONSTRAINT fk2_issbacertifiedsmalldisadvantagedbusiness FOREIGN KEY (issbacertifiedsmalldisadvantagedbusiness) REFERENCES flag_value(code),
  shelteredworkshopflag CHAR,
  CONSTRAINT fk2_shelteredworkshopflag FOREIGN KEY (shelteredworkshopflag) REFERENCES flag_value(code),
  hbcuflag CHAR,
  CONSTRAINT fk2_hbcuflag FOREIGN KEY (hbcuflag) REFERENCES flag_value(code),
  educationalinstitutionflag CHAR,
  CONSTRAINT fk2_educationalinstitutionflag FOREIGN KEY (educationalinstitutionflag) REFERENCES flag_value(code),
  womenownedflag CHAR,
  CONSTRAINT fk2_womenownedflag FOREIGN KEY (womenownedflag) REFERENCES flag_value(code),
  veteranownedflag CHAR,
  CONSTRAINT fk2_veteranownedflag FOREIGN KEY (veteranownedflag) REFERENCES flag_value(code),
  srdvobflag CHAR,
  CONSTRAINT fk2_srdvobflag FOREIGN KEY (srdvobflag) REFERENCES flag_value(code),
  localgovernmentflag CHAR,
  CONSTRAINT fk2_localgovernmentflag FOREIGN KEY (localgovernmentflag) REFERENCES flag_value(code),
  minorityinstitutionflag CHAR,
  CONSTRAINT fk2_minorityinstitutionflag FOREIGN KEY (minorityinstitutionflag) REFERENCES flag_value(code),
  aiobflag CHAR,
  CONSTRAINT fk2_aiobflag FOREIGN KEY (aiobflag) REFERENCES flag_value(code),
  stategovernmentflag CHAR,
  CONSTRAINT fk2_stategovernmentflag FOREIGN KEY (stategovernmentflag) REFERENCES flag_value(code),
  federalgovernmentflag CHAR,
  CONSTRAINT fk2_federalgovernmentflag FOREIGN KEY (federalgovernmentflag) REFERENCES flag_value(code),
  minorityownedbusinessflag CHAR,
  CONSTRAINT fk2_minorityownedbusinessflag FOREIGN KEY (minorityownedbusinessflag) REFERENCES flag_value(code),
  apaobflag CHAR,
  CONSTRAINT fk2_apaobflag FOREIGN KEY (apaobflag) REFERENCES flag_value(code),
  tribalgovernmentflag CHAR,
  CONSTRAINT fk2_tribalgovernmentflag FOREIGN KEY (tribalgovernmentflag) REFERENCES flag_value(code),
  baobflag CHAR,
  CONSTRAINT fk2_baobflag FOREIGN KEY (baobflag) REFERENCES flag_value(code),
  naobflag CHAR,
  CONSTRAINT fk2_naobflag FOREIGN KEY (naobflag) REFERENCES flag_value(code),
  saaobflag CHAR,
  CONSTRAINT fk2_saaobflag FOREIGN KEY (saaobflag) REFERENCES flag_value(code),
  nonprofitorganizationflag CHAR,
  CONSTRAINT fk2_nonprofitorganizationflag FOREIGN KEY (nonprofitorganizationflag) REFERENCES flag_value(code),
  isothernotforprofitorganization CHAR,
  CONSTRAINT fk2_isothernotforprofitorganization FOREIGN KEY (isothernotforprofitorganization) REFERENCES flag_value(code),
  isforprofitorganization CHAR,
  CONSTRAINT fk2_isforprofitorganization FOREIGN KEY (isforprofitorganization) REFERENCES flag_value(code),
  isfoundation CHAR,
  CONSTRAINT fk2_isfoundation FOREIGN KEY (isfoundation) REFERENCES flag_value(code),
  haobflag CHAR,
  CONSTRAINT fk2_haobflag FOREIGN KEY (haobflag) REFERENCES flag_value(code),
  ishispanicservicinginstitution CHAR,
  CONSTRAINT fk2_ishispanicservicinginstitution FOREIGN KEY (ishispanicservicinginstitution) REFERENCES flag_value(code),
  emergingsmallbusinessflag CHAR,
  CONSTRAINT fk2_emergingsmallbusinessflag FOREIGN KEY (emergingsmallbusinessflag) REFERENCES flag_value(code),
  hospitalflag CHAR,
  CONSTRAINT fk2_hospitalflag FOREIGN KEY (hospitalflag) REFERENCES flag_value(code),
  contractingofficerbusinesssizedetermination CHAR,
  CONSTRAINT fk2_contractingofficerbusinesssizedetermination FOREIGN KEY (contractingofficerbusinesssizedetermination) REFERENCES business_size(code),
  is1862landgrantcollege CHAR,
  CONSTRAINT fk2_is1862landgrantcollege FOREIGN KEY (is1862landgrantcollege) REFERENCES flag_value(code),
  is1890landgrantcollege CHAR,
  CONSTRAINT fk2_is1890landgrantcollege FOREIGN KEY (is1890landgrantcollege) REFERENCES flag_value(code),
  is1994landgrantcollege CHAR,
  CONSTRAINT fk2_is1994landgrantcollege FOREIGN KEY (is1994landgrantcollege) REFERENCES flag_value(code),
  isveterinarycollege CHAR,
  CONSTRAINT fk2_isveterinarycollege FOREIGN KEY (isveterinarycollege) REFERENCES flag_value(code),
  isveterinaryhospital CHAR,
  CONSTRAINT fk2_isveterinaryhospital FOREIGN KEY (isveterinaryhospital) REFERENCES flag_value(code),
  isprivateuniversityorcollege CHAR,
  CONSTRAINT fk2_isprivateuniversityorcollege FOREIGN KEY (isprivateuniversityorcollege) REFERENCES flag_value(code),
  isschoolofforestry CHAR,
  CONSTRAINT fk2_isschoolofforestry FOREIGN KEY (isschoolofforestry) REFERENCES flag_value(code),
  isstatecontrolledinstitutionofhigherlearning CHAR,
  CONSTRAINT fk2_isstatecontrolledinstitutionofhigherlearning FOREIGN KEY (isstatecontrolledinstitutionofhigherlearning) REFERENCES flag_value(code),
  isserviceprovider CHAR,
  CONSTRAINT fk2_isserviceprovider FOREIGN KEY (isserviceprovider) REFERENCES flag_value(code),
  receivescontracts CHAR,
  CONSTRAINT fk2_receivescontracts FOREIGN KEY (receivescontracts) REFERENCES flag_value(code),
  receivesgrants CHAR,
  CONSTRAINT fk2_receivesgrants FOREIGN KEY (receivesgrants) REFERENCES flag_value(code),
  receivescontractsandgrants CHAR,
  CONSTRAINT fk2_receivescontractsandgrants FOREIGN KEY (receivescontractsandgrants) REFERENCES flag_value(code),
  isairportauthority CHAR,
  CONSTRAINT fk2_isairportauthority FOREIGN KEY (isairportauthority) REFERENCES flag_value(code),
  iscouncilofgovernments CHAR,
  CONSTRAINT fk2_iscouncilofgovernments FOREIGN KEY (iscouncilofgovernments) REFERENCES flag_value(code),
  ishousingauthoritiespublicortribal CHAR,
  CONSTRAINT fk2_ishousingauthoritiespublicortribal FOREIGN KEY (ishousingauthoritiespublicortribal) REFERENCES flag_value(code),
  isinterstateentity CHAR,
  CONSTRAINT fk2_isinterstateentity FOREIGN KEY (isinterstateentity) REFERENCES flag_value(code),
  isplanningcommission CHAR,
  CONSTRAINT fk2_isplanningcommission FOREIGN KEY (isplanningcommission) REFERENCES flag_value(code),
  isportauthority CHAR,
  CONSTRAINT fk2_isportauthority FOREIGN KEY (isportauthority) REFERENCES flag_value(code),
  istransitauthority CHAR,
  CONSTRAINT fk2_istransitauthority FOREIGN KEY (istransitauthority) REFERENCES flag_value(code),
  issubchapterscorporation CHAR,
  CONSTRAINT fk2_issubchapterscorporation FOREIGN KEY (issubchapterscorporation) REFERENCES flag_value(code),
  islimitedliabilitycorporation CHAR,
  CONSTRAINT fk2_islimitedliabilitycorporation FOREIGN KEY (islimitedliabilitycorporation) REFERENCES flag_value(code),
  isforeignownedandlocated CHAR,
  CONSTRAINT fk2_isforeignownedandlocated FOREIGN KEY (isforeignownedandlocated) REFERENCES flag_value(code),
  isarchitectureandengineering CHAR,
  CONSTRAINT fk2_isarchitectureandengineering FOREIGN KEY (isarchitectureandengineering) REFERENCES flag_value(code),
  isdotcertifieddisadvantagedbusinessenterprise CHAR,
  CONSTRAINT fk2_isdotcertifieddisadvantagedbusinessenterprise FOREIGN KEY (isdotcertifieddisadvantagedbusinessenterprise) REFERENCES flag_value(code),
  iscitylocalgovernment CHAR,
  CONSTRAINT fk2_iscitylocalgovernment FOREIGN KEY (iscitylocalgovernment) REFERENCES flag_value(code),
  iscommunitydevelopedcorporationownedfirm CHAR,
  CONSTRAINT fk2_iscommunitydevelopedcorporationownedfirm FOREIGN KEY (iscommunitydevelopedcorporationownedfirm) REFERENCES flag_value(code),
  iscommunitydevelopmentcorporation CHAR,
  CONSTRAINT fk2_iscommunitydevelopmentcorporation FOREIGN KEY (iscommunitydevelopmentcorporation) REFERENCES flag_value(code),
  isconstructionfirm CHAR,
  CONSTRAINT fk2_isconstructionfirm FOREIGN KEY (isconstructionfirm) REFERENCES flag_value(code),
  ismanufacturerofgoods CHAR,
  CONSTRAINT fk2_ismanufacturerofgoods FOREIGN KEY (ismanufacturerofgoods) REFERENCES flag_value(code),
  iscorporateentitynottaxexempt CHAR,
  CONSTRAINT fk2_iscorporateentitynottaxexempt FOREIGN KEY (iscorporateentitynottaxexempt) REFERENCES flag_value(code),
  iscountylocalgovernment CHAR,
  CONSTRAINT fk2_iscountylocalgovernment FOREIGN KEY (iscountylocalgovernment) REFERENCES flag_value(code),
  isdomesticshelter CHAR,
  CONSTRAINT fk2_isdomesticshelter FOREIGN KEY (isdomesticshelter) REFERENCES flag_value(code),
  isfederalgovernmentagency CHAR,
  CONSTRAINT fk2_isfederalgovernmentagency FOREIGN KEY (isfederalgovernmentagency) REFERENCES flag_value(code),
  isfederallyfundedresearchanddevelopmentcorp CHAR,
  CONSTRAINT fk2_isfederallyfundedresearchanddevelopmentcorp FOREIGN KEY (isfederallyfundedresearchanddevelopmentcorp) REFERENCES flag_value(code),
  isforeigngovernment CHAR,
  CONSTRAINT fk2_isforeigngovernment FOREIGN KEY (isforeigngovernment) REFERENCES flag_value(code),
  isindiantribe CHAR,
  CONSTRAINT fk2_isindiantribe FOREIGN KEY (isindiantribe) REFERENCES flag_value(code),
  isintermunicipallocalgovernment CHAR,
  CONSTRAINT fk2_isintermunicipallocalgovernment FOREIGN KEY (isintermunicipallocalgovernment) REFERENCES flag_value(code),
  isinternationalorganization CHAR,
  CONSTRAINT fk2_isinternationalorganization FOREIGN KEY (isinternationalorganization) REFERENCES flag_value(code),
  islaborsurplusareafirm CHAR,
  CONSTRAINT fk2_islaborsurplusareafirm FOREIGN KEY (islaborsurplusareafirm) REFERENCES flag_value(code),
  islocalgovernmentowned CHAR,
  CONSTRAINT fk2_islocalgovernmentowned FOREIGN KEY (islocalgovernmentowned) REFERENCES flag_value(code),
  ismunicipalitylocalgovernment CHAR,
  CONSTRAINT fk2_ismunicipalitylocalgovernment FOREIGN KEY (ismunicipalitylocalgovernment) REFERENCES flag_value(code),
  isnativehawaiianownedorganizationorfirm CHAR,
  CONSTRAINT fk2_isnativehawaiianownedorganizationorfirm FOREIGN KEY (isnativehawaiianownedorganizationorfirm) REFERENCES flag_value(code),
  isotherbusinessororganization CHAR,
  CONSTRAINT fk2_isotherbusinessororganization FOREIGN KEY (isotherbusinessororganization) REFERENCES flag_value(code),
  isotherminorityowned CHAR,
  CONSTRAINT fk2_isotherminorityowned FOREIGN KEY (isotherminorityowned) REFERENCES flag_value(code),
  ispartnershiporlimitedliabilitypartnership CHAR,
  CONSTRAINT fk2_ispartnershiporlimitedliabilitypartnership FOREIGN KEY (ispartnershiporlimitedliabilitypartnership) REFERENCES flag_value(code),
  isschooldistrictlocalgovernment CHAR,
  CONSTRAINT fk2_isschooldistrictlocalgovernment FOREIGN KEY (isschooldistrictlocalgovernment) REFERENCES flag_value(code),
  issmallagriculturalcooperative CHAR,
  CONSTRAINT fk2_issmallagriculturalcooperative FOREIGN KEY (issmallagriculturalcooperative) REFERENCES flag_value(code),
  issoleproprietorship CHAR,
  CONSTRAINT fk2_issoleproprietorship FOREIGN KEY (issoleproprietorship) REFERENCES flag_value(code),
  istownshiplocalgovernment CHAR,
  CONSTRAINT fk2_istownshiplocalgovernment FOREIGN KEY (istownshiplocalgovernment) REFERENCES flag_value(code),
  istriballyownedfirm CHAR,
  CONSTRAINT fk2_istriballyownedfirm FOREIGN KEY (istriballyownedfirm) REFERENCES flag_value(code),
  istribalcollege CHAR,
  CONSTRAINT fk2_istribalcollege FOREIGN KEY (istribalcollege) REFERENCES flag_value(code),
  isalaskannativeownedcorporationorfirm CHAR,
  CONSTRAINT fk2_isalaskannativeownedcorporationorfirm FOREIGN KEY (isalaskannativeownedcorporationorfirm) REFERENCES flag_value(code),
  iscorporateentitytaxexempt CHAR,
  CONSTRAINT fk2_iscorporateentitytaxexempt FOREIGN KEY (iscorporateentitytaxexempt) REFERENCES flag_value(code),
  iswomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_iswomenownedsmallbusiness FOREIGN KEY (iswomenownedsmallbusiness) REFERENCES flag_value(code),
  isecondisadvwomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_isecondisadvwomenownedsmallbusiness FOREIGN KEY (isecondisadvwomenownedsmallbusiness) REFERENCES flag_value(code),
  isjointventurewomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_isjointventurewomenownedsmallbusiness FOREIGN KEY (isjointventurewomenownedsmallbusiness) REFERENCES flag_value(code),
  isjointventureecondisadvwomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_isjointventureecondisadvwomenownedsmallbusiness FOREIGN KEY (isjointventureecondisadvwomenownedsmallbusiness) REFERENCES flag_value(code),
  walsh_healy_act CHAR,
  CONSTRAINT fk2_walsh_healy_act FOREIGN KEY (walsh_healy_act) REFERENCES walsh_healy_act(code),
  service_contract_act CHAR,
  CONSTRAINT fk2_service_contract_act FOREIGN KEY (service_contract_act) REFERENCES service_contract_act(code),
  davis_bacon_act CHAR,
  CONSTRAINT fk2_davis_bacon_act FOREIGN KEY (davis_bacon_act) REFERENCES davis_bacon_act(code),
  clinger_cohen_act CHAR,
  CONSTRAINT fk2_clinger_cohen_act FOREIGN KEY (clinger_cohen_act) REFERENCES clinger_cohen_act(code),
  other_statutory_authority TEXT,
  prime_awardee_executive1 TEXT,
  prime_awardee_executive1_compensation MONEY,
  prime_awardee_executive2 TEXT,
  prime_awardee_executive2_compensation MONEY,
  prime_awardee_executive3 TEXT,
  prime_awardee_executive3_compensation MONEY,
  prime_awardee_executive4 TEXT,
  prime_awardee_executive4_compensation MONEY,
  prime_awardee_executive5 TEXT,
  prime_awardee_executive5_compensation MONEY,
  interagency_contracting_authority CHAR,
  CONSTRAINT fk2_interagency_contracting_authority FOREIGN KEY (interagency_contracting_authority) REFERENCES interagency_contracting_authority(code)
);
