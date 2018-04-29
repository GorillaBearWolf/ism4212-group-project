/*NOTE: DROP ALL TABLES*/

DROP TABLE items_sold_ci;
DROP TABLE items_ci;
DROP TABLE invoices_ci;
DROP TABLE owners_ci;
DROP TABLE bill_tos_ci;
DROP TABLE vehicles_ci;

/*NOTE: DROP ALL SEQUENCES*/

DROP SEQUENCE bill_tos_bill_to_no_seq;
DROP SEQUENCE items_item_no_seq;
DROP SEQUENCE invoices_invoice_no_seq;

DROP TABLE LOGMNR_SESSION_EVOLVE$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_SESSION_EVOLVE$_PK;
DROP SEQUENCE LOGMNR_EVOLVE_SEQ$;
DROP SEQUENCE LOGMNR_SEQ$;
DROP SEQUENCE LOGMNR_UIDS$;
DROP TABLE LOGMNR_GLOBAL$ CASCADE CONSTRAINTS;
DROP TABLE LOGMNR_GT_TAB_INCLUDE$ CASCADE CONSTRAINTS;
DROP TABLE LOGMNR_GT_USER_INCLUDE$ CASCADE CONSTRAINTS;
DROP TABLE LOGMNR_GT_XID_INCLUDE$ CASCADE CONSTRAINTS;
DROP TABLE LOGMNR_UID$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_UID$_PK;

DROP TABLE LOGMNRC_DBNAME_UID_MAP CASCADE CONSTRAINTS;
DROP INDEX LOGMNRC_DBNAME_UID_MAP_PK;
DROP TABLE LOGMNR_LOG$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_LOG$_PK;
DROP INDEX LOGMNR_LOG$_FLAGS;
DROP INDEX LOGMNR_LOG$_FIRST_CHANGE#;
DROP INDEX LOGMNR_LOG$_RECID;
DROP TABLE LOGMNR_PROCESSED_LOG$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_PROCESSED_LOG$_PK;
DROP TABLE LOGMNR_SPILL$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_SPILL$_PK;

DROP LOB SYS_LOB0000001104C00010$$;
DROP TABLE LOGMNR_AGE_SPILL$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_AGE_SPILL$_PK;
DROP LOB SYS_LOB0000001108C00008$$;
DROP TABLE LOGMNR_RESTART_CKPT_TXINFO$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_RESTART_CKPT_TXINFO$_PK;
DROP LOB SYS_LOB0000001112C00011$$;
DROP TABLE LOGMNR_ERROR$ CASCADE CONSTRAINTS;
DROP TABLE LOGMNR_RESTART_CKPT$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_RESTART_CKPT$_PK;
DROP LOB SYS_LOB0000001117C00012$$;

DROP LOB SYS_LOB0000001117C00009$$;
DROP TABLE LOGMNR_INTEGRATED_SPILL$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_INTEG_SPILL$_PK;
DROP LOB SYS_LOB0000001123C00009$$;
DROP TABLE LOGMNR_FILTER$ CASCADE CONSTRAINTS;
DROP TABLE LOGMNR_SESSION_ACTIONS$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_SESSION_ACTION$_PK;
DROP TABLE LOGMNR_PARAMETER$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_PARAMETER_INDX;
DROP TABLE LOGMNR_SESSION$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNR_SESSION_PK;

DROP INDEX LOGMNR_SESSION_UK1;
DROP TABLE LOGMNRT_MDDL$ CASCADE CONSTRAINTS;
DROP INDEX LOGMNRT_MDDL$_PK;
DROP SYNONYM SYSCATALOG;
DROP SYNONYM CATALOG;
DROP SYNONYM TAB;
DROP SYNONYM COL;
DROP SYNONYM TABQUOTAS;
DROP SYNONYM SYSFILES;
DROP SYNONYM PUBLICSYN;
DROP TABLE MVIEW$_ADV_WORKLOAD CASCADE CONSTRAINTS;

DROP INDEX MVIEW$_ADV_WORKLOAD_PK;
DROP INDEX MVIEW$_ADV_WORKLOAD_IDX_01;
DROP TABLE MVIEW$_ADV_BASETABLE CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_BASETABLE_IDX_01;
DROP TABLE MVIEW$_ADV_SQLDEPEND CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_SQLDEPEND_IDX_01;
DROP TABLE MVIEW$_ADV_PRETTY CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_PRETTY_IDX_01;
DROP TABLE MVIEW$_ADV_TEMP CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_TEMP_IDX_01;
DROP TABLE MVIEW$_ADV_FILTER CASCADE CONSTRAINTS;

DROP INDEX MVIEW$_ADV_FILTER_PK;
DROP TABLE MVIEW$_ADV_LOG CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_LOG_PK;
DROP TABLE MVIEW$_ADV_FILTERINSTANCE CASCADE CONSTRAINTS;
DROP TABLE MVIEW$_ADV_LEVEL CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_LEVEL_PK;
DROP TABLE MVIEW$_ADV_ROLLUP CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_ROLLUP_PK;
DROP TABLE MVIEW$_ADV_AJG CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_AJG_PK;
DROP TABLE MVIEW$_ADV_FJG CASCADE CONSTRAINTS;

DROP INDEX MVIEW$_ADV_FJG_PK;
DROP TABLE MVIEW$_ADV_GC CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_GC_PK;
DROP TABLE MVIEW$_ADV_CLIQUE CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_CLIQUE_PK;
DROP TABLE MVIEW$_ADV_ELIGIBLE CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_ELIGIBLE_PK;
DROP TABLE MVIEW$_ADV_OUTPUT CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_OUTPUT_PK;
DROP TABLE MVIEW$_ADV_EXCEPTIONS CASCADE CONSTRAINTS;
DROP TABLE MVIEW$_ADV_PARAMETERS CASCADE CONSTRAINTS;

DROP INDEX MVIEW$_ADV_PARAMETERS_PK;
DROP TABLE MVIEW$_ADV_INFO CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_INFO_PK;
DROP TABLE MVIEW$_ADV_JOURNAL CASCADE CONSTRAINTS;
DROP INDEX MVIEW$_ADV_JOURNAL_PK;
DROP TABLE MVIEW$_ADV_PLAN CASCADE CONSTRAINTS;
DROP SEQUENCE MVIEW$_ADVSEQ_GENERIC;
DROP SEQUENCE MVIEW$_ADVSEQ_ID;
DROP VIEW MVIEW_WORKLOAD;
DROP VIEW MVIEW_FILTER;
DROP VIEW MVIEW_LOG;

DROP VIEW MVIEW_FILTERINSTANCE;
DROP VIEW MVIEW_RECOMMENDATIONS;
DROP VIEW MVIEW_EVALUATIONS;
DROP VIEW MVIEW_EXCEPTIONS;
DROP TYPE REPCAT$_OBJECT_NULL_VECTOR;
DROP TABLE AQ$_QUEUE_TABLES CASCADE CONSTRAINTS;
DROP INDEX AQ$_QUEUE_TABLES_PRIMARY;
DROP INDEX I1_QUEUE_TABLES;
DROP TABLE AQ$_QUEUES CASCADE CONSTRAINTS;
DROP INDEX AQ$_QUEUES_PRIMARY;
DROP LOB SYS_LOB0000005687C00012$$;

DROP INDEX AQ$_QUEUES_CHECK;
DROP INDEX I1_QUEUES;
DROP TABLE AQ$_SCHEDULES CASCADE CONSTRAINTS;
DROP INDEX AQ$_SCHEDULES_PRIMARY;
DROP INDEX AQ$_SCHEDULES_CHECK;
DROP TABLE AQ$_INTERNET_AGENTS CASCADE CONSTRAINTS;
DROP INDEX SYS_C001694;
DROP TABLE AQ$_INTERNET_AGENT_PRIVS CASCADE CONSTRAINTS;
DROP INDEX UNQ_PAIRS;
DROP TABLE OL$ CASCADE CONSTRAINTS;
DROP TABLE OL$HINTS CASCADE CONSTRAINTS;

DROP LOB SYS_LOB0000006053C00021$$;
DROP TABLE OL$NODES CASCADE CONSTRAINTS;
DROP INDEX OL$NAME;
DROP INDEX OL$SIGNATURE;
DROP INDEX OL$HNT_NUM;
DROP TABLE DEF$_ERROR CASCADE CONSTRAINTS;
DROP INDEX DEF$_ERROR_PRIMARY;
DROP TABLE DEF$_DESTINATION CASCADE CONSTRAINTS;
DROP INDEX DEF$_DESTINATION_PRIMARY;
DROP TABLE DEF$_CALLDEST CASCADE CONSTRAINTS;
DROP INDEX DEF$_CALLDEST_PRIMARY;

DROP INDEX DEF$_CALLDEST_N2;
DROP TABLE DEF$_DEFAULTDEST CASCADE CONSTRAINTS;
DROP INDEX DEF$_DEFAULTDEST_PRIMARY;
DROP TABLE DEF$_LOB CASCADE CONSTRAINTS;
DROP INDEX DEF$_LOB_PRIMARY;
DROP LOB SYS_LOB0000006939C00005$$;
DROP LOB SYS_LOB0000006939C00004$$;
DROP LOB SYS_LOB0000006939C00003$$;
DROP INDEX DEF$_LOB_N1;
DROP TABLE DEF$_PROPAGATOR CASCADE CONSTRAINTS;
DROP INDEX DEF$_PROPAGATOR_PRIMARY;

DROP TABLE DEF$_ORIGIN CASCADE CONSTRAINTS;
DROP TABLE DEF$_PUSHED_TRANSACTIONS CASCADE CONSTRAINTS;
DROP INDEX DEF$_PUSHED_TRAN_PRIMARY;
DROP TABLE REPCAT$_REPCAT CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPCAT_PRIMARY;
DROP TABLE REPCAT$_FLAVORS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_FLAVORS_UNQ1;
DROP INDEX REPCAT$_FLAVORS_FNAME;
DROP INDEX REPCAT$_FLAVORS_GNAME;
DROP INDEX REPCAT$_FLAVORS_FK1_IDX;
DROP SEQUENCE REPCAT$_FLAVORS_S;

DROP SEQUENCE REPCAT$_FLAVOR_NAME_S;
DROP TABLE REPCAT$_REPSCHEMA CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPSCHEMA_PRIMARY;
DROP INDEX REPCAT$_REPSCHEMA_DEST_IDX;
DROP INDEX REPCAT$_REPSCHEMA_PRNT_IDX;
DROP TABLE REPCAT$_SNAPGROUP CASCADE CONSTRAINTS;
DROP INDEX I_REPCAT$_SNAPGROUP1;
DROP TABLE REPCAT$_REPOBJECT CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPOBJECT_PRIMARY;
DROP INDEX REPCAT$_REPOBJECT_GNAME;
DROP INDEX REPCAT$_REPOBJECT_PRNT_IDX;

DROP TABLE REPCAT$_REPCOLUMN CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPCOLUMN_PK;
DROP INDEX REPCAT$_REPCOLUMN_FK_IDX;
DROP TABLE REPCAT$_KEY_COLUMNS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_KEY_COLUMNS_PRIMARY;
DROP INDEX REPCAT$_KEY_COLUMNS_PRNT_IDX;
DROP TABLE REPCAT$_GENERATED CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPGEN_PRIMARY;
DROP INDEX REPCAT$_GENERATED_N1;
DROP INDEX REPCAT$_REPGEN_PRNT_IDX;
DROP TABLE REPCAT$_REPPROP CASCADE CONSTRAINTS;

DROP INDEX REPCAT$_REPPROP_PRIMARY;
DROP INDEX REPCAT$_REPPROP_DBLINK_HOW;
DROP INDEX REPCAT$_REPPROP_KEY_INDEX;
DROP INDEX REPCAT$_REPPROP_PRNT_IDX;
DROP INDEX REPCAT$_REPPROP_PRNT2_IDX;
DROP SEQUENCE REPCAT$_REPPROP_KEY;
DROP TABLE REPCAT$_REPCATLOG CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPCATLOG_PRIMARY;
DROP INDEX REPCAT$_REPCATLOG_GNAME;
DROP TABLE REPCAT$_DDL CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_DDL_INDEX;

DROP INDEX REPCAT$_DDL;
DROP TABLE REPCAT$_REPGROUP_PRIVS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REPGROUP_PRIVS_UK;
DROP INDEX REPCAT$_REPGROUP_PRIVS_N1;
DROP INDEX REPCAT$_REPGROUP_PRIVS_FK_IDX;
DROP SEQUENCE REPCAT_LOG_SEQUENCE;
DROP TABLE REPCAT$_PRIORITY_GROUP CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_PRIORITY_GROUP_PK;
DROP INDEX REPCAT$_PRIORITY_GROUP_U1;
DROP TABLE REPCAT$_PRIORITY CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_PRIORITY_PK;

DROP INDEX REPCAT$_PRIORITY_F1_IDX;
DROP TABLE REPCAT$_COLUMN_GROUP CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_COLUMN_GROUP_PK;
DROP TABLE REPCAT$_GROUPED_COLUMN CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_GROUPED_COLUMN_PK;
DROP INDEX REPCAT$_GROUPED_COLUMN_F1_IDX;
DROP TABLE REPCAT$_CONFLICT CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_CONFLICT_PK;
DROP TABLE REPCAT$_RESOLUTION_METHOD CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_RESOL_METHOD_PK;
DROP TABLE REPCAT$_RESOLUTION CASCADE CONSTRAINTS;

DROP INDEX REPCAT$_RESOLUTION_PK;
DROP INDEX REPCAT$_RESOLUTION_F3_IDX;
DROP INDEX REPCAT$_RESOLUTION_IDX2;
DROP TABLE REPCAT$_RESOLUTION_STATISTICS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_RESOLUTION_STATS_N1;
DROP TABLE REPCAT$_RESOL_STATS_CONTROL CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_RESOL_STATS_CTRL_PK;
DROP TABLE REPCAT$_PARAMETER_COLUMN CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_PARAMETER_COLUMN_PK;
DROP INDEX REPCAT$_PARAMETER_COLUMN_F1_I;
DROP TABLE REPCAT$_AUDIT_ATTRIBUTE CASCADE CONSTRAINTS;

DROP INDEX REPCAT$_AUDIT_ATTRIBUTE_PK;
DROP TABLE REPCAT$_AUDIT_COLUMN CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_AUDIT_COLUMN_PK;
DROP INDEX REPCAT$_AUDIT_COLUMN_F1_IDX;
DROP INDEX REPCAT$_AUDIT_COLUMN_F2_IDX;
DROP TABLE REPCAT$_FLAVOR_OBJECTS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_FLAVOR_OBJECTS_PK;
DROP INDEX REPCAT$_FLAVOR_OBJECTS_FG;
DROP INDEX REPCAT$_FLAVOR_OBJECTS_FK1_IDX;
DROP INDEX REPCAT$_FLAVOR_OBJECTS_FK2_IDX;
DROP PROCEDURE ORA$_SYS_REP_AUTH;

DROP TABLE REPCAT$_TEMPLATE_STATUS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_TEMPLATE_STATUS_PK;
DROP TABLE REPCAT$_TEMPLATE_TYPES CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_TEMPLATE_TYPES_PK;
DROP TABLE REPCAT$_REFRESH_TEMPLATES CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_REFRESH_TEMPLATES_PK;
DROP INDEX REPCAT$_REFRESH_TEMPLATES_U1;
DROP SEQUENCE REPCAT$_REFRESH_TEMPLATES_S;
DROP TABLE REPCAT$_USER_AUTHORIZATIONS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_USER_AUTHORIZATIONS_PK;
DROP INDEX REPCAT$_USER_AUTHORIZATIONS_U1;

DROP INDEX REPCAT$_USER_AUTHORIZATIONS_N1;
DROP SEQUENCE REPCAT$_USER_AUTHORIZATIONS_S;
DROP TABLE REPCAT$_OBJECT_TYPES CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_OBJECT_TYPE_PK;
DROP TABLE REPCAT$_TEMPLATE_REFGROUPS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_TEMPLATE_REFGROUPS_PK;
DROP SEQUENCE REPCAT$_TEMPLATE_REFGROUPS_S;
DROP INDEX REPCAT$_TEMPLATE_REFGROUPS_N1;
DROP INDEX REPCAT$_TEMPLATE_REFGROUPS_N2;
DROP TABLE REPCAT$_TEMPLATE_OBJECTS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_TEMPLATE_OBJECTS_PK;

DROP LOB SYS_LOB0000007295C00006$$;
DROP INDEX REPCAT$_TEMPLATE_OBJECTS_U1;
DROP INDEX REPCAT$_TEMPLATE_OBJECTS_N1;
DROP SEQUENCE REPCAT$_TEMPLATE_OBJECTS_S;
DROP TABLE REPCAT$_TEMPLATE_PARMS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_TEMPLATE_PARMS_PK;
DROP LOB SYS_LOB0000007308C00004$$;
DROP INDEX REPCAT$_TEMPLATE_PARMS_U1;
DROP SEQUENCE REPCAT$_TEMPLATE_PARMS_S;
DROP TABLE REPCAT$_OBJECT_PARMS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_OBJECT_PARMS_PK;

DROP INDEX REPCAT$_OBJECT_PARMS_N2;
DROP TABLE REPCAT$_USER_PARM_VALUES CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_USER_PARM_VALUES_PK;
DROP LOB SYS_LOB0000007323C00004$$;
DROP INDEX REPCAT$_USER_PARM_VALUES_U1;
DROP SEQUENCE REPCAT$_USER_PARM_VALUES_S;
DROP TABLE REPCAT$_TEMPLATE_SITES CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_TEMPLATE_SITES_PK;
DROP INDEX REPCAT$_TEMPLATE_SITES_U1;
DROP SEQUENCE REPCAT$_TEMPLATE_SITES_S;
DROP TABLE REPCAT$_SITE_OBJECTS CASCADE CONSTRAINTS;

DROP INDEX REPCAT$_SITE_OBJECTS_U1;
DROP INDEX REPCAT$_SITE_OBJECTS_N1;
DROP SEQUENCE REPCAT$_TEMP_OUTPUT_S;
DROP TABLE REPCAT$_RUNTIME_PARMS CASCADE CONSTRAINTS;
DROP LOB SYS_LOB0000007349C00003$$;
DROP INDEX REPCAT$_RUNTIME_PARMS_PK;
DROP SEQUENCE REPCAT$_RUNTIME_PARMS_S;
DROP TABLE REPCAT$_TEMPLATE_TARGETS CASCADE CONSTRAINTS;
DROP INDEX TEMPLATE$_TARGETS_PK;
DROP SEQUENCE TEMPLATE$_TARGETS_S;
DROP INDEX REPCAT$_TEMPLATE_TARGETS_U1;

DROP TABLE REPCAT$_EXCEPTIONS CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_EXCEPTIONS_PK;
DROP LOB SYS_LOB0000007360C00003$$;
DROP SEQUENCE REPCAT$_EXCEPTIONS_S;
DROP TABLE REPCAT$_INSTANTIATION_DDL CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_INSTANTIATION_DDL_PK;
DROP LOB SYS_LOB0000007367C00002$$;
DROP TABLE REPCAT$_EXTENSION CASCADE CONSTRAINTS;
DROP INDEX SYS_C003081;
DROP TABLE REPCAT$_SITES_NEW CASCADE CONSTRAINTS;
DROP INDEX REPCAT$_SITES_NEW_PK;

DROP INDEX REPCAT$_SITES_NEW_FK2_IDX;
DROP INDEX REPCAT$_SITES_NEW_FK1_IDX;
DROP INDEX REPCAT$_TEMPLATE_OBJECTS_N2;
DROP TABLE PARTITION LOGMNR_DICTSTATE$;
DROP TABLE LOGMNR_DICTSTATE$ CASCADE CONSTRAINTS;
DROP TABLE PARTITION LOGMNRC_GTLO;
DROP TABLE LOGMNRC_GTLO CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNRC_GTLO_PK;
DROP INDEX LOGMNRC_GTLO_PK;
DROP INDEX PARTITION LOGMNRC_I2GTLO;
DROP INDEX LOGMNRC_I2GTLO;

DROP INDEX PARTITION LOGMNRC_I3GTLO;
DROP INDEX LOGMNRC_I3GTLO;
DROP TABLE PARTITION LOGMNRC_GTCS;
DROP TABLE LOGMNRC_GTCS CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNRC_GTCS_PK;
DROP INDEX LOGMNRC_GTCS_PK;
DROP INDEX PARTITION LOGMNRC_I2GTCS;
DROP INDEX LOGMNRC_I2GTCS;
DROP TABLE PARTITION LOGMNRC_GSII;
DROP TABLE LOGMNRC_GSII CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNRC_GSII_PK;

DROP INDEX LOGMNRC_GSII_PK;
DROP TABLE PARTITION LOGMNRC_GSBA;
DROP TABLE LOGMNRC_GSBA CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNRC_GSBA_PK;
DROP INDEX LOGMNRC_GSBA_PK;
DROP TABLE PARTITION LOGMNR_SEED$;
DROP TABLE LOGMNR_SEED$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1SEED$;
DROP INDEX LOGMNR_I1SEED$;
DROP INDEX PARTITION LOGMNR_I2SEED$;
DROP INDEX LOGMNR_I2SEED$;

DROP TABLE PARTITION LOGMNR_DICTIONARY$;
DROP TABLE LOGMNR_DICTIONARY$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1DICTIONARY$;
DROP INDEX LOGMNR_I1DICTIONARY$;
DROP TABLE PARTITION LOGMNR_OBJ$;
DROP TABLE LOGMNR_OBJ$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1OBJ$;
DROP INDEX LOGMNR_I1OBJ$;
DROP INDEX PARTITION LOGMNR_I2OBJ$;
DROP INDEX LOGMNR_I2OBJ$;
DROP TABLE PARTITION LOGMNR_TAB$;

DROP TABLE LOGMNR_TAB$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1TAB$;
DROP INDEX LOGMNR_I1TAB$;
DROP INDEX PARTITION LOGMNR_I2TAB$;
DROP INDEX LOGMNR_I2TAB$;
DROP TABLE PARTITION LOGMNR_COL$;
DROP TABLE LOGMNR_COL$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1COL$;
DROP INDEX LOGMNR_I1COL$;
DROP INDEX PARTITION LOGMNR_I2COL$;
DROP INDEX LOGMNR_I2COL$;

DROP INDEX PARTITION LOGMNR_I3COL$;
DROP INDEX LOGMNR_I3COL$;
DROP TABLE PARTITION LOGMNR_ATTRCOL$;
DROP TABLE LOGMNR_ATTRCOL$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1ATTRCOL$;
DROP INDEX LOGMNR_I1ATTRCOL$;
DROP TABLE PARTITION LOGMNR_TS$;
DROP TABLE LOGMNR_TS$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1TS$;
DROP INDEX LOGMNR_I1TS$;
DROP TABLE PARTITION LOGMNR_IND$;

DROP TABLE LOGMNR_IND$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1IND$;
DROP INDEX LOGMNR_I1IND$;
DROP INDEX PARTITION LOGMNR_I2IND$;
DROP INDEX LOGMNR_I2IND$;
DROP TABLE PARTITION LOGMNR_USER$;
DROP TABLE LOGMNR_USER$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1USER$;
DROP INDEX LOGMNR_I1USER$;
DROP TABLE PARTITION LOGMNR_TABPART$;
DROP TABLE LOGMNR_TABPART$ CASCADE CONSTRAINTS;

DROP INDEX PARTITION LOGMNR_I1TABPART$;
DROP INDEX LOGMNR_I1TABPART$;
DROP INDEX PARTITION LOGMNR_I2TABPART$;
DROP INDEX LOGMNR_I2TABPART$;
DROP TABLE PARTITION LOGMNR_TABSUBPART$;
DROP TABLE LOGMNR_TABSUBPART$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1TABSUBPART$;
DROP INDEX LOGMNR_I1TABSUBPART$;
DROP INDEX PARTITION LOGMNR_I2TABSUBPART$;
DROP INDEX LOGMNR_I2TABSUBPART$;
DROP TABLE PARTITION LOGMNR_TABCOMPART$;

DROP TABLE LOGMNR_TABCOMPART$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1TABCOMPART$;
DROP INDEX LOGMNR_I1TABCOMPART$;
DROP INDEX PARTITION LOGMNR_I2TABCOMPART$;
DROP INDEX LOGMNR_I2TABCOMPART$;
DROP TABLE PARTITION LOGMNR_TYPE$;
DROP TABLE LOGMNR_TYPE$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1TYPE$;
DROP INDEX LOGMNR_I1TYPE$;
DROP TABLE PARTITION LOGMNR_COLTYPE$;
DROP TABLE LOGMNR_COLTYPE$ CASCADE CONSTRAINTS;

DROP INDEX PARTITION LOGMNR_I1COLTYPE$;
DROP INDEX LOGMNR_I1COLTYPE$;
DROP TABLE PARTITION LOGMNR_ATTRIBUTE$;
DROP TABLE LOGMNR_ATTRIBUTE$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1ATTRIBUTE$;
DROP INDEX LOGMNR_I1ATTRIBUTE$;
DROP TABLE PARTITION LOGMNR_LOB$;
DROP TABLE LOGMNR_LOB$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1LOB$;
DROP INDEX LOGMNR_I1LOB$;
DROP TABLE PARTITION LOGMNR_CDEF$;

DROP TABLE LOGMNR_CDEF$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1CDEF$;
DROP INDEX LOGMNR_I1CDEF$;
DROP TABLE PARTITION LOGMNR_CCOL$;
DROP TABLE LOGMNR_CCOL$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1CCOL$;
DROP INDEX LOGMNR_I1CCOL$;
DROP TABLE PARTITION LOGMNR_ICOL$;
DROP TABLE LOGMNR_ICOL$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1ICOL$;
DROP INDEX LOGMNR_I1ICOL$;

DROP TABLE PARTITION LOGMNR_LOBFRAG$;
DROP TABLE LOGMNR_LOBFRAG$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1LOBFRAG$;
DROP INDEX LOGMNR_I1LOBFRAG$;
DROP TABLE PARTITION LOGMNR_INDPART$;
DROP TABLE LOGMNR_INDPART$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1INDPART$;
DROP INDEX LOGMNR_I1INDPART$;
DROP INDEX PARTITION LOGMNR_I2INDPART$;
DROP INDEX LOGMNR_I2INDPART$;
DROP TABLE PARTITION LOGMNR_INDSUBPART$;

DROP TABLE LOGMNR_INDSUBPART$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1INDSUBPART$;
DROP INDEX LOGMNR_I1INDSUBPART$;
DROP TABLE PARTITION LOGMNR_INDCOMPART$;
DROP TABLE LOGMNR_INDCOMPART$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1INDCOMPART$;
DROP INDEX LOGMNR_I1INDCOMPART$;
DROP TABLE PARTITION LOGMNR_LOGMNR_BUILDLOG;
DROP TABLE LOGMNR_LOGMNR_BUILDLOG CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1LOGMNR_BUILDLOG;
DROP INDEX LOGMNR_I1LOGMNR_BUILDLOG;

DROP TABLE PARTITION LOGMNR_NTAB$;
DROP TABLE LOGMNR_NTAB$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1NTAB$;
DROP INDEX LOGMNR_I1NTAB$;
DROP INDEX PARTITION LOGMNR_I2NTAB$;
DROP INDEX LOGMNR_I2NTAB$;
DROP TABLE PARTITION LOGMNR_OPQTYPE$;
DROP TABLE LOGMNR_OPQTYPE$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1OPQTYPE$;
DROP INDEX LOGMNR_I1OPQTYPE$;
DROP TABLE PARTITION LOGMNR_SUBCOLTYPE$;

DROP TABLE LOGMNR_SUBCOLTYPE$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1SUBCOLTYPE$;
DROP INDEX LOGMNR_I1SUBCOLTYPE$;
DROP TABLE PARTITION LOGMNR_KOPM$;
DROP TABLE LOGMNR_KOPM$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1KOPM$;
DROP INDEX LOGMNR_I1KOPM$;
DROP TABLE PARTITION LOGMNR_PROPS$;
DROP TABLE LOGMNR_PROPS$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1PROPS$;
DROP INDEX LOGMNR_I1PROPS$;

DROP TABLE PARTITION LOGMNR_ENC$;
DROP TABLE LOGMNR_ENC$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1ENC$;
DROP INDEX LOGMNR_I1ENC$;
DROP TABLE PARTITION LOGMNR_REFCON$;
DROP TABLE LOGMNR_REFCON$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1REFCON$;
DROP INDEX LOGMNR_I1REFCON$;
DROP TABLE PARTITION LOGMNR_PARTOBJ$;
DROP TABLE LOGMNR_PARTOBJ$ CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNR_I1PARTOBJ$;

DROP INDEX LOGMNR_I1PARTOBJ$;
DROP TABLE PARTITION LOGMNRP_CTAS_PART_MAP;
DROP TABLE LOGMNRP_CTAS_PART_MAP CASCADE CONSTRAINTS;
DROP INDEX PARTITION LOGMNRP_CTAS_PART_MAP_PK;
DROP INDEX LOGMNRP_CTAS_PART_MAP_PK;
DROP INDEX PARTITION LOGMNRP_CTAS_PART_MAP_I;
DROP INDEX LOGMNRP_CTAS_PART_MAP_I;
DROP PACKAGE DBMS_REPCAT_AUTH;
DROP TABLE LOGSTDBY$PARAMETERS CASCADE CONSTRAINTS;
DROP TABLE LOGSTDBY$EVENTS CASCADE CONSTRAINTS;
DROP LOB SYS_LOB0000010832C00009$$;

DROP INDEX LOGSTDBY$EVENTS_IND;
DROP INDEX LOGSTDBY$EVENTS_IND_SCN;
DROP INDEX LOGSTDBY$EVENTS_IND_XID;
DROP TABLE PARTITION LOGSTDBY$APPLY_PROGRESS;
DROP TABLE LOGSTDBY$APPLY_PROGRESS CASCADE CONSTRAINTS;
DROP TABLE LOGSTDBY$APPLY_MILESTONE CASCADE CONSTRAINTS;
DROP TABLE LOGSTDBY$SCN CASCADE CONSTRAINTS;
DROP TABLE LOGSTDBY$FLASHBACK_SCN CASCADE CONSTRAINTS;
DROP INDEX SYS_C003346;
DROP TABLE LOGSTDBY$PLSQL CASCADE CONSTRAINTS;
DROP LOB SYS_LOB0000010844C00003$$;

DROP TABLE LOGSTDBY$SKIP_TRANSACTION CASCADE CONSTRAINTS;
DROP TABLE LOGSTDBY$SKIP CASCADE CONSTRAINTS;
DROP INDEX LOGSTDBY$SKIP_IDX1;
DROP INDEX LOGSTDBY$SKIP_IDX2;
DROP TABLE LOGSTDBY$SKIP_SUPPORT CASCADE CONSTRAINTS;
DROP INDEX LOGSTDBY$SKIP_IND;
DROP TABLE LOGSTDBY$HISTORY CASCADE CONSTRAINTS;
DROP TABLE LOGSTDBY$EDS_TABLES CASCADE CONSTRAINTS;
DROP INDEX LOGSTDBY$EDS_TABLES_PKEY;
DROP PACKAGE BODY DBMS_REPCAT_AUTH;
DROP TRIGGER DEF$_PROPAGATOR_TRIG;

DROP TABLE DEF$_AQCALL CASCADE CONSTRAINTS;
DROP INDEX SYS_C003540;
DROP LOB SYS_LOB0000013050C00025$$;
DROP TABLE DEF$_AQERROR CASCADE CONSTRAINTS;
DROP INDEX SYS_C003543;
DROP QUEUE AQ$_DEF$_AQCALL_E;
DROP VIEW AQ$_DEF$_AQCALL_F;
DROP VIEW AQ$DEF$_AQCALL;
DROP QUEUE DEF$_AQCALL;
DROP INDEX DEF$_TRANORDER;
DROP LOB SYS_LOB0000013061C00025$$;

DROP QUEUE AQ$_DEF$_AQERROR_E;
DROP VIEW AQ$_DEF$_AQERROR_F;
DROP VIEW AQ$DEF$_AQERROR;
DROP QUEUE DEF$_AQERROR;
DROP TRIGGER REPCATLOGTRIG;
DROP TABLE SQLPLUS_PRODUCT_PROFILE CASCADE CONSTRAINTS;
DROP VIEW PRODUCT_PRIVS;
DROP SYNONYM PRODUCT_USER_PROFILE;
DROP TABLE HELP CASCADE CONSTRAINTS;
DROP INDEX HELP_TOPIC_SEQ;
DROP TABLE VEHICLES_CI CASCADE CONSTRAINTS;

DROP INDEX VCLE_VEHICLE_VIN_PK;
DROP TABLE BILL_TOS_CI CASCADE CONSTRAINTS;
DROP INDEX BILL_BILL_TO_NO_PK;
DROP TABLE ITEMS_CI CASCADE CONSTRAINTS;
DROP INDEX ITEM_ITEM_NO_PK;
DROP TABLE OWNERS_CI CASCADE CONSTRAINTS;
DROP INDEX OWNERS_VCLE_VIN_BILL_TO_NO_PK;
DROP TABLE INVOICES_CI CASCADE CONSTRAINTS;
DROP INDEX INVS_INVOICE_NO_PK;
DROP TABLE ITEMS_SOLD_CI CASCADE CONSTRAINTS;
DROP INDEX ITEMS_SOLD_INV_NO_ITEM_NO_PK;

DROP SEQUENCE BILL_TOS_BILL_TO_NO_SEQ;
DROP SEQUENCE ITEMS_ITEM_NO_SEQ;
DROP SEQUENCE INVOICES_INVOICE_NO_SEQ;

purge recyclebin;

/*NOTE: CREATE TABLES*/

CREATE TABLE vehicles_ci
(
   vehicle_vin  VARCHAR2(17)
      CONSTRAINT vcle_vehicle_vin_pk PRIMARY KEY,
   vehicle_make  VARCHAR2(20)
      CONSTRAINT vcle_vehicle_make_nn NOT NULL,
   vehicle_model VARCHAR2(20)
      CONSTRAINT vcle_vehicle_model_nn NOT NULL,
   vehicle_year  NUMBER(4)
      CONSTRAINT vcle_vehicle_year_nn NOT NULL,
   vehicle_color VARCHAR2(20)
      CONSTRAINT vcle_vehicle_color_nn NOT NULL,
   vehicle_dealer_no CHAR(5)
);

CREATE TABLE bill_tos_ci
(
   bill_to_no   NUMBER(5)
      CONSTRAINT bill_bill_to_no_pk PRIMARY KEY,
   bill_to_first_name VARCHAR2(20)
      CONSTRAINT bill_bill_to_first_name_nn NOT NULL,
   bill_to_last_name VARCHAR2(20)
      CONSTRAINT bill_bill_to_last_name_nn NOT NULL,
   bill_to_street_1  VARCHAR2(30)
      CONSTRAINT bill_bill_to_street_1_nn NOT NULL,
      bill_to_street_2  VARCHAR2(15),
   bill_to_city   VARCHAR2(30)
      CONSTRAINT bill_bill_to_city_nn NOT NULL,
   bill_to_state CHAR(2)
      CONSTRAINT bill_bill_to_state_nn NOT NULL,
   bill_to_zip   CHAR(5)
      CONSTRAINT bill_bill_to_zip_nn NOT NULL
);

CREATE TABLE items_ci
(
   item_no VARCHAR2(10)
      CONSTRAINT item_item_no_pk PRIMARY KEY,
   item_name VARCHAR2(20)
      CONSTRAINT item_item_name_nn NOT NULL,
   item_description VARCHAR2(30)
      CONSTRAINT item_item_description_nn NOT NULL,
   item_unit_price  NUMBER(6,2)
      CONSTRAINT item_item_unit_price_nn NOT NULL
);

CREATE TABLE owners_ci
(
   vehicle_vin  VARCHAR2(17),
   bill_to_no  NUMBER(5),
      CONSTRAINT owners_vcle_vin_bill_to_no_pk
         PRIMARY KEY (vehicle_vin,bill_to_no),
      CONSTRAINT owners_vehicle_vin_fk
         FOREIGN KEY (vehicle_vin)
         REFERENCES vehicles_ci(vehicle_vin),
      CONSTRAINT owners_bill_to_no_fk
         FOREIGN KEY (bill_to_no)
         REFERENCES bill_tos_ci(bill_to_no)
);

CREATE TABLE invoices_ci
(
   invoice_no  NUMBER(5)
      CONSTRAINT invs_invoice_no_pk PRIMARY KEY,
   invoice_date DATE
      CONSTRAINT invs_inv_date_nn NOT NULL,
   invoice_odometer  NUMBER(6)
      CONSTRAINT invs_inv_odometer_nn NOT NULL,
   invoice_tax  NUMBER(4,2)
      CONSTRAINT invs_inv_tax_nn NOT NULL,
   invoice_payment_cred  NUMBER(5,2),
   bill_to_no  NUMBER(5)
      CONSTRAINT invs_bill_to_no_nn NOT NULL,
   vehicle_vin  VARCHAR2(17)
      CONSTRAINT invs_vcle_vehicle_vin_nn NOT NULL,
      CONSTRAINT invs_bill_to_no_vin_fk
         FOREIGN KEY (bill_to_no,vehicle_vin)
         REFERENCES owners_ci(bill_to_no,vehicle_vin)
   );

CREATE TABLE items_sold_ci
(
   invoice_no  NUMBER(5),
   item_no  VARCHAR2(10),
   item_qty_sold  NUMBER(2)
      CONSTRAINT items_sold_item_qty_sold_nn  NOT NULL,
   item_unit_price NUMBER(6,2)
      CONSTRAINT items_sold_item_unit_price_nn
         NOT NULL,
   CONSTRAINT items_sold_inv_no_item_no_pk
      PRIMARY KEY (invoice_no,item_no),
   CONSTRAINT items_sold_invoice_no_fk
      FOREIGN KEY (invoice_no)
      REFERENCES invoices_ci(invoice_no),
   CONSTRAINT prods_item_no_fk
      FOREIGN KEY (item_no)
      REFERENCES items_ci(item_no)
);

/*NOTE: CREATE SEQUENCES*/

CREATE SEQUENCE bill_tos_bill_to_no_seq
	START WITH 8923
	INCREMENT BY 1
	MAXVALUE 99999
	NOCYCLE
	NOCACHE;

CREATE SEQUENCE items_item_no_seq
	START WITH 1122334455
	INCREMENT BY 1
	MAXVALUE 9999999999
	NOCYCLE
	NOCACHE;

CREATE SEQUENCE invoices_invoice_no_seq
	START WITH 25333
	INCREMENT BY 1
	MAXVALUE 99999
	NOCYCLE
	NOCACHE;

/*NOTE: INSERT DATA TO VEHICLES_CI TABLE*/

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'121V5G1H221457H47',
	'HONDA',
	'SHADOW1100',
	1985,
	'BLACK',
	32582
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'4T4BF3EK6BR115086',
	'HARLEY',
	'RAVEN2000',
	2018,
	'LASER BLUE',
	45447
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'2GBHG31MXD4127143',
	'SUZUKI',
	'NINJA1000',
	2001,
	'WHITE',
	12258
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'1FUBCYCS35HN42268',
	'KAWASAKI',
	'ROADSTER788',
	2016,
	'BLACK',
	58445
);

INSERT INTO vehicles_ci
(
	vehicle_vin,
	vehicle_make,
	vehicle_model,
	vehicle_year,
	vehicle_color,
	vehicle_dealer_no
)
VALUES
(
	'1C4GJWAG7CL176718',
	'HONDA',
	'STREAK1',
	2009,
	'BLUE',
	NULL
);

/*NOTE: INSERT DATA TO BILL_TO_CI TABLE*/

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Yonnys',
	'Mendez',
	'4038 Park Ln',
	'A',
	'Palm Springs',
	'FL',
	33406
);

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Jon',
	'McArthur',
	'4039 Saturn Blvd',
	NULL,
	'Palm Springs',
	'FL',
	33406
);

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Travis',
	'Scott',
	'2301 S Ocean Blvd',
	'Suite 1',
	'Boca Raton',
	'FL',
	33487
);

INSERT INTO bill_tos_ci
(
	bill_to_no,
	bill_to_first_name,
	bill_to_last_name,
	bill_to_street_1,
	bill_to_street_2,
	bill_to_city,
	bill_to_state,
	bill_to_zip
)
VALUES
(
	bill_tos_bill_to_no_seq.NEXTVAL,
	'Jan',
	'Mendez',
	'123 Lane Street',
	NULL,
	'Delray Beach',
	'FL',
	33481
);

/*NOTE: INSERT DATA TO ITEMS_CI TABLE*/

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'MASTER',
	'MASTER CYLINDER SIGHT GLASS',
	3.99
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'CARB KIT',
	'CARBURETOR KIT',
	7.9
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'PLUGS',
	'SPARK PLUGS',
	4.05
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'BTZ14S',
	'BTZ14S BATTERY 78-1383',
	88.95
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	23-1006,
	'10 MM FUEL FILTER',
	25.15
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'AIR FILTER',
	'AIR CLEANER 17215-MG8-771',
	28.53
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'OIL FILTER',
	'FILTER GASKET',
	20.1
);

INSERT INTO items_ci
(
	item_no,
	item_name,
	item_description,
	item_unit_price
)
VALUES
(
	items_item_no_seq.NEXTVAL,
	'WHEEL',
	'STEERING WHEEL',
	149.99
);

/*NOTE: INSERT DATA TO OWNERS_CI TABLE*/

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'121V5G1H221457H47',
	8923
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'4T4BF3EK6BR115086',
	8924
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'2GBHG31MXD4127143',
	8925
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'1FUBCYCS35HN42268',
	8926
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'1C4GJWAG7CL176718',
	8923
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'121V5G1H221457H47',
	8924
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'4T4BF3EK6BR115086',
	8925
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'2GBHG31MXD4127143',
	8926
);

INSERT INTO owners_ci
(
	vehicle_vin,
	bill_to_no
)
VALUES
(
	'1C4GJWAG7CL176718',
	8926
);

/*NOTE: INSERT DATA TO INVOICES_CI TABLE*/

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-10-11',
	88000,
	5.93,
	7.00,
	8923,
	'121V5G1H221457H47'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-11-1',
	35000,
	22.00,
	12.00,
	8924,
	'4T4BF3EK6BR115086'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-12-3',
	60000,
	7.80,
	2.00,
	8925,
	'2GBHG31MXD4127143'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-12-22',
	15000,
	21.10,
	NULL,
	8926,
	'1FUBCYCS35HN42268'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2017-12-28',
	17000,
	22.30,
	2.00,
	8923,
	'1C4GJWAG7CL176718'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-2',
	19000,
	21.10,
	8.00,
	8924,
	'121V5G1H221457H47'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-5',
	25000,
	52.00,
	12.00,
	8925,
	'4T4BF3EK6BR115086'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-9',
	26000,
	60.00,
	15.50,
	8926,
	'2GBHG31MXD4127143'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-1-20',
	88000,
	60.00,
	18.50,
	8926,
	'1C4GJWAG7CL176718'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-2-1',
	90,
	52.00,
	12.20,
	8925,
	'4T4BF3EK6BR115086'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-2-23',
	3000,
	61.50,
	11.20,
	8926,
	'2GBHG31MXD4127143'
);

INSERT INTO invoices_ci
(
	invoice_no,
	invoice_date,
	invoice_odometer,
	invoice_tax,
	invoice_payment_cred,
	bill_to_no,
	vehicle_vin
)
VALUES
(
	invoices_invoice_no_seq.NEXTVAL,
	date '2018-3-5',
	6000,
	65.00,
	12.00,
	8926,
	'1C4GJWAG7CL176718'
);

/*NOTE: INSERT DATA TO ITEMS_SOLD_CI TABLE*/

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25333,
	1122334455,
	2,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25334,
	1122334456,
	1,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25335,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25336,
	1122334458,
	1,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25337,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25338,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25339,
	1122334455,
	1,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25340,
	1122334456,
	2,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25341,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25342,
	1122334458,
	1,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25343,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25344,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25333,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25334,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25335,
	1122334458,
	4,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25336,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25337,
	1122334456,
	1,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25338,
	1122334455,
	3,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25339,
	1122334460,
	1,
	28.53
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25340,
	1122334459,
	1,
	25.15
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25341,
	1122334458,
	2,
	88.95
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25342,
	1122334457,
	2,
	4.05
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25343,
	1122334456,
	2,
	7.9
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25344,
	1122334455,
	2,
	3.99
);

INSERT INTO items_sold_ci
(
	invoice_no,
	item_no,
	item_qty_sold,
	item_unit_price
)
VALUES
(
	25333,
	1122334458,
	1,
	88.95
);
