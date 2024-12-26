(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-implicit_mrs_concept-comp.clp"))
(load ?*path*)
(load-facts "hin-clips-facts.dat")
(load-facts "mrs-rel-features.dat")
(load-facts "hin_concept-to-mrs_concept.dat")
(open "implicit_mrs_concept_compound.dat" samasa-fp "w")
(open "implicit_mrs_concept_compound_debug.dat" samasa-dbug-fp "w")
(watch facts)
(watch rules)
(agenda)