
# Functions regarding turning a string into a sequence of tokens

# symbol characters are \w,-,@,%,$
# boundaries are space, newline, indent
# keychars : #,!
# delimiters are <, >, {}, []
#
#
# <basis> blah#tag#tag2

Indentation = 4

KeySyms = {
    "<" => :open_basis,
    ">" => :close_basis,
    "\\" => :escape,
    "!" => :law_delim,
    "\"" => :quote,
    "'" => :apostrophe,
    ":" => :colon,
    "\n" => :line_break,
    "->" => :designator
}

# is the char par

def lexer (input)

    chars = input.chars
    words = []
    word = ""
    mode = :top
    i = 0
    indent = 0 

    while char = chars[i]
        case mode
        when :top  # word be
            case char
            when /\w/
                mode = :word
            when "\n"                      #line break
                mode = :tab
                indent = 0
                words << :line_break
                i += 1
            else 
                if KeySyms.key? char        #consume key
                    words << KeySyms[char]
                end

                i+= 1
            end
        when :word
            case char
            when " "  # word end
                mode = :top
                words << word
                indent = 0
                word = ""
                i += 1
            when "\n"
                mode = :tab
                words << word
                words << :line_break
                indent = 0
                word = ""
                i+= 1
            when /\w/
                word << char
                i += 1    
            else #give back to top
                words << word 
                word = ""
                mode = :top
            end
        when :tab
            case char
            when /\ /
                word << char
                if word.length == Indentation
                    indent += 1 
                    word = ""
                end
                i+=1
            when /\w/
                if word.length != 0
                    fail "bad indentation"
                end
                words << indent
                indent = 0 
                mode = :word
            else 
                mode = :top
            end
        when :literal
            case char
            when terminator
                word << char
        else
            i+=1
            #ignore or raise
        end
    end

    words
end


# stdin attach
total = ""
while line = gets
    total += line
end

puts lexer(total).to_s
