//%attributes = {}
  // $encodes one character to hex, such as blank to %20

$result:="%"
$WSPI_MyChar:=$1

$WSPI_n:=$WSPI_MyChar\16
If ($WSPI_n<10)
	$result:=$result+String:C10($WSPI_n)
Else 
	$result:=$result+Char:C90(Character code:C91("A")+$WSPI_n-10)
End if 
$WSPI_n:=$WSPI_MyChar%16
If ($WSPI_n<10)
	$result:=$result+String:C10($WSPI_n)
Else 
	$result:=$result+Char:C90(Character code:C91("A")+$WSPI_n-10)
End if 

$0:=$result