Attribute VB_Name = "TwipsPix_Conv"
'--- Twips to Pixel
'--- Pixel to Twips
'--- Convertion
'--- by : BIOS

Function pX(ByVal twipsX As Long) As Integer
     pX = twipsX \ Screen.TwipsPerPixelX
End Function
Function pY(ByVal twipsY As Long) As Integer
     pY = twipsY \ Screen.TwipsPerPixelY
End Function
Function tX(ByVal pixX As Integer) As Long
     tX = pixX * Screen.TwipsPerPixelX
End Function
Function tY(ByVal pixY As Integer) As Long
     tY = pixY * Screen.TwipsPerPixelY
End Function
