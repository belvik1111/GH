class ZCL_MD_CHANGE_MTPOS_MTVFP definition
  public
  create public .

public section.

  types:
    t_mtart_range TYPE RANGE OF mtart .
  types:
    t_matkl_range TYPE RANGE OF matkl .
  types:
    t_attyp_range TYPE RANGE OF attyp .
  types:
    BEGIN OF t_matnr_main,
        matnr TYPE matnr,
        dismm TYPE dismm,
      END OF t_matnr_main .
  types:
    t_dismm_mtpos_tab TYPE TABLE OF zcmd_dismm_mtpos .
  types:
    t_dismm_mtvfp_tab TYPE TABLE OF zcmd_dismm_mtvfp .
  types:
    t_dismm_life_tab TYPE TABLE OF zcmd_dismm_life .
  types:
    BEGIN OF t_matnr,
        matnr TYPE matnr,
      END OF t_matnr .
  types:
    t_matnr_tab TYPE TABLE OF t_matnr .
  types:
    BEGIN OF t_cdpos_data,
        matnr TYPE matnr,
      END OF t_cdpos_data .
  types:
    BEGIN OF t_cdhdr_data,
        objectid TYPE cdobjectv,
        changenr TYPE cdchangenr,
      END OF t_cdhdr_data .
  types:
    BEGIN OF t_matnr_data,
        matnr       TYPE matnr,
        mtart       TYPE mtart,
        mtpos       TYPE mtpos,
        werks       TYPE werks_d,
        dismm       TYPE dismm,
        zzmtpos     TYPE zzmtpos,
        mtvfp       TYPE mtvfp,
        zzlifecycle TYPE zlifecycle,
        maindc      TYPE xfeld,
        difdismm    TYPE xfeld,
      END OF t_matnr_data .
  types:
    t_matnr_data_tab TYPE TABLE OF t_matnr_data .
  types:
    BEGIN OF t_matnr_upd,
        matnr       TYPE matnr,
        mtart       TYPE mtart,
        mtpos       TYPE mtpos,
        werks       TYPE werks_d,
        dismm       TYPE dismm,
        zzmtpos     TYPE zzmtpos,
        mtvfp       TYPE mtvfp,
        zzlifecycle TYPE zlifecycle,
        maindc      TYPE xfeld,
        difdismm    TYPE xfeld,
        updkz       TYPE xfeld,
        updmtpos    TYPE xfeld,
        updzzmtpos  TYPE xfeld,
        updmtvfp    TYPE xfeld,
        updlife     TYPE xfeld,
      END OF t_matnr_upd .
  types:
    t_matnr_upd_tab TYPE TABLE OF t_matnr_upd .
  types:
    t_werks_tab TYPE TABLE OF werks_d .
  types:
    BEGIN OF t_werks_atwrt,
        werks TYPE werks_d,
        atwrt TYPE atwrt,
      END OF t_werks_atwrt .
  types:
    t_werks_range TYPE RANGE OF werks_d .
  types:
    t_udate_range TYPE RANGE OF cddatum .
  types:
    t_dismm_range TYPE RANGE OF dismm .
  types:
    t_mtvfp_range TYPE RANGE OF mtvfp .
  types:
    t_life_range TYPE RANGE OF zlifecycle .
  types:
    t_matnr_range TYPE RANGE OF matnr .
  types:
    t_ersda_range TYPE RANGE OF mara-ersda .

  data G_VKORG type VKORG .
  data G_VTWEG type VTWEG .
  data G_SPART type SPART .
  data G_TEST type XFELD .
  data G_ERRORS type XFELD .
  data GT_WERKS_SO type T_WERKS_RANGE .
  data GT_UDATE_SO type T_UDATE_RANGE .
  data GT_WERK2_SO type T_WERKS_RANGE .
  data GT_DISMM_SO type T_DISMM_RANGE .
  data GT_MTVFP_SO type T_MTVFP_RANGE .
  data GT_LIFE_SO type T_LIFE_RANGE .
  data GT_MATNR_SO type T_MATNR_RANGE .
  data GT_MTART_SO type T_MTART_RANGE .
  data GT_MATKL_SO type T_MATKL_RANGE .
  data GT_ATTYP_SO type T_ATTYP_RANGE .
  data GT_ERSDA_SO type T_ERSDA_RANGE .
  data G_SELCHG type XFELD .
  data G_SELMAN type XFELD .
  data G_PROC3PL type XFELD .
  data G_WERKS_MAIN type WERKS_D .
  data GT_WERKS type T_WERKS_TAB .
  data GT_WERKS_RANGE type T_WERKS_RANGE .
  data G_WERKS_LINES type INT1 .
  data GT_MATNR_DATA type T_MATNR_DATA_TAB .
  data GT_MATNR_UPD type T_MATNR_UPD_TAB .
  data GT_DISMM_MTPOS type T_DISMM_MTPOS_TAB .
  data GT_DISMM_MTVFP type T_DISMM_MTVFP_TAB .
  data GT_DISMM_LIFE type T_DISMM_LIFE_TAB .

  class-methods FACTORY
    exporting
      !EO_CHANGE_MTPOS_MTVFP type ref to ZCL_MD_CHANGE_MTPOS_MTVFP .
  methods START_APPLICATION
    importing
      !I_SELCHG type XFELD
      !I_SELMAN type XFELD
      !I_PROC3PL type XFELD default SPACE
      !IT_WERKS type TABLE
      !IT_UDATE type TABLE
      !IT_WERK2 type TABLE
      !IT_DISMM type TABLE
      !IT_MTVFP type TABLE
      !IT_LIFE type TABLE
      !IT_MATNR type TABLE
      !IT_MTART type TABLE
      !IT_MATKL type TABLE
      !IT_ATTYP type TABLE
      !IT_ERSDA type TABLE
      !I_VKORG type VKORG
      !I_VTWEG type VTWEG
      !I_TEST type XFELD
      !I_ERRORS type XFELD .
  methods SET_GLOBAL
    importing
      !I_SELCHG type XFELD
      !I_SELMAN type XFELD
      !I_PROC3PL type XFELD default SPACE
      !IT_WERKS type TABLE
      !IT_UDATE type TABLE
      !IT_WERK2 type TABLE
      !IT_DISMM type TABLE
      !IT_MTVFP type TABLE
      !IT_LIFE type TABLE
      !IT_MATNR type TABLE
      !IT_MTART type TABLE
      !IT_MATKL type TABLE
      !IT_ATTYP type TABLE
      !IT_ERSDA type TABLE
      !I_VKORG type VKORG
      !I_VTWEG type VTWEG
      !I_TEST type XFELD
      !I_ERRORS type XFELD .
  methods GET_ARTICLE .
  methods GET_ARTICLE_CHANGE .
  methods GET_ARTICLE_MANUAL .
  methods PROCESS_RELEVANT_MATNR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_MD_CHANGE_MTPOS_MTVFP IMPLEMENTATION.


METHOD factory.

  DATA:
    l_object_type TYPE seoclsname.

  l_object_type = 'ZCL_MD_CHANGE_MTPOS_MTVFP'.

  IF l_object_type IS NOT INITIAL.
    CREATE OBJECT eo_change_mtpos_mtvfp TYPE (l_object_type).
  ENDIF.

ENDMETHOD.


METHOD get_article.

  DATA: ls_matnr_data TYPE t_matnr_data,
        lt_matnr_dif  TYPE t_matnr_tab,
        l_maindc      TYPE xfeld,
        l_difdismm    TYPE xfeld,
        l_matnr_vgl   TYPE matnr,
        l_dismm_vgl   TYPE dismm,
        ls_matnr_upd  TYPE t_matnr_upd,
        lt_matnr_main TYPE TABLE OF t_matnr_main,
        ls_matnr_main TYPE t_matnr_main,
        l_dismm_main  TYPE dismm,
        l_mtpos_ziel  TYPE mtpos.

  FIELD-SYMBOLS: <fs_matnr_data>  TYPE t_matnr_data,
                 <fs_dismm_mtpos> TYPE LINE OF t_dismm_mtpos_tab,
                 <fs_dismm_mtvfp> TYPE LINE OF t_dismm_mtvfp_tab.

  IF g_selchg = 'X'.
    me->get_article_change( ).
  ELSE.
    me->get_article_manual( ).
  ENDIF.


  SORT gt_matnr_data.
  DELETE ADJACENT DUPLICATES FROM gt_matnr_data.


  CLEAR lt_matnr_main[].
* artikel mit hauptbetrieb und dispomerkmal
  LOOP AT gt_matnr_data ASSIGNING <fs_matnr_data>.
    IF <fs_matnr_data>-werks = g_werks_main.
      CLEAR ls_matnr_main.
      ls_matnr_main-matnr = <fs_matnr_data>-matnr.
      ls_matnr_main-dismm = <fs_matnr_data>-dismm.
      APPEND ls_matnr_main TO lt_matnr_main.
    ENDIF.
  ENDLOOP.

  CLEAR: lt_matnr_dif[], l_dismm_vgl.
* artikel mit unterschiedlichen dispomerkmalen
  LOOP AT gt_matnr_data ASSIGNING <fs_matnr_data>.
    AT NEW matnr.
      l_dismm_vgl = <fs_matnr_data>-dismm.
      CLEAR l_difdismm.
    ENDAT.
*
    IF <fs_matnr_data>-dismm NE l_dismm_vgl.
      l_difdismm = 'X'.
    ENDIF.
*
    AT END OF matnr.
      IF l_difdismm = 'X'.
        APPEND <fs_matnr_data>-matnr TO lt_matnr_dif.
      ENDIF.
    ENDAT.
  ENDLOOP.
*

  CLEAR l_matnr_vgl.
  SORT: lt_matnr_main, lt_matnr_dif.
*
  LOOP AT gt_matnr_data ASSIGNING <fs_matnr_data>.
    AT NEW matnr.
      CLEAR: l_maindc, l_difdismm, l_dismm_main.
* hauptbetriebsdaten
      READ TABLE lt_matnr_main INTO ls_matnr_main
                               WITH KEY matnr = <fs_matnr_data>-matnr
                               BINARY SEARCH.
      IF sy-subrc = 0.
        l_dismm_main = ls_matnr_main-dismm.
        l_maindc = 'X'.
      ENDIF.
* pruefen dispomerkmal unterschiedlich
      READ TABLE lt_matnr_dif WITH KEY matnr = <fs_matnr_data>-matnr
                              BINARY SEARCH TRANSPORTING NO FIELDS.
      IF sy-subrc = 0.
        l_difdismm = 'X'.
      ENDIF.
    ENDAT.
*
    CLEAR ls_matnr_upd.
    <fs_matnr_data>-maindc = l_maindc.
    <fs_matnr_data>-difdismm = l_difdismm.
    MOVE-CORRESPONDING <fs_matnr_data> TO ls_matnr_upd.
*
* i. gleichheit beim dispomerkmal
    IF l_difdismm IS INITIAL
    AND <fs_matnr_data>-mtpos IS NOT INITIAL.
      READ TABLE gt_dismm_mtpos ASSIGNING <fs_dismm_mtpos>
                                WITH KEY dismm = <fs_matnr_data>-dismm
                                         mtart = <fs_matnr_data>-mtart
                                BINARY SEARCH.
      IF sy-subrc NE 0.
        READ TABLE gt_dismm_mtpos ASSIGNING <fs_dismm_mtpos>
                                  WITH KEY dismm = <fs_matnr_data>-dismm
                                           mtart = ' '
                                  BINARY SEARCH.
      ENDIF.
      IF sy-subrc EQ 0.
        IF <fs_dismm_mtpos>-mtpos NE <fs_matnr_data>-mtpos.
          ls_matnr_upd-updkz = ls_matnr_upd-updmtpos = 'X'.
          ls_matnr_upd-mtpos = <fs_dismm_mtpos>-mtpos.
        ENDIF.
      ENDIF.
    ENDIF.
* ii. unterschiedliche dispomerkmale
    IF l_difdismm IS NOT INITIAL.
* hauptbetrieb vorhanden?
      IF <fs_matnr_data>-werks EQ g_werks_main
      AND <fs_matnr_data>-mtpos IS NOT INITIAL.
        READ TABLE gt_dismm_mtpos ASSIGNING <fs_dismm_mtpos>
                                  WITH KEY dismm = l_dismm_main
                                           mtart = <fs_matnr_data>-mtart
                                  BINARY SEARCH.
        IF sy-subrc NE 0.
          READ TABLE gt_dismm_mtpos ASSIGNING <fs_dismm_mtpos>
                                    WITH KEY dismm = l_dismm_main
                                             mtart = ' '
                                    BINARY SEARCH.
        ENDIF.
        IF sy-subrc EQ 0.
          IF <fs_dismm_mtpos>-mtpos NE <fs_matnr_data>-mtpos.
            ls_matnr_upd-updkz = ls_matnr_upd-updmtpos = 'X'.
            ls_matnr_upd-mtpos = <fs_dismm_mtpos>-mtpos.
          ENDIF.
        ENDIF.
      ENDIF.              " hauptbetrieb vorhanden?
* fuer nicht hauptbetrieb
      IF <fs_matnr_data>-werks NE g_werks_main.
        READ TABLE gt_dismm_mtpos ASSIGNING <fs_dismm_mtpos>
                                  WITH KEY dismm = <fs_matnr_data>-dismm
                                           mtart = <fs_matnr_data>-mtart
                                  BINARY SEARCH.
        IF sy-subrc NE 0.
          READ TABLE gt_dismm_mtpos ASSIGNING <fs_dismm_mtpos>
                                    WITH KEY dismm = <fs_matnr_data>-dismm
                                             mtart = ' '
                                    BINARY SEARCH.
        ENDIF.
        IF sy-subrc EQ 0.
          IF <fs_dismm_mtpos>-mtpos NE <fs_matnr_data>-zzmtpos.
            ls_matnr_upd-updkz = ls_matnr_upd-updzzmtpos = 'X'.
            ls_matnr_upd-zzmtpos = <fs_dismm_mtpos>-mtpos.
          ENDIF.
        ENDIF.
      ENDIF.
* dispomerkmal gleich
    ELSE.
      IF g_proc3pl = 'X'.
* 3PL-Laeger: MARC-ZZMTPOS soll immer synchron zur ermittelten
* MVKE-Positionstypengruppe gepflegt werden (Abweichungslogik TR-Hub).
* Zentrallager-Verarbeitung bleibt unveraendert (siehe ELSE-Zweig).
        l_mtpos_ziel = COND #( WHEN ls_matnr_upd-updmtpos = 'X' THEN ls_matnr_upd-mtpos
                                ELSE <fs_matnr_data>-mtpos ).
        IF <fs_matnr_data>-zzmtpos NE l_mtpos_ziel.
          ls_matnr_upd-updkz = ls_matnr_upd-updzzmtpos = 'X'.
          ls_matnr_upd-zzmtpos = l_mtpos_ziel.
        ENDIF.
      ELSE.
* dispomerkmal gleich - zzmtpos immer zuruecksetzen
        IF <fs_matnr_data>-zzmtpos IS NOT INITIAL.
          ls_matnr_upd-updkz = ls_matnr_upd-updzzmtpos = 'X'.
          CLEAR ls_matnr_upd-zzmtpos.
        ENDIF.
      ENDIF.
    ENDIF.
* iii. pruefen gruppe verfuegbarkeitspruefung
    READ TABLE gt_dismm_mtvfp ASSIGNING <fs_dismm_mtvfp>
                              WITH KEY dismm = <fs_matnr_data>-dismm
                              BINARY SEARCH.
    IF sy-subrc EQ 0.
      IF <fs_dismm_mtvfp>-mtvfp NE <fs_matnr_data>-mtvfp
      AND <fs_matnr_data>-mtvfp NE 'KP'.
        ls_matnr_upd-updkz = ls_matnr_upd-updmtvfp = 'X'.
        ls_matnr_upd-mtvfp = <fs_dismm_mtvfp>-mtvfp.
      ENDIF.
    ENDIF.
* iii. pruefen gruppe verfuegbarkeitspruefung
    SORT gt_dismm_life by dismm.                                                     "$smart(M): #601
    READ TABLE gt_dismm_life ASSIGNING FIELD-SYMBOL(<fs_dismm_life>)
                              WITH KEY dismm = <fs_matnr_data>-dismm
                              BINARY SEARCH.
    IF sy-subrc EQ 0.
      IF <fs_dismm_life>-zzlifecycle IS INITIAL.
        ls_matnr_upd-updkz = ls_matnr_upd-updlife = 'X'.
        ls_matnr_upd-zzlifecycle = <fs_dismm_life>-zzlifecycle.
      ELSE.
        IF <fs_matnr_data>-zzlifecycle IS INITIAL..
          ls_matnr_upd-updkz = ls_matnr_upd-updlife = 'X'.
          ls_matnr_upd-zzlifecycle = <fs_dismm_life>-zzlifecycle.
        ENDIF.
      ENDIF.
    ENDIF.
*
* fuer aenderung vormerken
    IF ls_matnr_upd-updkz = 'X'.
      APPEND ls_matnr_upd TO gt_matnr_upd.
    ENDIF.
  ENDLOOP.


ENDMETHOD.


METHOD get_article_change.
************************************************************************
* 5/4/20   HEC HANA Code Conversion
* Rules applied:  600 601
************************************************************************


  DATA: lt_cdhdr TYPE TABLE OF t_cdhdr_data,
        lt_cdpos TYPE TABLE OF t_cdpos_data,
        l_mtpos  TYPE mtpos.

  FIELD-SYMBOLS: <fs_matnr_data> TYPE t_matnr_data.

  CLEAR: lt_cdhdr[], lt_cdpos[].

* Header selektieren: alle Belege innerhalb des angegebenen Zeitraums.
  SELECT objectid changenr FROM cdhdr
     INTO CORRESPONDING FIELDS OF TABLE lt_cdhdr
     WHERE objectclas = 'MAT_FULL'
       AND udate IN gt_udate_so.
* Nur weitermachen, wenn Headerdaten vorliegen.
  IF lt_cdhdr[] IS NOT INITIAL.
* Positionen selektieren: alle Pos. fuer gewaehlten Betrieb zu den
* zuvor selektierten Belegen
    SELECT objectid AS matnr
            FROM cdpos INTO TABLE lt_cdpos
      FOR ALL ENTRIES IN lt_cdhdr
      WHERE objectclas = 'MAT_FULL'
        AND objectid = lt_cdhdr-objectid
        AND changenr = lt_cdhdr-changenr
        AND tabname = 'DMARC'
        AND tabkey IN gt_werks_so        " betriebe selektionsbild (Zentrallager oder einzelnes 3PL-Lager)
        AND fname = 'DISMM'
        AND chngind = 'U'. "#EC CI_NOORDER                 "$smart: #600

    SORT lt_cdpos BY matnr.                                "$smart: #600
    SELECT objectid AS matnr
            FROM cdpos APPENDING TABLE lt_cdpos
      FOR ALL ENTRIES IN lt_cdhdr
      WHERE objectclas = 'MAT_FULL'
        AND objectid = lt_cdhdr-objectid
        AND changenr = lt_cdhdr-changenr
        AND tabname = 'DMARC'
        AND tabkey IN gt_werks_so
        AND fname = 'KEY'
        AND chngind = 'I'. "#EC CI_NOORDER                 "$smart: #600
  ENDIF.

  CHECK lt_cdpos[] IS NOT INITIAL.

  SORT lt_cdpos.
  DELETE ADJACENT DUPLICATES FROM lt_cdpos.

  SELECT mara~matnr mara~mtart
         marc~werks marc~dismm marc~zzmtpos marc~mtvfp marc~zzlifecycle
          FROM mara JOIN marc ON mara~matnr EQ marc~matnr
          INTO CORRESPONDING FIELDS OF TABLE gt_matnr_data
          FOR ALL ENTRIES IN lt_cdpos
          WHERE mara~matnr = lt_cdpos-matnr
            AND marc~werks IN gt_werks_range    " selektierte Laeger (Zentrallager bzw. 3PL-Lager)
* zusaetzlich
            AND mara~matnr IN gt_matnr_so
            AND mara~mtart IN gt_mtart_so
            AND mara~matkl IN gt_matkl_so
            AND mara~attyp IN gt_attyp_so
            AND marc~dismm IN gt_dismm_so
            AND marc~mtvfp IN gt_mtvfp_so
            AND marc~zzlifecycle IN gt_life_so.

  SORT gt_matnr_data BY matnr.                             "$smart: #601
  LOOP AT gt_matnr_data ASSIGNING <fs_matnr_data>.
    AT NEW matnr.
      CLEAR l_mtpos.
      SELECT SINGLE mtpos FROM mvke INTO l_mtpos
                    WHERE matnr = <fs_matnr_data>-matnr
                      AND vkorg = g_vkorg
                      AND vtweg = g_vtweg.
    ENDAT.
    <fs_matnr_data>-mtpos = l_mtpos.
  ENDLOOP.

ENDMETHOD.


METHOD get_article_manual.
************************************************************************
* 5/4/20   HEC HANA Code Conversion
* Rules applied:  601
************************************************************************


  DATA: lt_matnr_tab TYPE t_matnr_tab,
        l_mtpos      TYPE mtpos.

  FIELD-SYMBOLS: <fs_matnr_data> TYPE t_matnr_data.

  CLEAR lt_matnr_tab[].

  SELECT mara~matnr
        FROM mara JOIN marc ON mara~matnr EQ marc~matnr
        INTO CORRESPONDING FIELDS OF TABLE lt_matnr_tab
        WHERE mara~matnr IN gt_matnr_so
          AND mara~mtart IN gt_mtart_so
          AND mara~matkl IN gt_matkl_so
          AND mara~attyp IN gt_attyp_so
          AND mara~ersda IN gt_ersda_so                             "Mantis 8115
          AND marc~werks IN gt_werk2_so     " betriebe selektionsbild ?
          AND marc~dismm IN gt_dismm_so
          AND marc~mtvfp IN gt_mtvfp_so
          AND marc~zzlifecycle IN gt_life_so.

  CHECK lt_matnr_tab[] IS NOT INITIAL.

  SORT lt_matnr_tab.
  DELETE ADJACENT DUPLICATES FROM lt_matnr_tab.

  SELECT mara~matnr mara~mtart
         marc~werks marc~dismm marc~zzmtpos marc~mtvfp marc~zzlifecycle
          FROM mara JOIN marc ON mara~matnr EQ marc~matnr
          INTO CORRESPONDING FIELDS OF TABLE gt_matnr_data
          FOR ALL ENTRIES IN lt_matnr_tab
          WHERE mara~matnr = lt_matnr_tab-matnr
            AND marc~werks IN gt_werks_range.    " selektierte Laeger (Zentrallager bzw. 3PL-Lager)

  SORT gt_matnr_data BY matnr.                             "$smart: #601
  LOOP AT gt_matnr_data ASSIGNING <fs_matnr_data>.
    AT NEW matnr.
      CLEAR l_mtpos.
      SELECT SINGLE mtpos FROM mvke INTO l_mtpos
                    WHERE matnr = <fs_matnr_data>-matnr
                      AND vkorg = g_vkorg
                      AND vtweg = g_vtweg.
    ENDAT.
    <fs_matnr_data>-mtpos = l_mtpos.
  ENDLOOP.

ENDMETHOD.


METHOD process_relevant_matnr.

* fuer den BAPI - BAPI_MATERIAL_MAINTAINDATA_RT
* Kopfsegment mit Steuerungsinformationen
  DATA: ls_headdata          TYPE bapie1mathead,
        lt_salesdata         TYPE STANDARD TABLE OF bapie1mvkert,
        lt_salesdatax        TYPE STANDARD TABLE OF bapie1mvkertx,
        lt_werksdata         TYPE STANDARD TABLE OF bapie1marcrt,
        lt_werksdatax        TYPE STANDARD TABLE OF bapie1marcrtx,
        lt_plantext          TYPE STANDARD TABLE OF bapie1marcextrt,
        lt_plantextx         TYPE STANDARD TABLE OF bapie1marcextrtx,
        ls_return            TYPE bapireturn1,
        ls_plant_ext_field1  TYPE zsmd_plantext_field1,
        ls_plant_extx_field1 TYPE zsmd_plantextx_field1,
        l_plantext_view      TYPE xfeld,
        l_message            TYPE string,
        l_material10         TYPE char10.


  FIELD-SYMBOLS: <fs_matnr_upd>        TYPE t_matnr_upd,
                 <fs_salesdata>        TYPE bapie1mvkert,
                 <fs_salesdatax>       TYPE bapie1mvkertx,
                 <fs_werksdata>        TYPE bapie1marcrt,
                 <fs_werksdatax>       TYPE bapie1marcrtx,
                 <fs_plantext>         TYPE bapie1marcextrt,
                 <fs_plantextx>        TYPE bapie1marcextrtx,
                 <fs_plantext_field1>  TYPE zsmd_plantext_field1,
                 <fs_plantextx_field1> TYPE zsmd_plantextx_field1.

  DATA(l_first) = abap_false.
  DATA(l_error_found) = abap_false.

  SORT gt_matnr_upd.
*-------------------

  LOOP AT gt_matnr_upd ASSIGNING <fs_matnr_upd>.

    AT NEW matnr.
* Daten initialisieren
      CLEAR: ls_headdata, ls_return,
             lt_salesdata, lt_salesdatax,
             lt_werksdata, lt_werksdatax,
             lt_plantext, lt_plantextx.
* Artikelnummer setzen
      ls_headdata-material = <fs_matnr_upd>-matnr.
    ENDAT.
*
* vertriebsdaten mvke
*--------------------
    IF <fs_matnr_upd>-updmtpos = 'X'.
* positionstypengruppe
      READ TABLE lt_salesdata ASSIGNING <fs_salesdata>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          sales_org = g_vkorg
                          distr_chan = g_vtweg.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_salesdata ASSIGNING <fs_salesdata>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_salesdata>-material = <fs_matnr_upd>-matnr.
        <fs_salesdata>-sales_org = g_vkorg.
        <fs_salesdata>-distr_chan = g_vtweg.
        <fs_salesdata>-item_cat = <fs_matnr_upd>-mtpos.
        <fs_salesdata>-function = '004'.
      ENDIF.

* aenderungsinformation
      READ TABLE lt_salesdatax ASSIGNING <fs_salesdatax>
       WITH KEY material = <fs_matnr_upd>-matnr
                sales_org = g_vkorg
                distr_chan = g_vtweg.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_salesdatax ASSIGNING <fs_salesdatax>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_salesdatax>-material = <fs_matnr_upd>-matnr.
        <fs_salesdatax>-sales_org = g_vkorg.
        <fs_salesdatax>-distr_chan = g_vtweg.
        <fs_salesdatax>-item_cat = 'X'.
        <fs_salesdatax>-function = '004'.
      ENDIF.

    ENDIF.
*
* betriebsdaten marc
*-------------------
    IF <fs_matnr_upd>-updmtvfp = 'X'.
      READ TABLE lt_werksdata ASSIGNING <fs_werksdata>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          plant    = <fs_matnr_upd>-werks.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_werksdata ASSIGNING <fs_werksdata>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_werksdata>-material    = <fs_matnr_upd>-matnr.
        <fs_werksdata>-plant       = <fs_matnr_upd>-werks.
        <fs_werksdata>-availcheck  = <fs_matnr_upd>-mtvfp.
        <fs_werksdata>-function = '004'.
      ENDIF.

* aenderungsinformation
      READ TABLE lt_werksdatax ASSIGNING <fs_werksdatax>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          plant    = <fs_matnr_upd>-werks.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_werksdatax ASSIGNING <fs_werksdatax>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_werksdatax>-material    = <fs_matnr_upd>-matnr.
        <fs_werksdatax>-plant       = <fs_matnr_upd>-werks.
        <fs_werksdatax>-availcheck  = 'X'.
        <fs_werksdatax>-function = '004'.
      ENDIF.
    ENDIF.
*
* Kundenfelder
    DATA(ls_zz_marc) = VALUE zsmd_plantext_char_field1( ).
    DATA(ls_zz_marcx) = VALUE zsmd_plantextx_field1( ).
    IF <fs_matnr_upd>-updzzmtpos = 'X' OR <fs_matnr_upd>-updlife = 'X'.
      READ TABLE lt_plantext ASSIGNING <fs_plantext>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          plant    = <fs_matnr_upd>-werks.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_plantext ASSIGNING <fs_plantext>.
      ENDIF.
      IF sy-subrc = 0.
        IF <fs_matnr_upd>-updzzmtpos = 'X'.
          ls_zz_marc-zzmtpos  = <fs_matnr_upd>-zzmtpos.
          ls_zz_marcx-zzmtpos = 'X'.
        ENDIF.
        IF <fs_matnr_upd>-updlife = 'X'.
          ls_zz_marc-zzlifecycle  = <fs_matnr_upd>-zzlifecycle.
          ls_zz_marcx-zzlifecycle = 'X'.

" wenn aber der Artikel vor Ablauf der 16 Wochen inaktiviert wird (LCI = ''),
" dann muss der Artikel auch aus der Tabelle ZFIRSTGR, sonst wird der LCI nach 16 Wochen umgeschossen auf 'R'.

          IF <fs_matnr_upd>-zzlifecycle IS INITIAL.
            DELETE FROM zfirstgr
              WHERE matnr = <fs_matnr_upd>-matnr
                AND werks = <fs_matnr_upd>-werks.
            IF sy-subrc <> 0.
              " irrelevant...
            ENDIF.
          ENDIF.

        ENDIF.
        <fs_plantext>-material    = <fs_matnr_upd>-matnr.
        <fs_plantext>-plant       = <fs_matnr_upd>-werks.
        <fs_plantext>-field1      = ls_zz_marc.
        <fs_plantext>-function    = '004'.
      ENDIF.

* aenderungsinformation
      READ TABLE lt_plantextx ASSIGNING <fs_plantextx>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          plant    = <fs_matnr_upd>-werks.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_plantextx ASSIGNING <fs_plantextx>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_plantextx>-material    = <fs_matnr_upd>-matnr.
        <fs_plantextx>-plant       = <fs_matnr_upd>-werks.
        <fs_plantextx>-field1      = ls_zz_marcx.
        <fs_plantextx>-function    = '004'.
      ENDIF.

* hier auch die werksdaten mitgeben
      READ TABLE lt_werksdata ASSIGNING <fs_werksdata>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          plant    = <fs_matnr_upd>-werks.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_werksdata ASSIGNING <fs_werksdata>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_werksdata>-material    = <fs_matnr_upd>-matnr.
        <fs_werksdata>-plant       = <fs_matnr_upd>-werks.
        <fs_werksdata>-function    = '004'.
      ENDIF.

* aenderungsinformation
      READ TABLE lt_werksdatax ASSIGNING <fs_werksdatax>
                 WITH KEY material = <fs_matnr_upd>-matnr
                          plant    = <fs_matnr_upd>-werks.
      IF sy-subrc <> 0.
        INSERT INITIAL LINE INTO TABLE lt_werksdatax ASSIGNING <fs_werksdatax>.
      ENDIF.
      IF sy-subrc = 0.
        <fs_werksdatax>-material    = <fs_matnr_upd>-matnr.
        <fs_werksdatax>-plant       = <fs_matnr_upd>-werks.
        <fs_werksdatax>-function    = '004'.
      ENDIF.

    ENDIF.

*
*-------------------
    AT END OF matnr.

      ls_headdata-no_appl_log = 'X'.       " kein Log
* Kopfsegment mit Steuerungsinformationen setzen
      IF lt_salesdata IS NOT INITIAL.
        ls_headdata-sales_view = 'X'.
      ENDIF.
      IF lt_werksdata IS NOT INITIAL
      OR lt_plantext IS NOT INITIAL.
        ls_headdata-logdc_view = 'X'.
        ls_headdata-function   = 'ZZM'.    " lt. beispiel aus ea (ZARTSALE)
      ENDIF.

      IF g_test IS INITIAL.         " Echtlauf ?
* Artikel aendern
        CALL FUNCTION 'BAPI_MATERIAL_MAINTAINDATA_RT'
          EXPORTING
            headdata   = ls_headdata
          IMPORTING
            return     = ls_return
          TABLES
            salesdata  = lt_salesdata
            salesdatax = lt_salesdatax
            plantdata  = lt_werksdata
            plantdatax = lt_werksdatax
            plantext   = lt_plantext
            plantextx  = lt_plantextx.
        IF ls_return-type CA 'AEX'.
          CALL FUNCTION 'BAPI_TRANSACTION_ROLLBACK'.
        ELSE.
          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = 'X'.
        ENDIF.
*
        CLEAR l_plantext_view.
        IF lt_plantext[] IS NOT INITIAL.
          l_plantext_view = 'X'.
        ENDIF.
*
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
          EXPORTING
            input  = ls_headdata-material
          IMPORTING
            output = l_material10.
* Rueckgabe
        IF ls_return-type CA 'AEX'.

          l_error_found = abap_true.
          IF l_first = abap_true.
            WRITE: /1 sy-cprog.
* echt- oder testlauf ?
            IF g_test IS INITIAL.
              WRITE 25 TEXT-001.
            ELSE.
              WRITE 25 TEXT-002.
            ENDIF.
            WRITE: 60 sy-uname, 80 sy-datum, ' / ', sy-uzeit.
            WRITE: /.
            l_first = abap_false.
          ENDIF.

          l_message = ls_return-message.
          WRITE: /2 l_material10,
                  13 ls_return-type,
                  15 l_message.
        ELSE.
          IF g_errors IS INITIAL.
            WRITE: /2 l_material10,
                    13 'I',
                    15 ls_headdata-sales_view, 17 TEXT-020,
                    35 ls_headdata-logdc_view, 37 TEXT-021,
                    55 l_plantext_view,  57 TEXT-022.
          ENDIF.
        ENDIF.
      ELSE.
*
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
          EXPORTING
            input  = ls_headdata-material
          IMPORTING
            output = l_material10.
*
        CLEAR l_plantext_view.
        IF lt_plantext[] IS NOT INITIAL.
          l_plantext_view = 'X'.
        ENDIF.
        IF g_errors IS INITIAL.
          WRITE: /2 l_material10,
                  13 'I',
                  15 ls_headdata-sales_view, 17 TEXT-020,
                  35 ls_headdata-logdc_view, 37 TEXT-021,
                  55 l_plantext_view,  57 TEXT-022.
        ENDIF.
      ENDIF.                    " IF g_test IS INITIAL.

    ENDAT.

  ENDLOOP.
  IF l_error_found = abap_true AND g_errors = abap_true.
    WRITE: /2 TEXT-003.
  ENDIF.

ENDMETHOD.


METHOD set_global.

  DATA: lt_werks_atwrt TYPE TABLE OF t_werks_atwrt,
        ls_werks_atwrt TYPE t_werks_atwrt,
        ls_werks_range TYPE LINE OF t_werks_range.

  FIELD-SYMBOLS: <fs_werks> TYPE werks_d.

  g_selchg = i_selchg.
  g_selman = i_selman.
  g_proc3pl = i_proc3pl.

  gt_werks_so = it_werks.
  gt_udate_so = it_udate.

  gt_werk2_so = it_werk2.
  gt_dismm_so = it_dismm.
  gt_mtvfp_so = it_mtvfp.
  gt_life_so  = it_life.
  gt_matnr_so = it_matnr.

  gt_mtart_so = it_mtart.
  gt_matkl_so = it_matkl.
  gt_attyp_so = it_attyp.

  gt_ersda_so = it_ersda.                                  "Mantis 8115

  g_vkorg = i_vkorg.
  g_vtweg = i_vtweg.

  g_test = i_test.
  g_errors = i_errors.

  CLEAR: gt_matnr_data[], gt_matnr_upd[].

* bestimmen Laeger und "Haupt-Betrieb"
  CLEAR: gt_werks[], g_werks_lines, gt_werks_range[].

  IF g_proc3pl = 'X'.
* Verarbeitung fuer 3PL-Laeger (z.B. 6150): es ist ueber das
* Selektionsbild (IT_WERKS) genau ein Lager zu selektieren; die
* Zentrallager-Ermittlung ueber ZCL_SITE=>GET_CENTRAL_WAREHOUSES
* entfaellt hier bewusst.
    LOOP AT gt_werks_so INTO DATA(ls_werks_so)
                        WHERE sign = 'I' AND option = 'EQ' AND high IS INITIAL.
      APPEND ls_werks_so-low TO gt_werks.
    ENDLOOP.
    SORT gt_werks.
    DELETE ADJACENT DUPLICATES FROM gt_werks.

    DESCRIBE TABLE gt_werks LINES g_werks_lines.
    IF g_werks_lines <> 1.
* bei 3PL-Verarbeitung ist im Selektionsbild genau ein Betrieb anzugeben
      MESSAGE e031(zmd).
    ENDIF.

    READ TABLE gt_werks INDEX 1 INTO g_werks_main.

* Pruefung: selektiertes Lager darf kein Zentrallager sein
    IF zcl_site=>is_cw_ex( g_werks_main ) = abap_true.
* selektiertes Lager ist kein 3PL-Lager
      MESSAGE e032(zmd).
    ENDIF.

  ELSE.
* Verarbeitung fuer Zentrallaeger (bisherige, unveraenderte Logik)
    CALL METHOD zcl_site=>get_central_warehouses
      RECEIVING
        rt_plants = gt_werks.

    DESCRIBE TABLE gt_werks LINES g_werks_lines.
    IF g_werks_lines = 0.
      MESSAGE e030(zmd).
    ELSEIF g_werks_lines = 1.
      READ TABLE gt_werks INDEX 1 INTO g_werks_main.
    ELSEIF g_werks_lines NE 1.
      LOOP AT gt_werks ASSIGNING <fs_werks>.
        CLEAR ls_werks_atwrt.
        ls_werks_atwrt-werks = <fs_werks>.
        ls_werks_atwrt-atwrt = zcl_site=>get_dc_type( ls_werks_atwrt-werks ).
        APPEND ls_werks_atwrt TO lt_werks_atwrt.
      ENDLOOP.
      SORT lt_werks_atwrt BY atwrt werks.
      CLEAR ls_werks_atwrt.
      READ TABLE lt_werks_atwrt INDEX 1 INTO ls_werks_atwrt.
      g_werks_main = ls_werks_atwrt-werks.
    ENDIF.
  ENDIF.

  CLEAR ls_werks_range.
  ls_werks_range-sign = 'I'.
  ls_werks_range-option = 'EQ'.
  LOOP AT gt_werks ASSIGNING <fs_werks>.
    ls_werks_range-low = <fs_werks>.
    APPEND ls_werks_range TO gt_werks_range.
  ENDLOOP.

* customizingtabellen
  CLEAR: gt_dismm_mtpos[], gt_dismm_mtvfp[].
  SELECT * FROM zcmd_dismm_mtpos INTO TABLE gt_dismm_mtpos.
  SELECT * FROM zcmd_dismm_mtvfp INTO TABLE gt_dismm_mtvfp.
  SELECT * FROM zcmd_dismm_life INTO TABLE gt_dismm_life.
  SORT: gt_dismm_mtpos, gt_dismm_mtvfp.

ENDMETHOD.


METHOD start_application.

  IF i_errors IS INITIAL.
    WRITE: /1 sy-cprog.
* echt- oder testlauf ?
    IF i_test IS INITIAL.
      WRITE 25 TEXT-001.
    ELSE.
      WRITE 25 TEXT-002.
    ENDIF.
    WRITE: 60 sy-uname, 80 sy-datum, ' / ', sy-uzeit.
    WRITE: /.
  ENDIF.

* globale daten setzen
  me->set_global( i_selchg  = i_selchg
                  i_selman  = i_selman
                  i_proc3pl = i_proc3pl
                  it_werks  = it_werks
                  it_udate  = it_udate
                  it_werk2  = it_werk2
                  it_dismm  = it_dismm
                  it_mtvfp  = it_mtvfp
                  it_life   = it_life
                  it_matnr  = it_matnr
                  it_mtart  = it_mtart
                  it_matkl  = it_matkl
                  it_attyp  = it_attyp
                  it_ersda  = it_ersda                     "Mantis 8115
                  i_vkorg   = i_vkorg
                  i_vtweg   = i_vtweg
                  i_test    = i_test
                  i_errors  = i_errors ).

* relevante artikel ermitteln
  me->get_article( ).

* relevante artikel verarbeiten
  IF gt_matnr_data[] IS NOT INITIAL.
    me->process_relevant_matnr( ).
  ELSE.
    IF i_errors IS INITIAL.
      WRITE: /2 TEXT-003.
    endif.
  ENDIF.


ENDMETHOD.
ENDCLASS.
