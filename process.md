## process forms

__other names__: Function, evaluators, executed expressions, transformers, relays

These forms are delimited by {} and provide a context which enables the transformation of data, there are two kinds of special form that can be accessed within these contexts, each containing a context to create the value transported.

the evaluation of a process form in a constructive context creates a p-node value

Within a p-node there is a cerain imparative and synchronous mode of operation where each command executes with potential side effects and we will not proceed to the next command until the current is complete. 

###Spaces and Poles in process.
whether in input response composition or output query composition it is possible to create a many valued or single valued 

### input form 

from <bindings> receive <variable>: 
    // space for response composition

as well as receive there is also 
- react <variable> : input can be used as a trigger
- detect : input triggers without a variable
- receive <variable> : input will not trigger


### output form

to bindings ask:
    // space for query composition

as well as ask we have
- tell : do not create the response
- send : do not wait
- ask-race : take first response
- ask-last : take last response


### co-containment

when an output form is within an input form it means that in order for the return to be composed we must first complete these queries/commands

when an input form is within an output form it means that we should wait for those inputs to be activated before sending the form. 

### scope of operation

at the root level, forms are basically independent, when an input occurs it can hit only one top level input form 

within the space we have references to symbols, as part of to/from forms and also as referred using $. This enables a process to designate different  inputs and outputs to various analagous operations. An input coming from a contact which provides a binding can activate the forms which require those bindings.

 the form  ```from all ask: (?) ```

does not require any bindings so will send this query indiscribinantly, whereas

```from x ask (?) ``` 
requires that at least x is bound 

``` from x=token ask (?)``` 
requires that x is bound to this particular 'token'. 

a p-node creates a constraint of it's least restrictive form for both input and output exposed to the linking context. 

### multiplicity - 

Every output form has the potential to return many values if you include such a form into a context it can be spread using ...
```
from X receive input:
    ...to Y ask:(?) 
```

also if there are many possible bindings the form can create a map based on the symbols

```
from X receive input:
   $Y : to Y race : (?)
```

means for each binding to Y race a

``` 
from X receive input:
   $Y : to Y ask-all 
```

will create several groupings with all responses

### Local variables 

the scope of a p-node is created new for each root level operation this scope could be imagined as a distinct binding

```
to local tell: x : 4
```

to set the variable x to 4

for convenience we will express this as 

```set x : 4```

and as a corrolate

```get x ```

local scope includes the variables of input forms. 


### conditional and switch branching
multiplex the input based on its base level keys

from X receive input:
    to input(S=*:?) send : input($S:?)

send to two different channels 

from X receive input: 
    if input == 0: 
        to one touch
    else if input == 1:
        to other touch
    else:
        nothing

a conditional expression is automatically expansive, so it behaves like a macro if would.

### containing other forms

the purpose of this form is to transform representative data from many sources and distributing to many sinks and allowing some logic. most things are therefore not evaluated in this scope and can be composed freely with the included forms. Everything is producing a result which will percolate to the form that is being evaluated whether it is composing a response or a message to send. the nestings are evaluated in an arbitrary order. the exception is the scanning form which can be used to create a su

dot 
### operators

this form is also where we can apply binary operators on values, templating strings and using built in transforms.

operators include the arithmetic operators , boolean operations and comparators. Because we are in representation space equality is deep and it is possible to apply sub object as <

set result = get input + to req=target ask (?)


