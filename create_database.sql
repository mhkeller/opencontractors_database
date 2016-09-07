DROP TABLE IF EXISTS temp_contract;

CREATE TABLE temp_contract (
  unique_transaction_id                            TEXT,
  transaction_status                               TEXT,
  dollarsobligated                                 TEXT,
  baseandexercisedoptionsvalue                     TEXT,
  baseandalloptionsvalue                           TEXT,
  maj_agency_cat                                   TEXT,
  mod_agency                                       TEXT,
  maj_fund_agency_cat                              TEXT,
  contractingofficeagencyid                        TEXT,
  contractingofficeid                              TEXT,
  fundingrequestingagencyid                        TEXT,
  fundingrequestingofficeid                        TEXT,
  fundedbyforeignentity                            TEXT,
  signeddate                                       TEXT,
  effectivedate                                    TEXT,
  currentcompletiondate                            TEXT,
  ultimatecompletiondate                           TEXT,
  lastdatetoorder                                  TEXT,
  contractactiontype                               TEXT,
  reasonformodification                            TEXT,
  typeofcontractpricing                            TEXT,
  priceevaluationpercentdifference                 TEXT,
  subcontractplan                                  TEXT,
  lettercontract                                   TEXT,
  multiyearcontract                                TEXT,
  performancebasedservicecontract                  TEXT,
  majorprogramcode                                 TEXT,
  contingencyhumanitarianpeacekeepingoperation     TEXT,
  contractfinancing                                TEXT,
  costorpricingdata                                TEXT,
  costaccountingstandardsclause                    TEXT,
  descriptionofcontractrequirement                 TEXT,
  purchasecardaspaymentmethod                      TEXT,
  numberofactions                                  TEXT,
  nationalinterestactioncode                       TEXT,
  progsourceagency                                 TEXT,
  progsourceaccount                                TEXT,
  progsourcesubacct                                TEXT,
  account_title                                    TEXT,
  rec_flag                                         TEXT,
  typeofidc                                        TEXT,
  multipleorsingleawardidc                         TEXT,
  programacronym                                   TEXT,
  vendorname                                       TEXT,
  vendoralternatename                              TEXT,
  vendorlegalorganizationname                      TEXT,
  vendordoingasbusinessname                        TEXT,
  divisionname                                     TEXT,
  divisionnumberorofficecode                       TEXT,
  vendorenabled                                    TEXT,
  vendorlocationdisableflag                        TEXT,
  ccrexception                                     TEXT,
  streetaddress                                    TEXT,
  streetaddress2                                   TEXT,
  streetaddress3                                   TEXT,
  city                                             TEXT,
  state                                            TEXT,
  zipcode                                          TEXT,
  vendorcountrycode                                TEXT,
  vendor_state_code                                TEXT,
  vendor_cd                                        TEXT,
  congressionaldistrict                            TEXT,
  vendorsitecode                                   TEXT,
  vendoralternatesitecode                          TEXT,
  dunsnumber                                       TEXT,
  parentdunsnumber                                 TEXT,
  phoneno                                          TEXT,
  faxno                                            TEXT,
  registrationdate                                 TEXT,
  renewaldate                                      TEXT,
  mod_parent                                       TEXT,
  locationcode                                     TEXT,
  statecode                                        TEXT,
  PlaceofPerformanceCity                           TEXT,
  pop_state_code                                   TEXT,
  placeofperformancecountrycode                    TEXT,
  placeofperformancezipcode                        TEXT,
  pop_cd                                           TEXT,
  placeofperformancecongressionaldistrict          TEXT,
  psc_cat                                          TEXT,
  productorservicecode                             TEXT,
  systemequipmentcode                              TEXT,
  claimantprogramcode                              TEXT,
  principalnaicscode                               TEXT,
  informationtechnologycommercialitemcategory      TEXT,
  gfe_gfp                                          TEXT,
  useofepadesignatedproducts                       TEXT,
  recoveredmaterialclauses                         TEXT,
  seatransportation                                TEXT,
  contractbundling                                 TEXT,
  consolidatedcontract                             TEXT,
  countryoforigin                                  TEXT,
  placeofmanufacture                               TEXT,
  manufacturingorganizationtype                    TEXT,
  agencyid                                         TEXT,
  piid                                             TEXT,
  modnumber                                        TEXT,
  transactionnumber                                TEXT,
  fiscal_year                                      TEXT,
  idvagencyid                                      TEXT,
  idvpiid                                          TEXT,
  idvmodificationnumber                            TEXT,
  solicitationid                                   TEXT,
  extentcompeted                                   TEXT,
  reasonnotcompeted                                TEXT,
  numberofoffersreceived                           TEXT,
  commercialitemacquisitionprocedures              TEXT,
  commercialitemtestprogram                        TEXT,
  smallbusinesscompetitivenessdemonstrationprogram TEXT,
  a76action                                        TEXT,
  competitiveprocedures                            TEXT,
  solicitationprocedures                           TEXT,
  typeofsetaside                                   TEXT,
  localareasetaside                                TEXT,
  evaluatedpreference                              TEXT,
  fedbizopps                                       TEXT,
  research                                         TEXT,
  statutoryexceptiontofairopportunity              TEXT,
  organizationaltype                               TEXT,
  numberofemployees                                TEXT,
  annualrevenue                                    TEXT,
  firm8aflag                                       TEXT,
  hubzoneflag                                      TEXT,
  sdbflag                                          TEXT,
  issbacertifiedsmalldisadvantagedbusiness         TEXT,
  shelteredworkshopflag                            TEXT,
  hbcuflag                                         TEXT,
  educationalinstitutionflag                       TEXT,
  womenownedflag                                   TEXT,
  veteranownedflag                                 TEXT,
  srdvobflag                                       TEXT,
  localgovernmentflag                              TEXT,
  minorityinstitutionflag                          TEXT,
  aiobflag                                         TEXT,
  stategovernmentflag                              TEXT,
  federalgovernmentflag                            TEXT,
  minorityownedbusinessflag                        TEXT,
  apaobflag                                        TEXT,
  tribalgovernmentflag                             TEXT,
  baobflag                                         TEXT,
  naobflag                                         TEXT,
  saaobflag                                        TEXT,
  nonprofitorganizationflag                        TEXT,
  isothernotforprofitorganization                  TEXT,
  isforprofitorganization                          TEXT,
  isfoundation                                     TEXT,
  haobflag                                         TEXT,
  ishispanicservicinginstitution                   TEXT,
  emergingsmallbusinessflag                        TEXT,
  hospitalflag                                     TEXT,
  contractingofficerbusinesssizedetermination      TEXT,
  is1862landgrantcollege                           TEXT,
  is1890landgrantcollege                           TEXT,
  is1994landgrantcollege                           TEXT,
  isveterinarycollege                              TEXT,
  isveterinaryhospital                             TEXT,
  isprivateuniversityorcollege                     TEXT,
  isschoolofforestry                               TEXT,
  isstatecontrolledinstitutionofhigherlearning     TEXT,
  isserviceprovider                                TEXT,
  receivescontracts                                TEXT,
  receivesgrants                                   TEXT,
  receivescontractsandgrants                       TEXT,
  isairportauthority                               TEXT,
  iscouncilofgovernments                           TEXT,
  ishousingauthoritiespublicortribal               TEXT,
  isinterstateentity                               TEXT,
  isplanningcommission                             TEXT,
  isportauthority                                  TEXT,
  istransitauthority                               TEXT,
  issubchapterscorporation                         TEXT,
  islimitedliabilitycorporation                    TEXT,
  isforeignownedandlocated                         TEXT,
  isarchitectureandengineering                     TEXT,
  isdotcertifieddisadvantagedbusinessenterprise    TEXT,
  iscitylocalgovernment                            TEXT,
  iscommunitydevelopedcorporationownedfirm         TEXT,
  iscommunitydevelopmentcorporation                TEXT,
  isconstructionfirm                               TEXT,
  ismanufacturerofgoods                            TEXT,
  iscorporateentitynottaxexempt                    TEXT,
  iscountylocalgovernment                          TEXT,
  isdomesticshelter                                TEXT,
  isfederalgovernmentagency                        TEXT,
  isfederallyfundedresearchanddevelopmentcorp      TEXT,
  isforeigngovernment                              TEXT,
  isindiantribe                                    TEXT,
  isintermunicipallocalgovernment                  TEXT,
  isinternationalorganization                      TEXT,
  islaborsurplusareafirm                           TEXT,
  islocalgovernmentowned                           TEXT,
  ismunicipalitylocalgovernment                    TEXT,
  isnativehawaiianownedorganizationorfirm          TEXT,
  isotherbusinessororganization                    TEXT,
  isotherminorityowned                             TEXT,
  ispartnershiporlimitedliabilitypartnership       TEXT,
  isschooldistrictlocalgovernment                  TEXT,
  issmallagriculturalcooperative                   TEXT,
  issoleproprietorship                             TEXT,
  istownshiplocalgovernment                        TEXT,
  istriballyownedfirm                              TEXT,
  istribalcollege                                  TEXT,
  isalaskannativeownedcorporationorfirm            TEXT,
  iscorporateentitytaxexempt                       TEXT,
  iswomenownedsmallbusiness                        TEXT,
  isecondisadvwomenownedsmallbusiness              TEXT,
  isjointventurewomenownedsmallbusiness            TEXT,
  isjointventureecondisadvwomenownedsmallbusiness  TEXT,
  walshhealyact                                    TEXT,
  servicecontractact                               TEXT,
  davisbaconact                                    TEXT,
  clingercohenact                                  TEXT,
  otherstatutoryauthority                          TEXT,
  prime_awardee_executive1                         TEXT,
  prime_awardee_executive1_compensation            TEXT,
  prime_awardee_executive2                         TEXT,
  prime_awardee_executive2_compensation            TEXT,
  prime_awardee_executive3                         TEXT,
  prime_awardee_executive3_compensation            TEXT,
  prime_awardee_executive4                         TEXT,
  prime_awardee_executive4_compensation            TEXT,
  prime_awardee_executive5                         TEXT,
  prime_awardee_executive5_compensation            TEXT,
  interagencycontractingauthority                  TEXT,
  last_modified_date                               TEXT
);

CREATE TABLE IF NOT EXISTS contract_csv (
  unique_transaction_id                            TEXT,
  transaction_status                               TEXT,
  dollarsobligated                                 TEXT,
  baseandexercisedoptionsvalue                     TEXT,
  baseandalloptionsvalue                           TEXT,
  maj_agency_cat                                   TEXT,
  mod_agency                                       TEXT,
  maj_fund_agency_cat                              TEXT,
  contractingofficeagencyid                        TEXT,
  contractingofficeid                              TEXT,
  fundingrequestingagencyid                        TEXT,
  fundingrequestingofficeid                        TEXT,
  fundedbyforeignentity                            TEXT,
  signeddate                                       TEXT,
  effectivedate                                    TEXT,
  currentcompletiondate                            TEXT,
  ultimatecompletiondate                           TEXT,
  lastdatetoorder                                  TEXT,
  contractactiontype                               TEXT,
  reasonformodification                            TEXT,
  typeofcontractpricing                            TEXT,
  priceevaluationpercentdifference                 TEXT,
  subcontractplan                                  TEXT,
  lettercontract                                   TEXT,
  multiyearcontract                                TEXT,
  performancebasedservicecontract                  TEXT,
  majorprogramcode                                 TEXT,
  contingencyhumanitarianpeacekeepingoperation     TEXT,
  contractfinancing                                TEXT,
  costorpricingdata                                TEXT,
  costaccountingstandardsclause                    TEXT,
  descriptionofcontractrequirement                 TEXT,
  purchasecardaspaymentmethod                      TEXT,
  numberofactions                                  TEXT,
  nationalinterestactioncode                       TEXT,
  progsourceagency                                 TEXT,
  progsourceaccount                                TEXT,
  progsourcesubacct                                TEXT,
  account_title                                    TEXT,
  rec_flag                                         TEXT,
  typeofidc                                        TEXT,
  multipleorsingleawardidc                         TEXT,
  programacronym                                   TEXT,
  vendorname                                       TEXT,
  vendoralternatename                              TEXT,
  vendorlegalorganizationname                      TEXT,
  vendordoingasbusinessname                        TEXT,
  divisionname                                     TEXT,
  divisionnumberorofficecode                       TEXT,
  vendorenabled                                    TEXT,
  vendorlocationdisableflag                        TEXT,
  ccrexception                                     TEXT,
  streetaddress                                    TEXT,
  streetaddress2                                   TEXT,
  streetaddress3                                   TEXT,
  city                                             TEXT,
  state                                            TEXT,
  zipcode                                          TEXT,
  vendorcountrycode                                TEXT,
  vendor_state_code                                TEXT,
  vendor_cd                                        TEXT,
  congressionaldistrict                            TEXT,
  vendorsitecode                                   TEXT,
  vendoralternatesitecode                          TEXT,
  dunsnumber                                       TEXT,
  parentdunsnumber                                 TEXT,
  phoneno                                          TEXT,
  faxno                                            TEXT,
  registrationdate                                 TEXT,
  renewaldate                                      TEXT,
  mod_parent                                       TEXT,
  locationcode                                     TEXT,
  statecode                                        TEXT,
  PlaceofPerformanceCity                           TEXT,
  pop_state_code                                   TEXT,
  placeofperformancecountrycode                    TEXT,
  placeofperformancezipcode                        TEXT,
  pop_cd                                           TEXT,
  placeofperformancecongressionaldistrict          TEXT,
  psc_cat                                          TEXT,
  productorservicecode                             TEXT,
  systemequipmentcode                              TEXT,
  claimantprogramcode                              TEXT,
  principalnaicscode                               TEXT,
  informationtechnologycommercialitemcategory      TEXT,
  gfe_gfp                                          TEXT,
  useofepadesignatedproducts                       TEXT,
  recoveredmaterialclauses                         TEXT,
  seatransportation                                TEXT,
  contractbundling                                 TEXT,
  consolidatedcontract                             TEXT,
  countryoforigin                                  TEXT,
  placeofmanufacture                               TEXT,
  manufacturingorganizationtype                    TEXT,
  agencyid                                         TEXT,
  piid                                             TEXT,
  modnumber                                        TEXT,
  transactionnumber                                TEXT,
  fiscal_year                                      TEXT,
  idvagencyid                                      TEXT,
  idvpiid                                          TEXT,
  idvmodificationnumber                            TEXT,
  solicitationid                                   TEXT,
  extentcompeted                                   TEXT,
  reasonnotcompeted                                TEXT,
  numberofoffersreceived                           TEXT,
  commercialitemacquisitionprocedures              TEXT,
  commercialitemtestprogram                        TEXT,
  smallbusinesscompetitivenessdemonstrationprogram TEXT,
  a76action                                        TEXT,
  competitiveprocedures                            TEXT,
  solicitationprocedures                           TEXT,
  typeofsetaside                                   TEXT,
  localareasetaside                                TEXT,
  evaluatedpreference                              TEXT,
  fedbizopps                                       TEXT,
  research                                         TEXT,
  statutoryexceptiontofairopportunity              TEXT,
  organizationaltype                               TEXT,
  numberofemployees                                TEXT,
  annualrevenue                                    TEXT,
  firm8aflag                                       TEXT,
  hubzoneflag                                      TEXT,
  sdbflag                                          TEXT,
  issbacertifiedsmalldisadvantagedbusiness         TEXT,
  shelteredworkshopflag                            TEXT,
  hbcuflag                                         TEXT,
  educationalinstitutionflag                       TEXT,
  womenownedflag                                   TEXT,
  veteranownedflag                                 TEXT,
  srdvobflag                                       TEXT,
  localgovernmentflag                              TEXT,
  minorityinstitutionflag                          TEXT,
  aiobflag                                         TEXT,
  stategovernmentflag                              TEXT,
  federalgovernmentflag                            TEXT,
  minorityownedbusinessflag                        TEXT,
  apaobflag                                        TEXT,
  tribalgovernmentflag                             TEXT,
  baobflag                                         TEXT,
  naobflag                                         TEXT,
  saaobflag                                        TEXT,
  nonprofitorganizationflag                        TEXT,
  isothernotforprofitorganization                  TEXT,
  isforprofitorganization                          TEXT,
  isfoundation                                     TEXT,
  haobflag                                         TEXT,
  ishispanicservicinginstitution                   TEXT,
  emergingsmallbusinessflag                        TEXT,
  hospitalflag                                     TEXT,
  contractingofficerbusinesssizedetermination      TEXT,
  is1862landgrantcollege                           TEXT,
  is1890landgrantcollege                           TEXT,
  is1994landgrantcollege                           TEXT,
  isveterinarycollege                              TEXT,
  isveterinaryhospital                             TEXT,
  isprivateuniversityorcollege                     TEXT,
  isschoolofforestry                               TEXT,
  isstatecontrolledinstitutionofhigherlearning     TEXT,
  isserviceprovider                                TEXT,
  receivescontracts                                TEXT,
  receivesgrants                                   TEXT,
  receivescontractsandgrants                       TEXT,
  isairportauthority                               TEXT,
  iscouncilofgovernments                           TEXT,
  ishousingauthoritiespublicortribal               TEXT,
  isinterstateentity                               TEXT,
  isplanningcommission                             TEXT,
  isportauthority                                  TEXT,
  istransitauthority                               TEXT,
  issubchapterscorporation                         TEXT,
  islimitedliabilitycorporation                    TEXT,
  isforeignownedandlocated                         TEXT,
  isarchitectureandengineering                     TEXT,
  isdotcertifieddisadvantagedbusinessenterprise    TEXT,
  iscitylocalgovernment                            TEXT,
  iscommunitydevelopedcorporationownedfirm         TEXT,
  iscommunitydevelopmentcorporation                TEXT,
  isconstructionfirm                               TEXT,
  ismanufacturerofgoods                            TEXT,
  iscorporateentitynottaxexempt                    TEXT,
  iscountylocalgovernment                          TEXT,
  isdomesticshelter                                TEXT,
  isfederalgovernmentagency                        TEXT,
  isfederallyfundedresearchanddevelopmentcorp      TEXT,
  isforeigngovernment                              TEXT,
  isindiantribe                                    TEXT,
  isintermunicipallocalgovernment                  TEXT,
  isinternationalorganization                      TEXT,
  islaborsurplusareafirm                           TEXT,
  islocalgovernmentowned                           TEXT,
  ismunicipalitylocalgovernment                    TEXT,
  isnativehawaiianownedorganizationorfirm          TEXT,
  isotherbusinessororganization                    TEXT,
  isotherminorityowned                             TEXT,
  ispartnershiporlimitedliabilitypartnership       TEXT,
  isschooldistrictlocalgovernment                  TEXT,
  issmallagriculturalcooperative                   TEXT,
  issoleproprietorship                             TEXT,
  istownshiplocalgovernment                        TEXT,
  istriballyownedfirm                              TEXT,
  istribalcollege                                  TEXT,
  isalaskannativeownedcorporationorfirm            TEXT,
  iscorporateentitytaxexempt                       TEXT,
  iswomenownedsmallbusiness                        TEXT,
  isecondisadvwomenownedsmallbusiness              TEXT,
  isjointventurewomenownedsmallbusiness            TEXT,
  isjointventureecondisadvwomenownedsmallbusiness  TEXT,
  walshhealyact                                    TEXT,
  servicecontractact                               TEXT,
  davisbaconact                                    TEXT,
  clingercohenact                                  TEXT,
  otherstatutoryauthority                          TEXT,
  prime_awardee_executive1                         TEXT,
  prime_awardee_executive1_compensation            TEXT,
  prime_awardee_executive2                         TEXT,
  prime_awardee_executive2_compensation            TEXT,
  prime_awardee_executive3                         TEXT,
  prime_awardee_executive3_compensation            TEXT,
  prime_awardee_executive4                         TEXT,
  prime_awardee_executive4_compensation            TEXT,
  prime_awardee_executive5                         TEXT,
  prime_awardee_executive5_compensation            TEXT,
  interagencycontractingauthority                  TEXT,
  last_modified_date                               TEXT,
  CONSTRAINT pk_contract_csv PRIMARY KEY (unique_transaction_id, last_modified_date)
);

CREATE TABLE IF NOT EXISTS contract_all (
  unique_transaction_id VARCHAR(32),
  last_modified_date DATE,
  CONSTRAINT pk_contract_all PRIMARY KEY (unique_transaction_id, last_modified_date),
  transaction_status VARCHAR(6),
  CONSTRAINT fk_transaction_status FOREIGN KEY (transaction_status) REFERENCES transaction_status(status),
  dollars_obligated MONEY,
  base_and_exercised_options_value MONEY,
  base_and_all_options_value MONEY,
  --
  -- contracting department, agency, office:
  contracting_department_id VARCHAR(4),
  contracting_department_name TEXT,
  contracting_agency_id VARCHAR(4),
  contracting_agency_name TEXT,
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
  CONSTRAINT fk_funded_by_foreign_entity FOREIGN KEY (funded_by_foreign_entity) REFERENCES funded_by_foreign_entity(code),
  signed_date DATE,
  effective_date DATE,
  current_completion_date DATE,
  ultimate_completion_date DATE,
  last_date_to_order DATE,
  contract_action_type VARCHAR(8),
  CONSTRAINT fk_contract_action_type FOREIGN KEY (contract_action_type) REFERENCES contract_action_type (code),
  reason_for_modification CHAR,
  CONSTRAINT fk_reason_for_modification FOREIGN KEY (reason_for_modification) REFERENCES reason_for_modification (code),
  type_of_contract_pricing VARCHAR(2),
  CONSTRAINT fk_type_of_contract_pricing FOREIGN KEY (type_of_contract_pricing) REFERENCES type_of_contract_pricing (code),
  price_evaluation_percent_difference REAL,
  subcontract_plan CHAR,
  CONSTRAINT fk_subcontract_plan FOREIGN KEY (subcontract_plan) REFERENCES subcontract_plan (code),
  letter_contract CHAR,
  CONSTRAINT fk_letter_contract FOREIGN KEY (letter_contract) REFERENCES letter_contract (code),
  multiyear_contract CHAR,
  CONSTRAINT fk_multiyear_contract FOREIGN KEY (multiyear_contract) REFERENCES multiyear_contract (code),
  performance_based_service_contract CHAR,
  CONSTRAINT fk_performance_based_service_contract FOREIGN KEY (performance_based_service_contract) REFERENCES performance_based_service_contract (code),
  major_program_code TEXT,
  contingency_humanitarian_peacekeeping_operation CHAR,
  CONSTRAINT fk_contingency_humanitarian_peacekeeping_operation FOREIGN KEY (contingency_humanitarian_peacekeeping_operation) REFERENCES contingency_humanitarian_peacekeeping_operation (code),
  contract_financing CHAR,
  CONSTRAINT fk_contract_financing FOREIGN KEY (contract_financing) REFERENCES contract_financing (code),
  cost_or_pricing_data CHAR,
  CONSTRAINT fk_cost_or_pricing_data FOREIGN KEY (cost_or_pricing_data) REFERENCES cost_or_pricing_data(code),
  cost_accounting_standards_clause CHAR,
  CONSTRAINT fk_cost_accounting_standards_clause FOREIGN KEY (cost_accounting_standards_clause) REFERENCES cost_accounting_standards_clause(code),
  descriptionofcontractrequirement TEXT,
  purchase_card_as_payment_method CHAR,
  CONSTRAINT fk_purchase_card_as_payment_method FOREIGN KEY (purchase_card_as_payment_method) REFERENCES purchase_card_as_payment_method(code),
  number_of_actions INTEGER,
  national_interest_action VARCHAR(4),
  CONSTRAINT fk_national_interest_action FOREIGN KEY (national_interest_action) REFERENCES national_interest_action(code),
  prog_source_agency VARCHAR(2),
  prog_source_account VARCHAR(4),
  prog_source_subacct VARCHAR(3),
  account_title TEXT,
  recovery_flag VARCHAR(4),
  CONSTRAINT fk_recovery_flag FOREIGN KEY (recovery_flag) REFERENCES recovery_flag(code),
  type_of_idc CHAR,
  CONSTRAINT fk_type_of_idc FOREIGN KEY (type_of_idc) REFERENCES type_of_idc(code),
  multiple_or_single_award_idc CHAR,
  CONSTRAINT fk_multiple_or_single_award_idc FOREIGN KEY (multiple_or_single_award_idc) REFERENCES multiple_or_single_award_idc(code),
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
  ccr_exception CHAR,
  CONSTRAINT fk_ccr_exception FOREIGN KEY (ccr_exception) REFERENCES ccr_exception(code),
  street_address_1 TEXT,
  street_address_2 TEXT,
  street_address_3 TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  country VARCHAR(3),
  CONSTRAINT fk_country FOREIGN KEY (country) REFERENCES country(code),
  congressional_district VARCHAR(4),
  vendor_site_code TEXT,
  vendor_alternate_site_code TEXT,
  duns_number VARCHAR(9),
  parent_duns_number VARCHAR(9),
  phone_no TEXT,
  fax_no TEXT,
  registration_date DATE,
  renewal_date DATE,
  parent_name TEXT,
  --
  --
  --
  location_code TEXT,
  place_of_performance_city TEXT,
  place_of_performance_state VARCHAR(2),
  CONSTRAINT fk_place_of_performance_state FOREIGN KEY (place_of_performance_state) REFERENCES state(code),
  place_of_performance_country VARCHAR(3),
  CONSTRAINT fk_place_of_performance_country FOREIGN KEY (place_of_performance_country) REFERENCES country(code),
  place_of_performance_zip_code TEXT,
  place_of_performance_congressional_district VARCHAR(4),
  product_or_service_category VARCHAR(2),
  CONSTRAINT fk_product_or_service_category FOREIGN KEY (product_or_service_category) REFERENCES product_or_service_category(code),
  product_or_service_code VARCHAR(4),
  CONSTRAINT fk_product_or_service_code FOREIGN KEY (product_or_service_code) REFERENCES product_or_service_code(code),
  systemequipmentcode                              TEXT,
  claimantprogramcode                              TEXT,
  principalnaicscode                               TEXT,
  informationtechnologycommercialitemcategory      TEXT,
  gfe_gfp                                          TEXT,
  useofepadesignatedproducts                       TEXT,
  recoveredmaterialclauses                         TEXT,
  seatransportation                                TEXT,
  contractbundling                                 TEXT,
  consolidatedcontract                             TEXT,
  countryoforigin                                  TEXT,
  placeofmanufacture                               TEXT,
  manufacturingorganizationtype                    TEXT,
  agencyid                                         TEXT,
  piid                                             TEXT,
  modnumber                                        TEXT,
  transactionnumber                                TEXT,
  fiscal_year                                      TEXT,
  idvagencyid                                      TEXT,
  idvpiid                                          TEXT,
  idvmodificationnumber                            TEXT,
  solicitationid                                   TEXT,
  extentcompeted                                   TEXT,
  reasonnotcompeted                                TEXT,
  numberofoffersreceived                           TEXT,
  commercialitemacquisitionprocedures              TEXT,
  commercialitemtestprogram                        TEXT,
  smallbusinesscompetitivenessdemonstrationprogram TEXT,
  a76action                                        TEXT,
  competitiveprocedures                            TEXT,
  solicitationprocedures                           TEXT,
  typeofsetaside                                   TEXT,
  localareasetaside                                TEXT,
  evaluatedpreference                              TEXT,
  fedbizopps                                       TEXT,
  research                                         TEXT,
  statutoryexceptiontofairopportunity              TEXT,
  organizationaltype                               TEXT,
  numberofemployees                                TEXT,
  annualrevenue                                    TEXT,
  firm8aflag                                       TEXT,
  hubzoneflag                                      TEXT,
  sdbflag                                          TEXT,
  issbacertifiedsmalldisadvantagedbusiness         TEXT,
  shelteredworkshopflag                            TEXT,
  hbcuflag                                         TEXT,
  educationalinstitutionflag                       TEXT,
  womenownedflag                                   TEXT,
  veteranownedflag                                 TEXT,
  srdvobflag                                       TEXT,
  localgovernmentflag                              TEXT,
  minorityinstitutionflag                          TEXT,
  aiobflag                                         TEXT,
  stategovernmentflag                              TEXT,
  federalgovernmentflag                            TEXT,
  minorityownedbusinessflag                        TEXT,
  apaobflag                                        TEXT,
  tribalgovernmentflag                             TEXT,
  baobflag                                         TEXT,
  naobflag                                         TEXT,
  saaobflag                                        TEXT,
  nonprofitorganizationflag                        TEXT,
  isothernotforprofitorganization                  TEXT,
  isforprofitorganization                          TEXT,
  isfoundation                                     TEXT,
  haobflag                                         TEXT,
  ishispanicservicinginstitution                   TEXT,
  emergingsmallbusinessflag                        TEXT,
  hospitalflag                                     TEXT,
  contractingofficerbusinesssizedetermination      TEXT,
  is1862landgrantcollege                           TEXT,
  is1890landgrantcollege                           TEXT,
  is1994landgrantcollege                           TEXT,
  isveterinarycollege                              TEXT,
  isveterinaryhospital                             TEXT,
  isprivateuniversityorcollege                     TEXT,
  isschoolofforestry                               TEXT,
  isstatecontrolledinstitutionofhigherlearning     TEXT,
  isserviceprovider                                TEXT,
  receivescontracts                                TEXT,
  receivesgrants                                   TEXT,
  receivescontractsandgrants                       TEXT,
  isairportauthority                               TEXT,
  iscouncilofgovernments                           TEXT,
  ishousingauthoritiespublicortribal               TEXT,
  isinterstateentity                               TEXT,
  isplanningcommission                             TEXT,
  isportauthority                                  TEXT,
  istransitauthority                               TEXT,
  issubchapterscorporation                         TEXT,
  islimitedliabilitycorporation                    TEXT,
  isforeignownedandlocated                         TEXT,
  isarchitectureandengineering                     TEXT,
  isdotcertifieddisadvantagedbusinessenterprise    TEXT,
  iscitylocalgovernment                            TEXT,
  iscommunitydevelopedcorporationownedfirm         TEXT,
  iscommunitydevelopmentcorporation                TEXT,
  isconstructionfirm                               TEXT,
  ismanufacturerofgoods                            TEXT,
  iscorporateentitynottaxexempt                    TEXT,
  iscountylocalgovernment                          TEXT,
  isdomesticshelter                                TEXT,
  isfederalgovernmentagency                        TEXT,
  isfederallyfundedresearchanddevelopmentcorp      TEXT,
  isforeigngovernment                              TEXT,
  isindiantribe                                    TEXT,
  isintermunicipallocalgovernment                  TEXT,
  isinternationalorganization                      TEXT,
  islaborsurplusareafirm                           TEXT,
  islocalgovernmentowned                           TEXT,
  ismunicipalitylocalgovernment                    TEXT,
  isnativehawaiianownedorganizationorfirm          TEXT,
  isotherbusinessororganization                    TEXT,
  isotherminorityowned                             TEXT,
  ispartnershiporlimitedliabilitypartnership       TEXT,
  isschooldistrictlocalgovernment                  TEXT,
  issmallagriculturalcooperative                   TEXT,
  issoleproprietorship                             TEXT,
  istownshiplocalgovernment                        TEXT,
  istriballyownedfirm                              TEXT,
  istribalcollege                                  TEXT,
  isalaskannativeownedcorporationorfirm            TEXT,
  iscorporateentitytaxexempt                       TEXT,
  iswomenownedsmallbusiness                        TEXT,
  isecondisadvwomenownedsmallbusiness              TEXT,
  isjointventurewomenownedsmallbusiness            TEXT,
  isjointventureecondisadvwomenownedsmallbusiness  TEXT,
  walshhealyact                                    TEXT,
  servicecontractact                               TEXT,
  davisbaconact                                    TEXT,
  clingercohenact                                  TEXT,
  otherstatutoryauthority                          TEXT,
  prime_awardee_executive1                         TEXT,
  prime_awardee_executive1_compensation            TEXT,
  prime_awardee_executive2                         TEXT,
  prime_awardee_executive2_compensation            TEXT,
  prime_awardee_executive3                         TEXT,
  prime_awardee_executive3_compensation            TEXT,
  prime_awardee_executive4                         TEXT,
  prime_awardee_executive4_compensation            TEXT,
  prime_awardee_executive5                         TEXT,
  prime_awardee_executive5_compensation            TEXT,
  interagencycontractingauthority                  TEXT
);