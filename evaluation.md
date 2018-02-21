
in many programming languages the means of evaluation and of representation are cast into the same structural form often an object. That is the data of a program is treated in the same way as a function or class of the program which enables them to be treated in much the same way. Tau will play differently and provide special forms for passing from data to process. 

data is immutable, we can only create new copies of a representation. 
constructions are mutable 

Tau has a notion of construction as well as evaluation. that is you can evaluate a complex representation before constructing it. This means there are two distinct categories of values. that is the alive and the dead. the active process and inert data representation. Such a dichotomy is hardly a novel idea, usually a program has a data layer which pulls representation (from files and databases) into model objects.

within a process node we are primarily converting data and distributing it 

but at some stage we must be able to convert representation to live structure and vice versa 

this action requires us to be operating in a domain 


### transportable 

can a live structure be moved is a hard problem, on the one hand it is a well encapsulated unit with no external references so why couldn't it move but on the other it can only be assured to fit in it's domain of construction where it's operational requirements match the platform provided.

We would like to say a node can detach and reattach within it's range. 

- assume that anything can attach anywhere
- every context is reponsible for vetting potential attachments
- nothing moves it is just reconstructed. 

^{
    this scope cannot be moved from it's parent it is 'pinned'
}

the use of ^ means that the following is upscoped. 
```tau


<person ~ bob: [(behaviour)]
    behaviour: ^{
        from being-told-what-to-do receive words:
            if aligns(@values, words):
                plant words
            else
                reject "I do not care for your words" 
        from being-asked-what-you-are receive words:
            dig words
    },

    values:[[complex]]
>
```

process and connection scopes can use ^ to operate in the parent scope. 
 
it is much simpler if we opt for no transportability only representation, because it means that out active structure is one tree structure. there are no disjoint live structures. 

- Assign to process scope
- Retrieve from process scope 
- inspect self/parent scope
- influence self/parent scope
    - create new constructions in scope
    - 
- send to externality
- recieve from externality
- set/get from domain 

 
### use of pure static functions
 is a useful 

we would like to be able to invoke functions to combine and compare values, 

do-a-thing : {receive (destructure)
    restructure } 

is a functional form, but processes are meant to be operated from the link context 

from a process context it looks like

```to do-a-thing ask argument```

so 'do-a-thing' must be in scope which could be by being in the local scope @

```to @do-a-thing send arg```

or it could have been defined earlier

```do-a-thing = {}```

or it could be from the domain scope which would make that function usable in all sorts of context

```to ~do-a-thing send arg```
            process  value 
momentary  
instance
static 


###higher order functioning 

because a process node is equivalent to it's representation it is possible to pass this object in and to invoke it using send. However can it be operated when it is not mounted? what would it's scope be?

might it be bound to an immutable representation and hence be inoperable? might it require reference to an external scope? 

is the best we can do to inject our own circumstances to it before we invoke? perhaps apply additional symbolization to emulate the link contex basically the process node needs to be bound before it is invoked and it would be difficult to write reducers and filters like other languages. reducers and filters are meant to be covered by positioning in the structure. In a sense the use of a higher order functions is de-emphasized by having a syntax for routing and for scanning built into the language. 


### pole stacking

thing ~ of-type : {which-does-this} [-> sub] 
    sub: |{another-thing}
 
    to-other: ^[sub-> ] 

this system will 

