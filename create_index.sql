CREATE INDEX IF NOT EXISTS idx_transaction_status ON contract_csv (transaction_status);
CREATE INDEX IF NOT EXISTS idx_dollarsobligated ON contract_csv (dollarsobligated);
CREATE INDEX IF NOT EXISTS idx_baseandexercisedoptionsvalue ON contract_csv (baseandexercisedoptionsvalue);
CREATE INDEX IF NOT EXISTS idx_baseandalloptionsvalue ON contract_csv (baseandalloptionsvalue);
CREATE INDEX IF NOT EXISTS idx_maj_agency_cat ON contract_csv (maj_agency_cat);
CREATE INDEX IF NOT EXISTS idx_mod_agency ON contract_csv (mod_agency);
CREATE INDEX IF NOT EXISTS idx_maj_fund_agency_cat ON contract_csv (maj_fund_agency_cat);
CREATE INDEX IF NOT EXISTS idx_contractingofficeagencyid ON contract_csv (contractingofficeagencyid);
CREATE INDEX IF NOT EXISTS idx_contractingofficeid ON contract_csv (contractingofficeid);
CREATE INDEX IF NOT EXISTS idx_fundingrequestingagencyid ON contract_csv (fundingrequestingagencyid);
CREATE INDEX IF NOT EXISTS idx_fundingrequestingofficeid ON contract_csv (fundingrequestingofficeid);
CREATE INDEX IF NOT EXISTS idx_fundedbyforeignentity ON contract_csv (fundedbyforeignentity);
CREATE INDEX IF NOT EXISTS idx_signeddate ON contract_csv (signeddate);
CREATE INDEX IF NOT EXISTS idx_effectivedate ON contract_csv (effectivedate);
CREATE INDEX IF NOT EXISTS idx_currentcompletiondate ON contract_csv (currentcompletiondate);
CREATE INDEX IF NOT EXISTS idx_ultimatecompletiondate ON contract_csv (ultimatecompletiondate);
CREATE INDEX IF NOT EXISTS idx_lastdatetoorder ON contract_csv (lastdatetoorder);
CREATE INDEX IF NOT EXISTS idx_contractactiontype ON contract_csv (contractactiontype);
CREATE INDEX IF NOT EXISTS idx_reasonformodification ON contract_csv (reasonformodification);
CREATE INDEX IF NOT EXISTS idx_typeofcontractpricing ON contract_csv (typeofcontractpricing);
CREATE INDEX IF NOT EXISTS idx_priceevaluationpercentdifference ON contract_csv (priceevaluationpercentdifference);
CREATE INDEX IF NOT EXISTS idx_subcontractplan ON contract_csv (subcontractplan);
CREATE INDEX IF NOT EXISTS idx_lettercontract ON contract_csv (lettercontract);
CREATE INDEX IF NOT EXISTS idx_multiyearcontract ON contract_csv (multiyearcontract);
CREATE INDEX IF NOT EXISTS idx_performancebasedservicecontract ON contract_csv (performancebasedservicecontract);
CREATE INDEX IF NOT EXISTS idx_majorprogramcode ON contract_csv (majorprogramcode);
CREATE INDEX IF NOT EXISTS idx_contingencyhumanitarianpeacekeepingoperation ON contract_csv (contingencyhumanitarianpeacekeepingoperation);
CREATE INDEX IF NOT EXISTS idx_contractfinancing ON contract_csv (contractfinancing);
CREATE INDEX IF NOT EXISTS idx_costorpricingdata ON contract_csv (costorpricingdata);
CREATE INDEX IF NOT EXISTS idx_costaccountingstandardsclause ON contract_csv (costaccountingstandardsclause);
--CREATE INDEX IF NOT EXISTS idx_descriptionofcontractrequirement ON contract_csv (descriptionofcontractrequirement);
CREATE INDEX IF NOT EXISTS idx_purchasecardaspaymentmethod ON contract_csv (purchasecardaspaymentmethod);
CREATE INDEX IF NOT EXISTS idx_numberofactions ON contract_csv (numberofactions);
CREATE INDEX IF NOT EXISTS idx_nationalinterestactioncode ON contract_csv (nationalinterestactioncode);
CREATE INDEX IF NOT EXISTS idx_progsourceagency ON contract_csv (progsourceagency);
CREATE INDEX IF NOT EXISTS idx_progsourceaccount ON contract_csv (progsourceaccount);
CREATE INDEX IF NOT EXISTS idx_progsourcesubacct ON contract_csv (progsourcesubacct);
CREATE INDEX IF NOT EXISTS idx_account_title ON contract_csv (account_title);
CREATE INDEX IF NOT EXISTS idx_rec_flag ON contract_csv (rec_flag);
CREATE INDEX IF NOT EXISTS idx_typeofidc ON contract_csv (typeofidc);
CREATE INDEX IF NOT EXISTS idx_multipleorsingleawardidc ON contract_csv (multipleorsingleawardidc);
CREATE INDEX IF NOT EXISTS idx_programacronym ON contract_csv (programacronym);
CREATE INDEX IF NOT EXISTS idx_vendorname ON contract_csv (vendorname);
CREATE INDEX IF NOT EXISTS idx_vendoralternatename ON contract_csv (vendoralternatename);
CREATE INDEX IF NOT EXISTS idx_vendorlegalorganizationname ON contract_csv (vendorlegalorganizationname);
CREATE INDEX IF NOT EXISTS idx_vendordoingasbusinessname ON contract_csv (vendordoingasbusinessname);
CREATE INDEX IF NOT EXISTS idx_divisionname ON contract_csv (divisionname);
CREATE INDEX IF NOT EXISTS idx_divisionnumberorofficecode ON contract_csv (divisionnumberorofficecode);
CREATE INDEX IF NOT EXISTS idx_vendorenabled ON contract_csv (vendorenabled);
CREATE INDEX IF NOT EXISTS idx_vendorlocationdisableflag ON contract_csv (vendorlocationdisableflag);
CREATE INDEX IF NOT EXISTS idx_ccrexception ON contract_csv (ccrexception);
CREATE INDEX IF NOT EXISTS idx_streetaddress ON contract_csv (streetaddress);
CREATE INDEX IF NOT EXISTS idx_streetaddress2 ON contract_csv (streetaddress2);
CREATE INDEX IF NOT EXISTS idx_streetaddress3 ON contract_csv (streetaddress3);
CREATE INDEX IF NOT EXISTS idx_city ON contract_csv (city);
CREATE INDEX IF NOT EXISTS idx_state ON contract_csv (state);
CREATE INDEX IF NOT EXISTS idx_zipcode ON contract_csv (zipcode);
CREATE INDEX IF NOT EXISTS idx_vendorcountrycode ON contract_csv (vendorcountrycode);
CREATE INDEX IF NOT EXISTS idx_vendor_state_code ON contract_csv (vendor_state_code);
CREATE INDEX IF NOT EXISTS idx_vendor_cd ON contract_csv (vendor_cd);
CREATE INDEX IF NOT EXISTS idx_congressionaldistrict ON contract_csv (congressionaldistrict);
CREATE INDEX IF NOT EXISTS idx_vendorsitecode ON contract_csv (vendorsitecode);
CREATE INDEX IF NOT EXISTS idx_vendoralternatesitecode ON contract_csv (vendoralternatesitecode);
CREATE INDEX IF NOT EXISTS idx_dunsnumber ON contract_csv (dunsnumber);
CREATE INDEX IF NOT EXISTS idx_parentdunsnumber ON contract_csv (parentdunsnumber);
CREATE INDEX IF NOT EXISTS idx_phoneno ON contract_csv (phoneno);
CREATE INDEX IF NOT EXISTS idx_faxno ON contract_csv (faxno);
CREATE INDEX IF NOT EXISTS idx_registrationdate ON contract_csv (registrationdate);
CREATE INDEX IF NOT EXISTS idx_renewaldate ON contract_csv (renewaldate);
CREATE INDEX IF NOT EXISTS idx_mod_parent ON contract_csv (mod_parent);
CREATE INDEX IF NOT EXISTS idx_locationcode ON contract_csv (locationcode);
CREATE INDEX IF NOT EXISTS idx_statecode ON contract_csv (statecode);
CREATE INDEX IF NOT EXISTS idx_PlaceofPerformanceCity ON contract_csv (PlaceofPerformanceCity);
CREATE INDEX IF NOT EXISTS idx_pop_state_code ON contract_csv (pop_state_code);
CREATE INDEX IF NOT EXISTS idx_placeofperformancecountrycode ON contract_csv (placeofperformancecountrycode);
CREATE INDEX IF NOT EXISTS idx_placeofperformancezipcode ON contract_csv (placeofperformancezipcode);
CREATE INDEX IF NOT EXISTS idx_pop_cd ON contract_csv (pop_cd);
CREATE INDEX IF NOT EXISTS idx_placeofperformancecongressionaldistrict ON contract_csv (placeofperformancecongressionaldistrict);
CREATE INDEX IF NOT EXISTS idx_psc_cat ON contract_csv (psc_cat);
CREATE INDEX IF NOT EXISTS idx_productorservicecode ON contract_csv (productorservicecode);
CREATE INDEX IF NOT EXISTS idx_systemequipmentcode ON contract_csv (systemequipmentcode);
CREATE INDEX IF NOT EXISTS idx_claimantprogramcode ON contract_csv (claimantprogramcode);
CREATE INDEX IF NOT EXISTS idx_principalnaicscode ON contract_csv (principalnaicscode);
CREATE INDEX IF NOT EXISTS idx_informationtechnologycommercialitemcategory ON contract_csv (informationtechnologycommercialitemcategory);
CREATE INDEX IF NOT EXISTS idx_gfe_gfp ON contract_csv (gfe_gfp);
CREATE INDEX IF NOT EXISTS idx_useofepadesignatedproducts ON contract_csv (useofepadesignatedproducts);
CREATE INDEX IF NOT EXISTS idx_recoveredmaterialclauses ON contract_csv (recoveredmaterialclauses);
CREATE INDEX IF NOT EXISTS idx_seatransportation ON contract_csv (seatransportation);
CREATE INDEX IF NOT EXISTS idx_contractbundling ON contract_csv (contractbundling);
CREATE INDEX IF NOT EXISTS idx_consolidatedcontract ON contract_csv (consolidatedcontract);
CREATE INDEX IF NOT EXISTS idx_countryoforigin ON contract_csv (countryoforigin);
CREATE INDEX IF NOT EXISTS idx_placeofmanufacture ON contract_csv (placeofmanufacture);
CREATE INDEX IF NOT EXISTS idx_manufacturingorganizationtype ON contract_csv (manufacturingorganizationtype);
CREATE INDEX IF NOT EXISTS idx_agencyid ON contract_csv (agencyid);
CREATE INDEX IF NOT EXISTS idx_piid ON contract_csv (piid);
CREATE INDEX IF NOT EXISTS idx_modnumber ON contract_csv (modnumber);
CREATE INDEX IF NOT EXISTS idx_transactionnumber ON contract_csv (transactionnumber);
CREATE INDEX IF NOT EXISTS idx_fiscal_year ON contract_csv (fiscal_year);
CREATE INDEX IF NOT EXISTS idx_idvagencyid ON contract_csv (idvagencyid);
CREATE INDEX IF NOT EXISTS idx_idvpiid ON contract_csv (idvpiid);
CREATE INDEX IF NOT EXISTS idx_idvmodificationnumber ON contract_csv (idvmodificationnumber);
CREATE INDEX IF NOT EXISTS idx_solicitationid ON contract_csv (solicitationid);
CREATE INDEX IF NOT EXISTS idx_extentcompeted ON contract_csv (extentcompeted);
CREATE INDEX IF NOT EXISTS idx_reasonnotcompeted ON contract_csv (reasonnotcompeted);
CREATE INDEX IF NOT EXISTS idx_numberofoffersreceived ON contract_csv (numberofoffersreceived);
CREATE INDEX IF NOT EXISTS idx_commercialitemacquisitionprocedures ON contract_csv (commercialitemacquisitionprocedures);
CREATE INDEX IF NOT EXISTS idx_commercialitemtestprogram ON contract_csv (commercialitemtestprogram);
CREATE INDEX IF NOT EXISTS idx_smallbusinesscompetitivenessdemonstrationprogram ON contract_csv (smallbusinesscompetitivenessdemonstrationprogram);
CREATE INDEX IF NOT EXISTS idx_a76action ON contract_csv (a76action);
CREATE INDEX IF NOT EXISTS idx_competitiveprocedures ON contract_csv (competitiveprocedures);
CREATE INDEX IF NOT EXISTS idx_solicitationprocedures ON contract_csv (solicitationprocedures);
CREATE INDEX IF NOT EXISTS idx_typeofsetaside ON contract_csv (typeofsetaside);
CREATE INDEX IF NOT EXISTS idx_localareasetaside ON contract_csv (localareasetaside);
CREATE INDEX IF NOT EXISTS idx_evaluatedpreference ON contract_csv (evaluatedpreference);
CREATE INDEX IF NOT EXISTS idx_fedbizopps ON contract_csv (fedbizopps);
CREATE INDEX IF NOT EXISTS idx_research ON contract_csv (research);
CREATE INDEX IF NOT EXISTS idx_statutoryexceptiontofairopportunity ON contract_csv (statutoryexceptiontofairopportunity);
CREATE INDEX IF NOT EXISTS idx_organizationaltype ON contract_csv (organizationaltype);
CREATE INDEX IF NOT EXISTS idx_numberofemployees ON contract_csv (numberofemployees);
CREATE INDEX IF NOT EXISTS idx_annualrevenue ON contract_csv (annualrevenue);
CREATE INDEX IF NOT EXISTS idx_firm8aflag ON contract_csv (firm8aflag);
CREATE INDEX IF NOT EXISTS idx_hubzoneflag ON contract_csv (hubzoneflag);
CREATE INDEX IF NOT EXISTS idx_sdbflag ON contract_csv (sdbflag);
CREATE INDEX IF NOT EXISTS idx_issbacertifiedsmalldisadvantagedbusiness ON contract_csv (issbacertifiedsmalldisadvantagedbusiness);
CREATE INDEX IF NOT EXISTS idx_shelteredworkshopflag ON contract_csv (shelteredworkshopflag);
CREATE INDEX IF NOT EXISTS idx_hbcuflag ON contract_csv (hbcuflag);
CREATE INDEX IF NOT EXISTS idx_educationalinstitutionflag ON contract_csv (educationalinstitutionflag);
CREATE INDEX IF NOT EXISTS idx_womenownedflag ON contract_csv (womenownedflag);
CREATE INDEX IF NOT EXISTS idx_veteranownedflag ON contract_csv (veteranownedflag);
CREATE INDEX IF NOT EXISTS idx_srdvobflag ON contract_csv (srdvobflag);
CREATE INDEX IF NOT EXISTS idx_localgovernmentflag ON contract_csv (localgovernmentflag);
CREATE INDEX IF NOT EXISTS idx_minorityinstitutionflag ON contract_csv (minorityinstitutionflag);
CREATE INDEX IF NOT EXISTS idx_aiobflag ON contract_csv (aiobflag);
CREATE INDEX IF NOT EXISTS idx_stategovernmentflag ON contract_csv (stategovernmentflag);
CREATE INDEX IF NOT EXISTS idx_federalgovernmentflag ON contract_csv (federalgovernmentflag);
CREATE INDEX IF NOT EXISTS idx_minorityownedbusinessflag ON contract_csv (minorityownedbusinessflag);
CREATE INDEX IF NOT EXISTS idx_apaobflag ON contract_csv (apaobflag);
CREATE INDEX IF NOT EXISTS idx_tribalgovernmentflag ON contract_csv (tribalgovernmentflag);
CREATE INDEX IF NOT EXISTS idx_baobflag ON contract_csv (baobflag);
CREATE INDEX IF NOT EXISTS idx_naobflag ON contract_csv (naobflag);
CREATE INDEX IF NOT EXISTS idx_saaobflag ON contract_csv (saaobflag);
CREATE INDEX IF NOT EXISTS idx_nonprofitorganizationflag ON contract_csv (nonprofitorganizationflag);
CREATE INDEX IF NOT EXISTS idx_isothernotforprofitorganization ON contract_csv (isothernotforprofitorganization);
CREATE INDEX IF NOT EXISTS idx_isforprofitorganization ON contract_csv (isforprofitorganization);
CREATE INDEX IF NOT EXISTS idx_isfoundation ON contract_csv (isfoundation);
CREATE INDEX IF NOT EXISTS idx_haobflag ON contract_csv (haobflag);
CREATE INDEX IF NOT EXISTS idx_ishispanicservicinginstitution ON contract_csv (ishispanicservicinginstitution);
CREATE INDEX IF NOT EXISTS idx_emergingsmallbusinessflag ON contract_csv (emergingsmallbusinessflag);
CREATE INDEX IF NOT EXISTS idx_hospitalflag ON contract_csv (hospitalflag);
CREATE INDEX IF NOT EXISTS idx_contractingofficerbusinesssizedetermination ON contract_csv (contractingofficerbusinesssizedetermination);
CREATE INDEX IF NOT EXISTS idx_is1862landgrantcollege ON contract_csv (is1862landgrantcollege);
CREATE INDEX IF NOT EXISTS idx_is1890landgrantcollege ON contract_csv (is1890landgrantcollege);
CREATE INDEX IF NOT EXISTS idx_is1994landgrantcollege ON contract_csv (is1994landgrantcollege);
CREATE INDEX IF NOT EXISTS idx_isveterinarycollege ON contract_csv (isveterinarycollege);
CREATE INDEX IF NOT EXISTS idx_isveterinaryhospital ON contract_csv (isveterinaryhospital);
CREATE INDEX IF NOT EXISTS idx_isprivateuniversityorcollege ON contract_csv (isprivateuniversityorcollege);
CREATE INDEX IF NOT EXISTS idx_isschoolofforestry ON contract_csv (isschoolofforestry);
CREATE INDEX IF NOT EXISTS idx_isstatecontrolledinstitutionofhigherlearning ON contract_csv (isstatecontrolledinstitutionofhigherlearning);
CREATE INDEX IF NOT EXISTS idx_isserviceprovider ON contract_csv (isserviceprovider);
CREATE INDEX IF NOT EXISTS idx_receivescontracts ON contract_csv (receivescontracts);
CREATE INDEX IF NOT EXISTS idx_receivesgrants ON contract_csv (receivesgrants);
CREATE INDEX IF NOT EXISTS idx_receivescontractsandgrants ON contract_csv (receivescontractsandgrants);
CREATE INDEX IF NOT EXISTS idx_isairportauthority ON contract_csv (isairportauthority);
CREATE INDEX IF NOT EXISTS idx_iscouncilofgovernments ON contract_csv (iscouncilofgovernments);
CREATE INDEX IF NOT EXISTS idx_ishousingauthoritiespublicortribal ON contract_csv (ishousingauthoritiespublicortribal);
CREATE INDEX IF NOT EXISTS idx_isinterstateentity ON contract_csv (isinterstateentity);
CREATE INDEX IF NOT EXISTS idx_isplanningcommission ON contract_csv (isplanningcommission);
CREATE INDEX IF NOT EXISTS idx_isportauthority ON contract_csv (isportauthority);
CREATE INDEX IF NOT EXISTS idx_istransitauthority ON contract_csv (istransitauthority);
CREATE INDEX IF NOT EXISTS idx_issubchapterscorporation ON contract_csv (issubchapterscorporation);
CREATE INDEX IF NOT EXISTS idx_islimitedliabilitycorporation ON contract_csv (islimitedliabilitycorporation);
CREATE INDEX IF NOT EXISTS idx_isforeignownedandlocated ON contract_csv (isforeignownedandlocated);
CREATE INDEX IF NOT EXISTS idx_isarchitectureandengineering ON contract_csv (isarchitectureandengineering);
CREATE INDEX IF NOT EXISTS idx_isdotcertifieddisadvantagedbusinessenterprise ON contract_csv (isdotcertifieddisadvantagedbusinessenterprise);
CREATE INDEX IF NOT EXISTS idx_iscitylocalgovernment ON contract_csv (iscitylocalgovernment);
CREATE INDEX IF NOT EXISTS idx_iscommunitydevelopedcorporationownedfirm ON contract_csv (iscommunitydevelopedcorporationownedfirm);
CREATE INDEX IF NOT EXISTS idx_iscommunitydevelopmentcorporation ON contract_csv (iscommunitydevelopmentcorporation);
CREATE INDEX IF NOT EXISTS idx_isconstructionfirm ON contract_csv (isconstructionfirm);
CREATE INDEX IF NOT EXISTS idx_ismanufacturerofgoods ON contract_csv (ismanufacturerofgoods);
CREATE INDEX IF NOT EXISTS idx_iscorporateentitynottaxexempt ON contract_csv (iscorporateentitynottaxexempt);
CREATE INDEX IF NOT EXISTS idx_iscountylocalgovernment ON contract_csv (iscountylocalgovernment);
CREATE INDEX IF NOT EXISTS idx_isdomesticshelter ON contract_csv (isdomesticshelter);
CREATE INDEX IF NOT EXISTS idx_isfederalgovernmentagency ON contract_csv (isfederalgovernmentagency);
CREATE INDEX IF NOT EXISTS idx_isfederallyfundedresearchanddevelopmentcorp ON contract_csv (isfederallyfundedresearchanddevelopmentcorp);
CREATE INDEX IF NOT EXISTS idx_isforeigngovernment ON contract_csv (isforeigngovernment);
CREATE INDEX IF NOT EXISTS idx_isindiantribe ON contract_csv (isindiantribe);
CREATE INDEX IF NOT EXISTS idx_isintermunicipallocalgovernment ON contract_csv (isintermunicipallocalgovernment);
CREATE INDEX IF NOT EXISTS idx_isinternationalorganization ON contract_csv (isinternationalorganization);
CREATE INDEX IF NOT EXISTS idx_islaborsurplusareafirm ON contract_csv (islaborsurplusareafirm);
CREATE INDEX IF NOT EXISTS idx_islocalgovernmentowned ON contract_csv (islocalgovernmentowned);
CREATE INDEX IF NOT EXISTS idx_ismunicipalitylocalgovernment ON contract_csv (ismunicipalitylocalgovernment);
CREATE INDEX IF NOT EXISTS idx_isnativehawaiianownedorganizationorfirm ON contract_csv (isnativehawaiianownedorganizationorfirm);
CREATE INDEX IF NOT EXISTS idx_isotherbusinessororganization ON contract_csv (isotherbusinessororganization);
CREATE INDEX IF NOT EXISTS idx_isotherminorityowned ON contract_csv (isotherminorityowned);
CREATE INDEX IF NOT EXISTS idx_ispartnershiporlimitedliabilitypartnership ON contract_csv (ispartnershiporlimitedliabilitypartnership);
CREATE INDEX IF NOT EXISTS idx_isschooldistrictlocalgovernment ON contract_csv (isschooldistrictlocalgovernment);
CREATE INDEX IF NOT EXISTS idx_issmallagriculturalcooperative ON contract_csv (issmallagriculturalcooperative);
CREATE INDEX IF NOT EXISTS idx_issoleproprietorship ON contract_csv (issoleproprietorship);
CREATE INDEX IF NOT EXISTS idx_istownshiplocalgovernment ON contracat_csv (istownshiplocalgovernment);
CREATE INDEX IF NOT EXISTS idx_istriballyownedfirm ON contract_csv (istriballyownedfirm);
CREATE INDEX IF NOT EXISTS idx_istribalcollege ON contract_csv (istribalcollege);
CREATE INDEX IF NOT EXISTS idx_isalaskannativeownedcorporationorfirm ON contract_csv (isalaskannativeownedcorporationorfirm);
CREATE INDEX IF NOT EXISTS idx_iscorporateentitytaxexempt ON contract_csv (iscorporateentitytaxexempt);
CREATE INDEX IF NOT EXISTS idx_iswomenownedsmallbusiness ON contract_csv (iswomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_isecondisadvwomenownedsmallbusiness ON contract_csv (isecondisadvwomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_isjointventurewomenownedsmallbusiness ON contract_csv (isjointventurewomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_isjointventureecondisadvwomenownedsmallbusiness ON contract_csv (isjointventureecondisadvwomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_walshhealyact ON contract_csv (walshhealyact);
CREATE INDEX IF NOT EXISTS idx_servicecontractact ON contract_csv (servicecontractact);
CREATE INDEX IF NOT EXISTS idx_davisbaconact ON contract_csv (davisbaconact);
CREATE INDEX IF NOT EXISTS idx_clingercohenact ON contract_csv (clingercohenact);
CREATE INDEX IF NOT EXISTS idx_otherstatutoryauthority ON contract_csv (otherstatutoryauthority);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive1 ON contract_csv (prime_awardee_executive1);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive1_compensation ON contract_csv (prime_awardee_executive1_compensation);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive2 ON contract_csv (prime_awardee_executive2);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive2_compensation ON contract_csv (prime_awardee_executive2_compensation);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive3 ON contract_csv (prime_awardee_executive3);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive3_compensation ON contract_csv (prime_awardee_executive3_compensation);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive4 ON contract_csv (prime_awardee_executive4);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive4_compensation ON contract_csv (prime_awardee_executive4_compensation);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive5 ON contract_csv (prime_awardee_executive5);
CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive5_compensation ON contract_csv (prime_awardee_executive5_compensation);
CREATE INDEX IF NOT EXISTS idx_interagencycontractingauthority ON contract_csv (interagencycontractingauthority);