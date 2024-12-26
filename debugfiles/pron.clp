(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/src/clp_files/gen-implicit_mrs_concept-pron.clp"))
(load ?*path*)
(load-facts "USR-CLIPS-facts.dat")
(open "implicit_mrs_concept-pron.dat" mrs-def-fp "w")
(open "implicit_mrs_concept-pron_debug.dat" mrs-def-dbug "w")
(watch facts)
(watch rules)
(agenda)