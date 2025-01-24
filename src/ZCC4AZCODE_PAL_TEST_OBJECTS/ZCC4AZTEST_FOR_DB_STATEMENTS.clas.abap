CLASS ZCC4AZTEST_FOR_DB_STATEMENTS DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS no_db.
    METHODS dyn.
    METHODS mixed.
ENDCLASS.



CLASS ZCC4AZTEST_FOR_DB_STATEMENTS IMPLEMENTATION.


  METHOD dyn.
    CONSTANTS c_name TYPE tabname VALUE 'ZCC4AZDB_TEST2'.
    DATA: itab   TYPE TABLE OF i,
          entry  TYPE i,
          single TYPE ZCC4AZDB_TEST1.
    DELETE FROM (`ZCC4AZDB_TEST1`)
      WHERE obj_name = 'BLABLA'.
    LOOP AT itab INTO entry.
      SELECT SINGLE * FROM ('ZCC4AZDB_TEST2') INTO @entry.
    ENDLOOP.
    DO.
      SELECT SINGLE * FROM (c_name) INTO @entry.
    ENDDO.
    SELECT SINGLE * FROM ('ZCC4AZDB_TEST1') INTO @entry.
    SELECT * FROM ('ZCC4AZDB_TEST1') INTO @entry.
    ENDSELECT.
    SELECT * FROM ('ZCC4AZDB_TEST1') INTO TABLE @itab.
    INSERT ('ZCC4AZDB_TEST1') FROM @entry.
    INSERT INTO ('ZCC4AZDB_TEST1') VALUES @entry.
    UPDATE ('ZCC4AZDB_TEST1') FROM @entry.
    UPDATE ('ZCC4AZDB_TEST1') SET pgmid = 'BLAB'.
    MODIFY ('ZCC4AZDB_TEST1') FROM @entry.
    DELETE FROM ('ZCC4AZDB_TEST1').                     "
    DELETE FROM ('ZCC4AZDB_TEST1')
      WHERE pgmid = 'BLAB'.
    DELETE ('ZCC4AZDB_TEST1') FROM @entry.
  ENDMETHOD.


  METHOD mixed.
    DATA: dbcur TYPE cursor,
          entry TYPE ZCC4AZDB_TEST1,
          itab  TYPE TABLE OF ZCC4AZDB_TEST1.
*    OPEN CURSOR dbcur FOR SELECT * FROM ZCC4AZDB_TEST1.
*    OPEN CURSOR  WITH HOLD dbcur FOR SELECT * FROM ZCC4AZDB_TEST1.

    SELECT SINGLE * FROM ZCC4AZDB_TEST1 INTO @entry.
    SELECT FROM ZCC4AZDB_TEST1 INNER JOIN ZCC4AZDB_TEST2 ON ZCC4AZDB_TEST2~object = ZCC4AZDB_TEST1~object
      FIELDS * INTO @DATA(dummy).
    ENDSELECT.

    DELETE FROM ZCC4AZDB_TEST1.
    DELETE FROM ZCC4AZDB_TEST2 WHERE object NOT IN ( SELECT object FROM ZCC4AZDB_TEST1 WHERE pgmid = 'R3TR' ).
    DELETE FROM ZCC4AZDB_TEST1
      WHERE obj_name = 'BLABLA'.
    DELETE FROM ZCC4AZDB_TEST1.
    DELETE FROM ZCC4AZDB_TEST1
      WHERE pgmid = 'BLAB'.
*    DELETE ZCC4AZDB_TEST1 FROM entry.
*    DELETE FROM DATABASE demo_indx_blob(sc) ID 'DEMO'.

    INSERT ZCC4AZDB_TEST2 FROM ( SELECT * FROM ZCC4AZDB_TEST1 ) ##LOGGING_VERSUS_FROM_SELECT[ZCC4AZDB_TEST2].
    INSERT entry INTO TABLE itab. "no db
    LOOP AT itab INTO entry.
      INSERT entry INTO itab. "no db
    ENDLOOP.

    UPDATE ZCC4AZDB_TEST2 SET object = '1' WHERE object NOT IN ( SELECT object FROM ZCC4AZDB_TEST1 WHERE pgmid = 'R3TR' ).
    UPDATE ZCC4AZDB_TEST1 FROM @entry.
    UPDATE ZCC4AZDB_TEST1 SET pgmid = 'BLAB'.

    MODIFY ZCC4AZDB_TEST1 FROM @entry.

*    EXPORT scarr = itab TO DATABASE demo_indx_blob(sc) ID 'DEMO'.
*    IMPORT scarr = itab FROM DATABASE demo_indx_blob(sc) ID 'DEMO'.

*    EXEC
*      SQL
*      .
*      COMMIT WORK.
*    ENDEXEC.

    DATA from_id TYPE ZCC4AZTESTFLIGHT-carrid VALUE 'AA'.
    DATA to_id TYPE ZCC4AZTESTFLIGHT-carrid VALUE 'UA'.
    WITH
      +connections AS (
        SELECT ZCC4AZTESTFLIGHT~carrid, ZCC4AZTESTFLIGHT~planetype, ZCC4AZTSTFLIGHT1~connid
               FROM ZCC4AZTESTFLIGHT
               INNER JOIN ZCC4AZTSTFLIGHT1
                 ON ZCC4AZTSTFLIGHT1~carrid = ZCC4AZTESTFLIGHT~carrid
               WHERE ZCC4AZTESTFLIGHT~carrid BETWEEN @from_id AND @to_id ),
      +sum_seats AS (
        SELECT carrid, connid, SUM( quantity ) AS sum_seats
               FROM ZCC4AZTSTFLIGHT1
               WHERE carrid BETWEEN @from_id AND @to_id
               GROUP BY carrid, connid ),
      +result( name, connection, departure ) AS (
        SELECT planetype, c~connid, sum_seats
               FROM +connections AS c
                 INNER JOIN +sum_seats AS s
                   ON c~carrid = s~carrid AND
                      c~connid = s~connid )
      SELECT *
             FROM +result
             ORDER BY name, connection
             INTO TABLE @DATA(result).

  ENDMETHOD.


  METHOD no_db.
    DATA: itab    TYPE TABLE OF ZCC4AZDB_TEST1,
          entry   TYPE ZCC4AZDB_TEST1,
          include TYPE TABLE OF string,
*          texts   TYPE TABLE OF textpool,
*          report  TYPE t100,
          where   TYPE string,
          itab2   TYPE TABLE OF ZCC4AZDB_TEST1.

    INSERT entry INTO TABLE itab.
    LOOP AT itab INTO entry.
      INSERT entry INTO itab.
    ENDLOOP.
    DELETE itab INDEX 1.
*    MODIFY CURRENT LINE.
*    INSERT REPORT sy-repid FROM include.
*    DELETE REPORT sy-repid.
    DELETE ADJACENT DUPLICATES FROM itab.
*    INSERT TEXTPOOL sy-repid LANGUAGE sy-langu FROM texts.
*    DELETE TEXTPOOL sy-repid LANGUAGE sy-langu.
    DELETE TABLE itab FROM entry.
    DELETE itab FROM 5.
    DELETE itab TO 7.
    DELETE itab WHERE pgmid = 'R3TR'.
    DELETE itab WHERE (where).
    INSERT entry INTO TABLE itab.
    INSERT entry INTO itab INDEX 5.
  ENDMETHOD.
ENDCLASS.
