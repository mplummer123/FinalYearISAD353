--CREATE TABLE
CREATE TABLE LANDMARK_INFORMATION_V2
(info_id NUMBER CONSTRAINT landmark_info_id_pk PRIMARY KEY,
image ORDSYS.ORDImage,
thumbnail BLOB,
landmark_name VARCHAR2(100),
landmark_description VARCHAR2(1000),
filename VARCHAR2(100));

--CREATE SEQUENCE
CREATE SEQUENCE seq_info_id
START WITH 1
INCREMENT BY 1
NOCACHE;

--CREATE TRIGGER AND APPLY TO THE TABLE
CREATE OR REPLACE TRIGGER trg_landmark_information_id_v2
BEFORE INSERT ON LANDMARK_INFORMATION_V2 FOR EACH ROW
BEGIN
  :NEW.info_id := seq_info_id.nextval;
END;
