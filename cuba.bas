REM https://rosettacode.org/wiki/Smallest_numbers#FreeBASIC

#include once "gmp.bi"
#define maxbufsz 100000000
#define dp 3321921
Dim Shared As Zstring * maxbufsz outtext
 
Function xpower(number As String,n As Uinteger) As String'automate precision
    Dim As __mpf_struct _number,FloatAnswer
    Dim As Ulongint ln=Len(number)*(n)*4
    If ln>dp Then ln=dp
    mpf_init2(@FloatAnswer,ln)
    mpf_init2(@_number,ln)
    mpf_set_str(@_number,number,10)
    mpf_pow_ui(@Floatanswer,@_number,n)
    gmp_sprintf( @outtext,"%." & Str(n) & "Ff",@FloatAnswer )
    Var outtxt=Trim(outtext)
    If Instr(outtxt,".") Then outtxt= Rtrim(outtxt,"0"):outtxt=Rtrim(outtxt,".")
    Return Trim(outtxt)
End Function

function iis_substring( s as string, j as string ) as integer
    dim as integer myret, i, nj, ns

    nj = len(j)
    ns = len(s)

    myret = 0
    for i = 1 to (ns - nj + 1)
      if mid(s,i,nj) = j then 
        myret = i
        exit for
      endif
    next i
    function  = myret
end function

REM Main program
dim as integer k
dim as uinteger i

for i = 0 to 50
    k = 0
    do
        k = k + 1
    loop until (iis_substring( xpower(str(k), k), str(i) ) > 0)
    print k;" ";
next i
print " "
end
