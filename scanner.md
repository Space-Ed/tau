# Scanners 

also known as voids, vacuums, designators, destructures, queries.

scanners are delimited by parentheses and are intended for the creation of query like structures which can quantify over a structure to search for various kinds of value.

if undefined is the value representing a lack of value, a scanner is a value representing a complex lack of values.

a scanner produces a new representation which can be used by a different interpretive contexts, the primary function is so seek out nodes which will be employed by 

the result of a scan upon a scannable structure is itself a structure. terminal values are reached by eventual flattening, iteration and singling out the form.

A key feature is the ability to symbolically bind values to make them aliased by local terms 

### basic form
the basic form is a colon seperated sequence of _terms_, each term is a selector of the next stage. 

scanable (path:to:thing:pull-marker)

same as
path:to:thing:pull-marker:scannable.path.to.thing.pull-marker

### composite form

unlike with constructs, there is no such thing as a pole. This is because the pole value being blank is what indicates it as selected.

scannable (
    pathA:**        //under pathA choose everything deeply
    pathB:          //under 
        #has-name
        #other
    *               //choose all here
    :               //choose the root 
)

### quantifiers (space filling)
quantifiers allow you to designate groups of nodes.

(empty): the whole
id : only that matching id
*  :  everything (flat)
** : everything (deep)
#tag : has tag 
#tag,#tag2 :both tags present
```id1; id2; #tag1,-#tag2``` : either id1, id2 or one tagged with tag1 and not tag2
```&``` : everything with a name
```-&```  : everything without a name
```$x``` : everything with an id same as the symbol
```#$x``` : everythin with a tag same as symbol x
```-$x``` : everything with id not same as symbol x
```<b>``` : things of certain basis 


##examples

() the root value
(**:id) all things everywhere known as id

### globbing

use of ** will create a recursive scanner which can walk the entire structure. 

### symbolic binding

terms may have the form
[[sym-name]]=[[quantifier]]

for example
(X=*) means to designate everything and to bind the id to X

binding usage

S(X=*).$X will flatten the structure. same as ...S(X=*)
$X : S(X=*) will break S out into the space using the same root id's.

symbolic bindings 
(sym1, sym2... symN) 
(term1, term2... termN)
 
### usage contexts

when evaluated in media the result is used for its contacts and is typically against the parent context
when evaluated in a process it can be invoked on a variable bound to a representation or system thereby producing a subrepresentation
when evaluated in a construction the result is a visor or grouping which will be a surface exposing it's own binding



