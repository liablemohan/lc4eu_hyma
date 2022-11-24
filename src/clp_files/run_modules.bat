(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-hin_concept-to-mrs_concept.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "H_concept-to-mrs-rels.dat")
(load-facts "mrs-rel-features.dat")
(open "hin_concept-to-mrs_concept.dat" mrs-file "w")
(open "hin_concept-to-mrs_concept_debug.dat" mrs-dbug "w")
(open "unknown_mrs_concept_replaced.dat" unkmrs "w")
(open "unknown_mrs_concept_replaced_debug.dat" unkmrs-dbug "w")
(run)
(close mrs-file)
(close mrs-dbug)
(clear)
;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-implicit_mrs_concept.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "tam_mapping.dat")
(load-facts "mrs-rel-features.dat")
(load-facts "hin_concept-to-mrs_concept.dat")
(open "implicit_mrs_concept.dat" mrs-def-fp "w")
(open "implicit_mrs_concept_debug.dat" mrs-def-dbug "w")
(run)
(close mrs-def-fp)
(close mrs-def-dbug)
(clear)

;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-implicit_mrs_concept-comp.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "mrs-rel-features.dat")
(load-facts "hin_concept-to-mrs_concept.dat")
(open "implicit_mrs_concept_compound.dat" samasa-fp "w")
(open "implicit_mrs_concept_compound_debug.dat" samasa-dbug-fp "w")
(run)
(close samasa-fp)
(close samasa-dbug-fp)
(clear)

;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-implicit_mrs_concept-prep.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "days-of-week.dat")
(load-facts "months-of-years.dat")
(load-facts "mrs-rel-features.dat")
(load-facts "implicit_mrs_concept.dat")
(load-facts "karaka_relation_preposition_default_mapping.dat")
(open "implicit_mrs_concept-prep.dat" mrs-def-fp "w")
(open "implicit_mrs_concept-prep_debug.dat" mrs-def-dbug "w")
(run)
(close mrs-def-fp)
(close mrs-def-dbug)
(clear)
;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-implicit_mrs_concept-pron.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(open "implicit_mrs_concept-pron.dat" mrs-def-fp "w")
(open "implicit_mrs_concept-pron_debug.dat" mrs-def-dbug "w")
(run )
(close mrs-def-fp)
(close mrs-def-dbug)
(clear)
;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-mrs_feature_info.clp"))
(load ?*path*)
(load-facts "hin_concept-to-mrs_concept.dat")
(load-facts "hin-clips-facts.dat")
(load-facts "mrs-rel-features.dat")
(load-facts "implicit_mrs_concept.dat")
(load-facts "implicit_mrs_concept-prep.dat")
(load-facts "implicit_mrs_concept-pron.dat")
(load-facts "implicit_mrs_concept_compound.dat")
(open "mrs_feature_info.dat" mrs-file "w")
(open "mrs_feature_info_debug.dat" mrs-debug "w")
(run)
(close mrs-file)
(close mrs-debug)
(clear)
;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen_GNP_values.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "mrs_feature_info.dat")
(load-facts "H_GNP_to_MRS_GNP.dat")
(load-facts "implicit_mrs_concept-pron.dat")
(open "GNP_values.dat" open-file "w")
(open "GNP_values_debug.dat" debug_fp "w")
(run)
(close open-file)
(close debug_fp)
(clear)
;---------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/bind-features_values.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "hin_concept-to-mrs_concept.dat")
(load-facts "days-of-week.dat")
(load-facts "months-of-years.dat")
(load-facts "H_concept-to-mrs-rels.dat")
(load-facts "mrs_feature_info.dat")
(load-facts "H_GNP_to_MRS_GNP.dat")
(load-facts "tam_mapping.dat")
(load-facts "karaka_relation_preposition_default_mapping.dat")
(open "mrs_info_binding_features_values.dat" open-file "w")
(open "mrs_info_binding_features_values_debug.dat" debug_fp "w")
(run)
(close open-file)
(close debug_fp)
(clear)
(exit)
;---------------------------------------------------------------

