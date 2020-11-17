
# GreetingsUser.ps1  -- Asha Holland-2020 -- A PowerShell script that will load a profile to greet the user when PowerShell is launched.


# Regarding PowerShell profiles, the term hosts refers to applications. 
 
<#  Here are the names and the file paths for the PowerShell profiles; in order from highest to lowest rank/priority:
    To set up your own profiles, you will need to adapt the file paths to your own computer's file system. 
    As in store them in the corresponding locations on your own computer. 
    The AllUsers profiles may require administrator permissions to save to the desired locations.
#>


# The profile for        AllUsersAllHosts   is located at   C:\Program Files\PowerShell\7\Profile.ps1
# The profile for     AllUsersCurrentHost   is located at   C:\Program Files\PowerShell\7\Microsoft.PowerShell_profile.ps1
# The profile for     CurrentUserAllHosts   is located at   C:\Users\Asha Holland\Documents\PowerShell\Profile.ps1
# The profile for  CurrentUserCurrentHost   is located at   C:\Users\Asha Holland\Documents\PowerShell\Microsoft.Profile_profile.ps1
 

# declare variables and assign them values

$UserName = whoami                                          # get the username in the format of: computername\username
$User1 = $UserName -replace 'myLaptop42\\'                  # removes the computer's name from the variable $UserName & stores it in a variable named $User1
                                                            # place your computer's name inside the single quotes ' '. 
                                                            # \\ means to cancel out (or escape) the backslash character used between your computer name and username; 
                                                            # otherwise there will be an error. 
                                                          
$DateNTime = Get-Date -Format "dddd MM/dd/yyyy HH:mm"       # call up and assign, the day, date, and time to a variable in this format: 
                                                            # Day of the week, Month / day of the month / year, hours and minutes in military time
                                                            
$CompName = $Env:ComputerName                               # call up the computer name separately from the environment variables

 
#Adapt this script by using your own username and first name.



 
if ( $User1 -eq "aholland" ) {                        # If $User1 is equal to (or the same as) my username, then change $User1 to my name and greet me.  
     $User1 = "Asha"        

    Write-Host "Greetings, $User1! " -ForegroundColor Black -BackgroundColor Blue             #Then greet 

    Write-Host "You have logged in at: $DateNTime. " -ForegroundColor Black -BackgroundColor Blue

    Write-Host "You are logged into the computer named: $CompName  "  -ForegroundColor Black -BackgroundColor Blue

    }

 

 elseif ( $User1 -ne "anholland" && $User1 -ne "" ) {

   $User1 = $User1

   Write-Host "Greetings, $User1! " -ForegroundColor Black -BackgroundColor Blue

   Write-Host "You have logged in at: $DateNTime. " -ForegroundColor Black -BackgroundColor Blue

   Write-Host "You are logged into the computer named: $CompName  "  -ForegroundColor Black -BackgroundColor Blue

 }

 

   else { 

        Write-Host "User is unauthorized. Closing session..."

        Start-Sleep 3 

        exit 

    }

 

$clearScreen = Read-Host -Prompt "Do you want to clear the screen? [y]es or [n]o ?"

 

        if ($clearScreen -eq "y") {

            Write-Host "Clearing the screen. You may begin scripting..." -ForegroundColor Blue -BackgroundColor White

            Start-Sleep 2

            Clear-Host

        }

 

      else   {

        Write-Host "You may begin scripting..."  -ForegroundColor Blue -BackgroundColor White

        Write-Host " :) "

      }

 

# greet user with name, date and time of logon, and a smiley face.















