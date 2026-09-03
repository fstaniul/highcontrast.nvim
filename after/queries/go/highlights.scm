;; vim: ft=query
;; extends

(package_clause
  (package_identifier) @AlabasterDefinition)

(const_declaration
  (const_spec
    name: (identifier) @AlabasterDefinition))

(function_declaration
  name: (identifier) @AlabasterDefinition)

(method_declaration
  name: (field_identifier) @AlabasterDefinition)

;; Local Definitions
;; 1. Standard var declarations (e.g., var x int)
(var_declaration
  (var_spec
    name: (identifier) @AlabasterLocalDefinition))

;; 2. Short variable declarations (e.g., x := 10)
(short_var_declaration
  left: (expression_list
    (identifier) @AlabasterLocalDefinition
    (#not-eq? @AlabasterLocalDefinition "_")))

;; 3. Function parameters (local to the function)
(parameter_declaration
  name: (identifier) @AlabasterLocalDefinition)

;; 4. Range variables (e.g., for i, v := range slice)
(range_clause 
  left: (expression_list
    (identifier) @AlabasterLocalDefinition
    (#not-eq? @AlabasterLocalDefinition "_")))
