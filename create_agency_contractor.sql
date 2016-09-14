\timing

DROP TABLE IF EXISTS department;

CREATE TABLE IF NOT EXISTS department (
  department_id VARCHAR(4) CONSTRAINT pk_department PRIMARY KEY,
  frequency     INT,
  first         DATE,
  last          DATE
);

DROP TABLE IF EXISTS department_name;

CREATE TABLE IF NOT EXISTS department_name
(
  id              SERIAL CONSTRAINT pk_department_name PRIMARY KEY,
  department_id   VARCHAR(4),
  department_name TEXT,
  frequency       INT,
  first           DATE,
  last            DATE,
  CONSTRAINT u_department_name UNIQUE (department_id, department_name),
  CONSTRAINT fk_department_name FOREIGN KEY (department_id) REFERENCES department (department_id)
);

DROP TABLE IF EXISTS agency;

CREATE TABLE IF NOT EXISTS agency (
  agency_id     VARCHAR(4) CONSTRAINT pk_agency PRIMARY KEY,
  frequency     INT,
  first         DATE,
  last          DATE,
  department_id VARCHAR(4) CONSTRAINT fk_agency_department REFERENCES department (department_id)
);

DROP TABLE IF EXISTS agency_name;

CREATE TABLE IF NOT EXISTS agency_name (
  id          SERIAL CONSTRAINT pk_agency_name PRIMARY KEY,
  agency_id   VARCHAR(4),
  agency_name TEXT,
  frequency   INT,
  first       DATE,
  last        DATE,
  CONSTRAINT u_agency_name UNIQUE (agency_id, agency_name),
  CONSTRAINT fk_agency_name FOREIGN KEY (agency_id) REFERENCES agency (agency_id)
);

DROP TABLE IF EXISTS office;

CREATE TABLE IF NOT EXISTS office (
  id        SERIAL CONSTRAINT pk_office PRIMARY KEY,
  agency_id VARCHAR(4) CONSTRAINT fk_office_agency REFERENCES agency (agency_id),
  office_id VARCHAR(6) NOT NULL,
  frequency INT,
  first     DATE,
  last      DATE,
  CONSTRAINT u_office UNIQUE (agency_id, office_id)
);

DROP TABLE IF EXISTS office_name;

CREATE TABLE IF NOT EXISTS office_name (
  id          SERIAL CONSTRAINT pk_office_name PRIMARY KEY,
  agency_id   VARCHAR(4),
  office_id   VARCHAR(6),
  office_name TEXT,
  frequency   INT,
  first       DATE,
  last        DATE,
  CONSTRAINT u_office_name UNIQUE (agency_id, office_id, office_name),
  CONSTRAINT fk_office_name FOREIGN KEY (agency_id, office_id) REFERENCES office (agency_id, office_id)
);

DROP TABLE IF EXISTS contractor;

CREATE TABLE IF NOT EXISTS contractor (
  duns_number VARCHAR(9) CONSTRAINT pk_contractor PRIMARY KEY,
  frequency   INTEGER,
  first       DATE,
  last        DATE
);

DROP TYPE IF EXISTS name_type;

CREATE TYPE name_type AS ENUM
('name',
  'alternate_name',
  'legal_organization_name',
  'doing_as_business_name');

DROP TABLE IF EXISTS contractor_name;

CREATE TABLE IF NOT EXISTS contractor_name (
  id          SERIAL CONSTRAINT pk_contractor_name PRIMARY KEY,
  duns_number VARCHAR(9),
  name        TEXT,
  type        name_type,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT u_contractor_name UNIQUE (duns_number, name, type),
  CONSTRAINT fk_contractor_name FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_division_name;

CREATE TABLE IF NOT EXISTS contractor_division_name (
  id serial CONSTRAINT pk_contractor_division_name PRIMARY KEY,
  duns_number   VARCHAR(9),
  division_name TEXT,
  frequency     INTEGER,
  first         DATE,
  last          DATE,
  CONSTRAINT u_contractor_division_name UNIQUE (duns_number, division_name),
  CONSTRAINT fk_contractor_division_name FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_division_number_or_office_code;

CREATE TABLE IF NOT EXISTS contractor_division_number_or_office_code (
  id SERIAL CONSTRAINT pk_contractor_division_number_or_office_code PRIMARY KEY,
  duns_number                    VARCHAR(9),
  division_number_or_office_code TEXT,
  first                          DATE,
  last                           DATE,
  frequency                      INTEGER,
  CONSTRAINT u_contractor_division_number_or_office_code UNIQUE (duns_number, division_number_or_office_code),
  CONSTRAINT fk_contractor_division_number_or_office_code FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_enabled;

CREATE TABLE IF NOT EXISTS contractor_enabled (
  id SERIAL CONSTRAINT pk_contractor_enabled PRIMARY KEY,
  duns_number VARCHAR(9),
  enabled     TEXT,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT u_contractor_enabled UNIQUE (duns_number, enabled),
  CONSTRAINT fk_contractor_enabled FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_location_disable_flag;

CREATE TABLE IF NOT EXISTS contractor_location_disable_flag (
  id SERIAL CONSTRAINT pk_contractor_location_disable_flag PRIMARY KEY,
  duns_number           VARCHAR(9),
  location_disable_flag TEXT,
  frequency             INTEGER,
  first                 DATE,
  last                  DATE,
  CONSTRAINT u_contractor_location_disable_flag UNIQUE (duns_number, location_disable_flag),
  CONSTRAINT fk_contractor_location_disable_flag FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_parent;


CREATE TABLE IF NOT EXISTS contractor_parent (
  id SERIAL CONSTRAINT pk_contractor_parent PRIMARY KEY,
  duns_number        VARCHAR(9),
  parent_duns_number VARCHAR(9),
  frequency          INTEGER,
  first              DATE,
  last               DATE,
  CONSTRAINT u_contractor_parent UNIQUE (duns_number, parent_duns_number),
  CONSTRAINT fk_contractor_parent_child FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_parent_parent FOREIGN KEY (parent_duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_registration_date;


CREATE TABLE IF NOT EXISTS contractor_registration_date (
  id SERIAL CONSTRAINT pk_contractor_registration_date PRIMARY KEY,
  duns_number       VARCHAR(9),
  registration_date DATE,
  frequency         INTEGER,
  first             DATE,
  last              DATE,
  CONSTRAINT u_contractor_registration_date UNIQUE (duns_number, registration_date),
  CONSTRAINT fk_contractor_registration_date FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_renewal_date;


CREATE TABLE IF NOT EXISTS contractor_renewal_date (
  id SERIAL CONSTRAINT pk_contractor_renewal_date PRIMARY KEY,
  duns_number  VARCHAR(9),
  renewal_date DATE,
  frequency    INTEGER,
  first        DATE,
  last         DATE,
  CONSTRAINT u_contractor_renewal_date UNIQUE (duns_number, renewal_date),
  CONSTRAINT fk_contractor_renewal_date FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_phone_number;


CREATE TABLE IF NOT EXISTS contractor_phone_number (
  id SERIAL CONSTRAINT pk_contractor_phone_number PRIMARY KEY,
  duns_number  VARCHAR(9),
  phone_number TEXT,
  frequency    INTEGER,
  first        DATE,
  last         DATE,
  CONSTRAINT u_contractor_phone_number UNIQUE (duns_number, phone_number),
  CONSTRAINT fk_contractor_phone_number FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_fax_number;


CREATE TABLE IF NOT EXISTS contractor_fax_number (
  id SERIAL CONSTRAINT pk_contractor_fax_number PRIMARY KEY,
  duns_number VARCHAR(9),
  fax_number  TEXT,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT u_contractor_fax_number UNIQUE (duns_number, fax_number),
  CONSTRAINT fk_contractor_fax_number FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_organizational_type;


CREATE TABLE IF NOT EXISTS contractor_organizational_type (
  id SERIAL CONSTRAINT pk_contractor_organizational_type PRIMARY KEY,
  duns_number         VARCHAR(9),
  organizational_type TEXT,
  frequency           INTEGER,
  first               DATE,
  last                DATE,
  CONSTRAINT u_contractor_organizational_type UNIQUE (duns_number, organizational_type),
  CONSTRAINT fk_contractor_organizational_type FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_number_of_employees;




CREATE TABLE IF NOT EXISTS contractor_number_of_employees (
  id SERIAL CONSTRAINT pk_contractor_number_of_employees PRIMARY KEY,
  duns_number         VARCHAR(9),
  number_of_employees BIGINT,
  frequency           INTEGER,
  first               DATE,
  last                DATE,
  CONSTRAINT u_contractor_number_of_employees UNIQUE (duns_number, number_of_employees),
  CONSTRAINT fk_contractor_number_of_employees FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_business_size;


CREATE TABLE IF NOT EXISTS contractor_business_size (
  id SERIAL CONSTRAINT pk_contractor_business_size PRIMARY KEY,
  duns_number    VARCHAR(9),
  business_size CHAR,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT u_contractor_business_size UNIQUE (duns_number, business_size),
  CONSTRAINT fk_contractor_business_size_duns FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_business_size FOREIGN KEY (business_size) REFERENCES business_size (code)
);

DROP TABLE IF EXISTS contractor_ccr_exception;


CREATE TABLE IF NOT EXISTS contractor_ccr_exception (
  id SERIAL CONSTRAINT pk_contractor_ccr_exception PRIMARY KEY,
  duns_number    VARCHAR(9),
  ccr_exception CHAR,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT u_contractor_ccr_exception UNIQUE (duns_number, ccr_exception),
  CONSTRAINT fk_contractor_ccr_exception_duns FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_ccr_exception FOREIGN KEY (ccr_exception) REFERENCES ccr_exception (code)
);

DROP TABLE IF EXISTS contractor_site_code;


CREATE TABLE IF NOT EXISTS contractor_site_code (
  id SERIAL CONSTRAINT pk_contractor_site_code PRIMARY KEY,
  duns_number    VARCHAR(9),
  site_code TEXT,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT u_contractor_site_code UNIQUE (duns_number, site_code),
  CONSTRAINT fk_contractor_site_code FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_alternate_site_code;

CREATE TABLE IF NOT EXISTS contractor_alternate_site_code (
  id SERIAL CONSTRAINT pk_contractor_alternate_site_code PRIMARY KEY,
  duns_number    VARCHAR(9),
  alternate_site_code TEXT,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT u_contractor_alternate_site_code UNIQUE (duns_number, alternate_site_code),
  CONSTRAINT fk_contractor_alternate_site_code FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

DROP TABLE IF EXISTS contractor_address;

CREATE TABLE IF NOT EXISTS contractor_address (
  id                               SERIAL CONSTRAINT pk_contractor_address PRIMARY KEY,
  duns_number                      VARCHAR(9) NOT NULL,
  street_address_1                 TEXT       NOT NULL,
  street_address_2                 TEXT       NOT NULL,
  street_address_3                 TEXT       NOT NULL,
  city                             TEXT       NOT NULL,
  state                            VARCHAR(2),
  other_location_info              TEXT       NOT NULL,
  zip_code                         TEXT       NOT NULL,
  country_code                     VARCHAR(3),
  congressional_district           TEXT       NOT NULL,
  frequency                        INTEGER,
  first                            DATE,
  last                             DATE,
  CONSTRAINT fk_contractor_address FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_address_country FOREIGN KEY (country_code) REFERENCES country (code),
  CONSTRAINT fk_contractor_address_state FOREIGN KEY (state) REFERENCES state(code)
);

DROP INDEX IF EXISTS u_contractor_address_with_country_with_state;

CREATE UNIQUE INDEX IF NOT EXISTS u_contractor_address_with_country_with_state
  ON contractor_address
  (duns_number, street_address_1, street_address_2, street_address_3, city, state, other_location_info, zip_code, country_code, congressional_district)
  WHERE country_code IS NOT NULL and state IS NOT NULL;

DROP INDEX IF EXISTS u_contractor_address_without_country_with_state;

CREATE UNIQUE INDEX IF NOT EXISTS u_contractor_address_without_country_with_state
  ON contractor_address
  (duns_number, street_address_1, street_address_2, street_address_3, city, state, other_location_info, zip_code, congressional_district)
  WHERE country_code IS NULL and state IS NOT NULL;

DROP INDEX IF EXISTS u_contractor_address_with_country_without_state;

CREATE UNIQUE INDEX IF NOT EXISTS u_contractor_address_with_country_without_state
  ON contractor_address
  (duns_number, street_address_1, street_address_2, street_address_3, city, other_location_info, zip_code, country_code, congressional_district)
  WHERE country_code IS NOT NULL and state IS NULL;

DROP INDEX IF EXISTS u_contractor_address_without_country_without_state;

CREATE UNIQUE INDEX IF NOT EXISTS u_contractor_address_without_country_without_state
  ON contractor_address
  (duns_number, street_address_1, street_address_2, street_address_3, city, other_location_info, zip_code, congressional_district)
  WHERE country_code IS NULL and state IS NULL;

DROP TABLE IF EXISTS contractor_flag;

CREATE TABLE IF NOT EXISTS contractor_flag (
  id SERIAL CONSTRAINT pk_contractor_flag PRIMARY KEY,
  duns_number VARCHAR(9),
  flag_name   VARCHAR(50),
  flag_value  CHAR,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT u_contractor_flag UNIQUE (duns_number, flag_name, flag_value),
  CONSTRAINT fk_contractor_flag FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_flag_flag FOREIGN KEY (flag_name) REFERENCES flag (flag_name),
  CONSTRAINT fk_contractor_flag_value FOREIGN KEY (flag_value) REFERENCES flag_value (code)
);

CREATE OR REPLACE FUNCTION insert_flag()
  RETURNS VOID AS
$func$
DECLARE
  flag TEXT;
BEGIN
  FOR flag IN SELECT flag_name FROM flag LOOP
    EXECUTE format('INSERT INTO contractor_flag ' ||
                   '(duns_number, flag_name, flag_value, ' ||
                   'frequency, first, last) ' ||
                   'select ' ||
                   'contractor_duns_number, ' ||
                   '''%I'', %I, ' ||
                   'count(*), ' ||
                   'min(last_modified_date), ' ||
                   'max(last_modified_date) ' ||
                   'from contract ' ||
                   'where contractor_duns_number is NOT NULL and ' ||
                   '%I is not NULL ' ||
                   'group by contractor_duns_number, %I;',
                   flag, flag, flag, flag);
    END LOOP;
END
$func$ LANGUAGE plpgsql;

-- TEMPORARY CODE

CREATE OR REPLACE FUNCTION contractor_other_location_info(field TEXT) RETURNS TEXT AS $$
BEGIN
  IF field in ('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MH', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'PW', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY', 'PALAU', 'PUERTO RICO') THEN
    return NULL;
  ELSE
    RETURN field;
  END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION contractor_state(field TEXT) RETURNS TEXT AS $$
BEGIN
  IF field in ('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MH', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'PW', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY') THEN
    return field;
  ELSEIF field = 'PALAU' THEN
    return 'PW';
  ELSEIF field = 'PUERTO RICO' THEN
    return 'PR';
  ELSE
    RETURN NULL;
  END IF;
END;
$$ LANGUAGE plpgsql;

-- END OF TEMPORARY CODE

--
-- ALL THE INSERTS
--

INSERT INTO department
(department_id, frequency, first, last)
  SELECT
    contracting_department_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_department_id IS NOT NULL
  GROUP BY contracting_department_id
ON CONFLICT (department_id)
  DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
    first                 = LEAST(department.first, EXCLUDED.first),
    last                  = GREATEST(department.last, EXCLUDED.last);

INSERT INTO department
(department_id, frequency, first, last)
  SELECT
    funding_department_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_department_id IS NOT NULL
  GROUP BY funding_department_id
ON CONFLICT (department_id)
  DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
    first                 = LEAST(department.first, EXCLUDED.first),
    last                  = GREATEST(department.last, EXCLUDED.last);


INSERT INTO department_name
(department_id, department_name, frequency, first, last)
  SELECT
    contracting_department_id,
    contracting_department_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_department_id IS NOT NULL AND
        contract_all.contracting_department_name IS NOT NULL
  GROUP BY contracting_department_id, contracting_department_name
ON CONFLICT (department_id, department_name)
  DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(department_name.first, EXCLUDED.first),
    last                  = GREATEST(department_name.last, EXCLUDED.last);

INSERT INTO department_name
(department_id, department_name, frequency, first, last)
  SELECT
    funding_department_id,
    funding_department_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_department_id IS NOT NULL AND
        contract_all.funding_department_name IS NOT NULL
  GROUP BY funding_department_id, funding_department_name
ON CONFLICT (department_id, department_name)
  DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(department_name.first, EXCLUDED.first),
    last                  = GREATEST(department_name.last, EXCLUDED.last);

INSERT INTO agency
(department_id, agency_id, frequency, first, last)
  SELECT
    contracting_department_id,
    contracting_agency_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL
  GROUP BY contracting_department_id, contracting_agency_id
ON CONFLICT (agency_id)
  DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency.first, EXCLUDED.first),
    last                  = GREATEST(agency.last, EXCLUDED.last);

INSERT INTO agency
(department_id, agency_id, frequency, first, last)
  SELECT
    funding_department_id,
    funding_agency_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL
  GROUP BY funding_department_id, funding_agency_id
ON CONFLICT (agency_id)
  DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency.first, EXCLUDED.first),
    last                  = GREATEST(agency.last, EXCLUDED.last);


INSERT INTO agency_name
(agency_id, agency_name, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_agency_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_agency_name IS NOT NULL
  GROUP BY contracting_agency_id, contracting_agency_name
ON CONFLICT (agency_id, agency_name)
  DO UPDATE SET frequency = agency_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency_name.first, EXCLUDED.first),
    last                  = GREATEST(agency_name.last, EXCLUDED.last);

INSERT INTO agency_name
(agency_id, agency_name, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_agency_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_agency_name IS NOT NULL
  GROUP BY funding_agency_id, funding_agency_name
ON CONFLICT (agency_id, agency_name)
  DO UPDATE SET frequency = agency_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency_name.first, EXCLUDED.first),
    last                  = GREATEST(agency_name.last, EXCLUDED.last);



INSERT INTO office
(agency_id, office_id, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_office_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_office_id IS NOT NULL
  GROUP BY contracting_agency_id, contracting_office_id
ON CONFLICT (agency_id, office_id)
  DO UPDATE SET frequency = office.frequency + EXCLUDED.frequency,
    first                 = LEAST(office.first, EXCLUDED.first),
    last                  = GREATEST(office.last, EXCLUDED.last);

INSERT INTO office
(agency_id, office_id, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_office_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_office_id IS NOT NULL
  GROUP BY funding_agency_id, funding_office_id
ON CONFLICT (agency_id, office_id)
  DO UPDATE SET frequency = office.frequency + EXCLUDED.frequency,
    first                 = LEAST(office.first, EXCLUDED.first),
    last                  = GREATEST(office.last, EXCLUDED.last);


INSERT INTO office_name
(agency_id, office_id, office_name, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_office_id,
    contracting_office_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_office_id IS NOT NULL AND
        contracting_office_name IS NOT NULL
  GROUP BY contracting_agency_id, contracting_office_id, contracting_office_name
ON CONFLICT (agency_id, office_id, office_name)
  DO UPDATE SET frequency = office_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(office_name.first, EXCLUDED.first),
    last                  = GREATEST(office_name.last, EXCLUDED.last);

INSERT INTO office_name
(agency_id, office_id, office_name, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_office_id,
    funding_office_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_office_id IS NOT NULL AND
        funding_office_name IS NOT NULL
  GROUP BY funding_agency_id, funding_office_id, funding_office_name
ON CONFLICT (agency_id, office_id, office_name)
  DO UPDATE SET frequency = office_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(office_name.first, EXCLUDED.first),
    last                  = GREATEST(office_name.last, EXCLUDED.last);

INSERT INTO contractor
(duns_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL
  GROUP BY contractor_duns_number
ON CONFLICT (duns_number)
  DO UPDATE SET frequency = contractor.frequency + EXCLUDED.frequency,
    first                 = LEAST(contractor.first, EXCLUDED.first),
    last                  = GREATEST(contractor.last, EXCLUDED.last);

INSERT INTO contractor
(duns_number, frequency, first, last)
  SELECT
    contractor_parent_duns_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_parent_duns_number IS NOT NULL
  GROUP BY contractor_parent_duns_number
ON CONFLICT (duns_number)
  DO UPDATE SET frequency = contractor.frequency + EXCLUDED.frequency,
    first                 = LEAST(contractor.first, EXCLUDED.first),
    last                  = GREATEST(contractor.last, EXCLUDED.last);

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_name,
    'name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_name;

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_parent_duns_number,
    contractor_parent_name,
    'name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_parent_duns_number IS NOT NULL AND
        contractor_parent_name IS NOT NULL
  GROUP BY contractor_parent_duns_number, contractor_parent_name
ON CONFLICT (duns_number, name, type)
  DO UPDATE SET frequency = contractor_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(contractor_name.first, EXCLUDED.first),
    last                  = GREATEST(contractor_name.last, EXCLUDED.last);

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_alternate_name,
    'alternate_name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_alternate_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_alternate_name;

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_legal_organization_name,
    'legal_organization_name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_legal_organization_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_legal_organization_name;

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_doing_as_business_name,
    'doing_as_business_name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_doing_as_business_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_doing_as_business_name;

INSERT INTO contractor_division_name
(duns_number, division_name, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_division_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_division_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_division_name;


INSERT INTO contractor_division_number_or_office_code
(duns_number, division_number_or_office_code, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_division_number_or_office_code,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_division_number_or_office_code IS NOT NULL
  GROUP BY contractor_duns_number, contractor_division_number_or_office_code;



INSERT INTO contractor_enabled
(duns_number, enabled, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_enabled,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_enabled IS NOT NULL
  GROUP BY contractor_duns_number, contractor_enabled;



INSERT INTO contractor_location_disable_flag
(duns_number, location_disable_flag, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_location_disable_flag,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_location_disable_flag IS NOT NULL
  GROUP BY contractor_duns_number, contractor_location_disable_flag;

INSERT INTO contractor_parent
(duns_number, parent_duns_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_parent_duns_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_parent_duns_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_parent_duns_number;


INSERT INTO contractor_registration_date
(duns_number, registration_date, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_registration_date,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_registration_date IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_registration_date;


INSERT INTO contractor_renewal_date
(duns_number, renewal_date, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_renewal_date,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_renewal_date IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_renewal_date;


INSERT INTO contractor_phone_number
(duns_number, phone_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_phone_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_phone_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_phone_number;


INSERT INTO contractor_fax_number
(duns_number, fax_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_fax_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_fax_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_fax_number;

INSERT INTO contractor_organizational_type
(duns_number, organizational_type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_organizational_type,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_organizational_type IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_organizational_type;


INSERT INTO contractor_number_of_employees
(duns_number, number_of_employees, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_number_of_employees,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contract.contractor_number_of_employees IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_number_of_employees;


INSERT INTO contractor_annual_revenue
(duns_number, annual_revenue, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_annual_revenue,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_annual_revenue IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_annual_revenue;

INSERT INTO contractor_business_size
(duns_number, business_size, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractingofficerbusinesssizedetermination,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractingofficerbusinesssizedetermination IS NOT NULL
  GROUP BY contractor_duns_number,
    contractingofficerbusinesssizedetermination;


INSERT INTO contractor_ccr_exception
(duns_number, ccr_exception, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_ccr_exception,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_ccr_exception IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_ccr_exception;

INSERT INTO contractor_site_code
(duns_number, site_code, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_site_code,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_site_code IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_site_code;


INSERT INTO contractor_alternate_site_code
(duns_number, alternate_site_code, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_alternate_site_code,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_alternate_site_code IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_alternate_site_code;

--
-- TEMPORARY CODE
--

ALTER TABLE contract
  ADD COLUMN contractor_other_location_info TEXT,
  RENAME contractor_state_redundant TO contractor_state_other_info_redundant;

update contract
set contractor_other_location_info = contractor_other_location_info(contractor_state) AND
  contractor_state = contractor_state(contractor_state)
where contractor_state is NOT NULL;

DROP FUNCTION contractor_other_location_info();
DROP FUNCTION contractor_state();

ALTER TABLE contract ADD FOREIGN KEY(contractor_state) REFERENCES state(code);

--
-- END OF TEMPORARY CODE
--

INSERT INTO contractor_address
(duns_number, street_address_1, street_address_2, street_address_3, city, state, other_location_info,
 zip_code, country_code, congressional_district, frequency, first, last)
  SELECT
    contractor_duns_number,
    COALESCE(contractor_street_address_1, ''),
    COALESCE(contractor_street_address_2, ''),
    COALESCE(contractor_street_address_3, ''),
    COALESCE(contractor_city, ''),
    contractor_state,
    COALESCE(contractor_other_location_info, ''),
    COALESCE(contractor_zip_code, ''),
    contractor_country,
    COALESCE(contractor_congressional_district, ''),
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_street_address_1,
    contractor_street_address_2,
    contractor_street_address_3,
    contractor_city,
    contractor_state,
    contractor_other_location_info,
    contractor_zip_code,
    contractor_country,
    contractor_congressional_district;

select insert_flag();