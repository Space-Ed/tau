## Medium Forms

these forms are delimited by [] square brackets, they are for creating chains of processes from the terminal sinks and sources (program io ports) and creating relations between things based on symbolic relation. 

A medium uses arrows -> to show what effects what. the arrows can stand for verbs pushes to or pulls, rather than indicating the direction of data flow, data flows both ways. 

the expressions of a medium are evaluated as contact exporters, and by default we refer to the parent structure. 

the simplest form is 
```[]``` 

which means do nothing at any time

the next is ```[->]```
that means inputs to the parent are mapped back to itself. 

the first usable case is ```[ <stdin> -> <stdout> ]``` which will construct these two buildins and connect them to create an echo program. 

### surface expressions

if our form looks like [<%surface expression%> -> <%surface expression%> ]

our surface expression looks like this 

<%re-binding%>|<%structure%>(<%syphon%>) 

an example of this could be ```my-source = source <thing | with-name: "value"> (source=*:?)``` which means construct the thing then search for its base level contacts binding their name to source then rebinding to my-source for connection

The default construct is the self and default scan is the contact puller, because a process node resolves to a single contact another common use is to write an expression inline

[ source -> {
    receive input: ask input
} -> through ] 
 
this is a request proxy

## Symbols, Tokens and Terms

a symbol is a kind of variable which only exists to mark other terms which may then refer to things.

in the form ```[ (these-things:bah=*:?) -> (those-things:bah=*:?) ]```

our two surface expressions are exporting the symbol bah so the statement means
"connect all of these-things to all of those-things only where these and those have the same name."
 
symbols are determined by scanners (like above) and are used by processes to direct and discern output and input. 

```[ <:;<inlet ~ a><inlet ~ b>(x=*:?) -> {
    from x=a let input: 0
    from x=b let input: 1
}]```

means when we recieve from inlet a we return 0 and from inlet b we return 1

### rebinding

sometimes we dont have the ability to choose the names for the expressions that we use so we are required to be able to say what these symbols will be analagous to in our linking context.

rebinding forms are simply comma seperated assignments  outer-symbol-name=inner-symbol-name 


### serial and parallel

we use indentation to indicate when many links lead from a single source.

[ A =>
    B
    C ]

means A links to b and c in parallel

[A ->
    B 
    C ] 

means A links to B which links to C.. 


we can also reverse the direction

[ A <= 
    B
    C ] 

B and C both link to A

[ A <=
    B
    C ]


### many expressions
 
because there are interpretations of blank ```[A -> -> B]``` would have ambiguous meaning
however because we use indentation starting on a new line back indented will mean there is a new law

```[
A -> B
C -> D
]```

