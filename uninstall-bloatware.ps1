# Uninstall Bloatware PS Script

function testLast {
	if($?) {
   	"command succeeded`n"
	}
	else {
	   "command failed`n"
	}
}

# Bing Weather
Write-Output "Removing: BingWeather";
Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage;
testLast

# Bing News
Write-Output "Removing: Bing News";
Get-AppxPackage Microsoft.BingNews | Remove-AppxPackage;
testLast

# Games
Write-Output "Removing: Candy crush saga";
Get-AppxPackage king.com.CandyCrushSaga | Remove-AppxPackage;
testLast

Write-Output "Removing: Candy crush friends";
Get-AppxPackage king.com.CandyCrushFriends | Remove-AppxPackage;
testLast

Write-Output "Removing: Bubble witch 3 saga";
Get-AppxPackage king.com.BubbleWitch3Saga | Remove-AppxPackage;
testLast;

Write-Output "Removing: Microsoft Solitaire Collection";
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage;
testLast

Write-Output "Removing: Mahjong";
Get-AppxPackage *Mahjong* -AllUsers | Remove-AppxPackage;
testLast

# LinkedIn
Write-Output "Removing: LinkedInForWindows";
Get-AppxPackage 7EE7776C.LinkedInforWindows | Remove-AppxPackage;
testLast

# Alarms and Clocks
Write-Output "Removing: Alarms and clocks";
Get-AppxPackage *windowsalarms* -AllUsers | Remove-AppxPackage;
testLast

# Groove Music
Write-Output "Removing: Groove Music";
Get-AppxPackage *zunemusic* -AllUsers | Remove-AppxPackage;
testLast

# Maps
Write-Output "Removing: Maps";
Get-AppxPackage *windowsmaps* -AllUsers | Remove-AppxPackage;
testLast

# Netflix
Write-Output "Removing: Netflix";
Get-AppxPackage Netflix* -AllUsers | Remove-AppxPackage;
testLast

# Deezer
Write-Output "Removing: Deezer Music";
Get-AppxPackage *Deezer* -AllUsers | Remove-AppxPackage;
testLast

# Spotify
Write-Output "Removing: Groove Music";
Get-AppxPackage *spotify* -AllUsers | Remove-AppxPackage;
testLast