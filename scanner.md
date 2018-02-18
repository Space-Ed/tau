# Scanners 

scanners are delimited by parentheses and are intended for the creation of query like structures which can quantify over a structure to search for various kinds of value.

a scanner produces a new representation which can be used by a different interpretive context

### basic form

scanable (path:to:thing:pull-marker)

### composite form

scannable (
    pathA:**:?
    pathB:*:?
    *:?
)

the scanner will designate all surfaces in pathA only the immediate children of pathB and itself

Question? does this designate the surface of pathA or pathB? 
Answer?

### terminal designators (pole representation)

@ pull the whorl contact 
? pull the surface contact 
! pull the node itself (rip)

### quantifiers (space filling)
quantifiers allow you to create groupings of

id : only that matching id
*  :  everything (flat)
** : everything (deep)
#tag: has tag 
&{#tag, #tag2} :both tags present
|{id1, id2, &{#tag1, -#tag2}}: either id1, id2 or one tagged with tag1 and not tag2
$  : everything with a name
-S : everythin without a name

### recursive descent

use of ** will create a recursive scanner which can walk the entire structure. 

### symbolic binding

every quantifier that matches many values may require the term that was matched so that the group it selects can be 
the form of a symbolic binding is from each possible binding to the 

(sym1, sym2... symN)
(term1, term2... termN) => 

### usage contexts

when evaluated in media the result is used for its contacts and is typically against the parent context
when evaluated in a process it can be invoked on a variable bound to a representation thereby producing a subrepresentation
when evaluated in a construction the result is a visor or grouping which will be a surface exposing it's own bindings
