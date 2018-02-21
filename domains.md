### Domains

the essential functions of domains  

- definition
 -  natures
 -  basises
- recovery
- static/shared resources
- description (re-representation)
- meta-description/schema (self-representation)

### referring to domains

Strategy 1: direct file reference
in this strategy a construct refers to what domain it is in by giving the path of the file (relative to this file or from the project root)

Strategy 2: file inclusion and relative reference
here the domain is a sibling of the construct, and the domain chosen is by using it's identifier. 

Strategy 3: absolute index reference
our project contains a domain index which creates a single namespace for domains both external(imported) and internal.

Strategy 4: Default
you still get a domain when you do not specify, it is the same domain as the space of recovery.

Strategy 5: absolute

### examples

include 'path/to/domain' as relative-domain

<relative-domain.basis> name #tag in operating-domain:
    extra:

### basis resolution.

- look in the immediate surroundings
- look in the domain
- recursively seek through domains
- look in the absolute/platform domain.
- once you find the base nature create the basic object and apply the final initialization patch.

### process imparatives

within the {process} node, we would like to be able to command the creation from data and the extraction to data within the context.

save [[representation]] reset the record to this one
@x = representation
@x : repr
save @x: repr

make x : [[representation]]  turn an inert representation into a live structure in this context
@x ~ representation
@x ~ <basis> 
@x = new <> 
create, prime, init, new, plant

describe (desgnator) pick a live structure and create a representation of it

describe @x
@x<basis>
@x(?)
@x(<>)
what-is, explain, inquire, extract. 

merge/patch/modify: apply this representation as a delta to the structue or representation.

@x << representation
merge @x representation

kill turn a living structure back to representation in place
kill @x === save @x describe @x

resurrect, birth, raise
raise x === make @x @x

delete, remove
delete @x
 
lift, dig, pick-up, rip turn a live into representation and leave it's place blank
dig @x === describe @x delete @x

modify the domain 
use ~ instead of @

### process basises
if a process is the basis it will act as a transform to produce the next structure. Such a form would allow it to require information, and to derive properties from the context and input from many sources. they are the effective replacement of macros.

There is an ambiguity of context though, is the context that of the instance which is not yet constructed, or is it the domain where it lives?

We should make it that the structure in this form does exist to be connected but the context is where the process is defined.
```
process-basis:{
    from init let topside: <basis> 
        definite to required-input ask: (hello)
}

<process-basis> instance: 
    
^[instance -> ]
```

the construction of this will fetch hello from whatever

### property modifiers
some times we will want to restrict the way that certain properties are accessed, to create purer abstractions and patterns.

- this structure cannot be killed (invincible) 
- only accessible as basis (transcendent)
- cannot be overridden (fixed)
- must be overridden (abstract) 
- is constant once alive (constant)
