1s/^\(.*\)$/\.TH \1/
/NAME/s/^\(.*\)$/\.SH \1/
/SYNOPSIS/s/^\(.*\)$/\.SH \1/
/DESCRIPTION/s/^\(.*\)$/\.SH \1/
/OPTIONS/s/^\(.*\)$/\.SH \1/
/EXAMPLES/s/^\(.*\)$/\.SH \1/
/FILES/s/^\(.*\)$/\.SH \1/
/AUTHOR/s/^\(.*\)$/\.SH AUTHOR/
/SEE ALSO/s/^\(.*\)$/\.SH \1/
s/\<OPTION\>/\.IP/g
s/\<ENDOPTION\>//g
s/\<EXAMPLE\> \(.*\)/\.nf\
shell> \1\
\.fi\
/g
s/\<ENDEXAMPLE\>/\
/g
/SEE ALSO/,/AUTHOR/{
  /^[a-z]/s/^\(.*\)$/\.BR \1/
  s/(\([1-9]\))/ "(\1), "/g
}
/AUTHOR/{
i\

a\
	    Copyright ArangoDB GmbH, Cologne, Germany
}
