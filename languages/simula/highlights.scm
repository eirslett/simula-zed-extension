(identifier) @variable
(type_expression) @type

; All the kinds of comments
[
    (comment)
    (end_comment)
    (first_directive)
    (directive)
    (line_comment)
] @comment

[
  ";"
  ":"
  ","
] @punctuation.delimiter

(string_literal) @string
(character_literal) @string
(number_literal) @number
(boolean_literal) @boolean
[
    (none)
    (notext)
] @constant

[
    (this)
] @variable

[
    (text)
    (character)
    (array)
    (integer)
    (boolean)
    (real)
    (short)
    (long)
    (ref)
    (procedure)
    (label)
] @type

[
    "<"
    (lt)
    "<="
    (le)
    "="
    (eq)
    ">="
    (ge)
    ">"
    (gt)
    "<>"
    (ne)
    "=="
    "=/="
    (is)
    (in)

    (and)
    (or)
    (imp)
    (eqv)

    (not)

    "+"
    "-"
    "*"
    "**"
    "/"
    "//"
    "&"
] @operator

[
    ":="
    ":-"
] @operator

[
  "("
  ")"
]  @punctuation.bracket

; control flow
[
    (if)
    (then)
    (else)
    (while)
    (do)
    (for)
    (step)
    (until)
    (goto)
    (inspect)
    (when)
    (otherwise)
    (begin)
    (end)
    (switch)
    (activate)
    (reactivate)
    (at)
    (delay)
    (before)
    (after)
    (prior)
] @keyword

; other keywords
[
    (ref)
    (new)
    (class)
    (inner)
    (qua)
    (name)
    (value)
    (external)
    (virtual)
    (hidden)
    (protected)
] @keyword

(object_generator
        name: (identifier) @type
)
(remote_identifier
          property: (identifier) @property
)
(local_object
    name: (identifier) @variable
)
(ref_expression
    class_name: (identifier) @type
)

; The problem with annotating this, is that we cannot always
; distinguish between a variable and a procedure statement.
; For example "a := b;" b can be either a variable or a procedure statement.
;(procedure_statement
;    procedure: (identifier) @function
;)

(block
    class:
        (procedure_statement
            procedure: (identifier) @function
        )
)
(value_assignment
    lhs: (identifier) @variable
)
(reference_assignment
    lhs: (identifier) @variable
)
(for_statement
    variable: (identifier) @variable
)
(when_clause
    type: (identifier) @type
)
(variable_declaration
    name: (identifier) @variable
)
(array_declaration
    name: (identifier) @variable
)
(procedure_declaration
    name: (identifier) @function
    parameter: (identifier) @variable
)
(class_declaration
    class_name: (identifier) @function
    base: (identifier) @function
    parameter: (identifier) @variable
)
(specification
    (identifier) @variable
)
(protection_specification
    (identifier) @variable
)
(external_class_declaration
    (external_item
    name: (identifier) @function)
)
(external_procedure_declaration
    (external_item
    name: (identifier) @function))
