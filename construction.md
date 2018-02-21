#Construction

also known as specification, description, blueprint, design, creation, build

the construction context is the primary context of files sent to tau compilation. It is the form for defining the contents of the program including all other forms.

it evaluates to a _c-node_ or _construct_ which has a few distinct parts 

we begin with a space within which we can identify some things some by name some by tags and some just exist 
those 

a program is run the usual way

```bash

$ tau program.t 

``` 

which will load the file in and construct it's contents, it may go off and include other  files and libraries.

```
parent space 
name #tag : < definition-domain.basis/operational-domain |  

    space : {
        local = @()          
    }

    basic: [
        linking
    ]
    magic: (
        designation
    )

    super: <
        definition
    >

    external: <import 'external'>

    whatever: 0
   
    "Just let me be"
>  
```

```
like HTML?

<div
    id#class : <h "hello world">
    [id:click -> {let: send <css color:green>} -> id:css] 
>
```

- parent : the containing context
- basis  : the superclass 
- name   : identifier unique within parent
- tags   : groupings and aliases within parent
- pole   : the single expressed value
- space  : the many contained values

