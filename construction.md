#Construction

the construction context is the primary context of files sent to tau compilation. It is the form for defining the contents of the program including all other forms.

it evaluates to a _c-node_ or _construct_ which has a few distinct parts 

```
parent space 
< basis ~ name # tag : pole
    space
>  
```

- parent : the containing context
- basis  : the superclass 
- name   : identifier unique within parent
- tags   : groupings and aliases within parent
- pole   : the single expressed value
- space  : the many contained values

all parts are optional making it possible to have 

properties with key value :``` name : pole ``` 


``` <:
    :val1
    :val2
>
```
 for array like anonymous value 
 
``` <basis>``` for anonymous construction with no arguments
 
