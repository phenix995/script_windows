$continue = $true
Write-Host "Starting.."
do {
    #Games Process
    $Processvlc = Get-Process "vlc" -ErrorAction SilentlyContinue
    $ProcessExtraction = Get-Process "R6-Extraction" -ErrorAction SilentlyContinue
    $ProcessNewWorld = Get-Process "NewWorld" -ErrorAction SilentlyContinue
    $ProcessBeamng = Get-Process "BeamNG.drive.x64" -ErrorAction SilentlyContinue
    $ProcessLol = Get-Process "League of Legends" -ErrorAction SilentlyContinue
    $ProcessOverwatch = Get-Process "overwatch" -ErrorAction SilentlyContinue
    $ProcessEliteDangerous = Get-Process "EliteDangerous64" -ErrorAction SilentlyContinue
    $ProcessWoT = Get-Process "WorldOfTanks" -ErrorAction SilentlyContinue
    $ProcessSatisfactory = Get-Process "FactoryGame-Win64-Shipping" -ErrorAction SilentlyContinue
    $ProcessStarCitizen = Get-Process "StarCitizen" -ErrorAction SilentlyContinue
    $ProcessFaceswap = Get-Process "python" -ErrorAction SilentlyContinue
    $ProcessSoTGame = Get-Process "SoTGame" -ErrorAction SilentlyContinue
    $ProcessBorderlandsGOTY = Get-Process "BorderlandsGOTY" -ErrorAction SilentlyContinue
    
    $ProcessBorderlands2 = Get-Process "Borderlands2" -ErrorAction SilentlyContinue
    $ProcessBorderlands3 = Get-Process "Borderlands3" -ErrorAction SilentlyContinue
    $ProcessPhasmophobia = Get-Process "Phasmophobia" -ErrorAction SilentlyContinue
    $ProcessTS4_x64 = Get-Process "TS4_x64" -ErrorAction SilentlyContinue
    $ProcessFactorio = Get-Process "factorio" -ErrorAction SilentlyContinue
    $ProcessSkyrimTESV = Get-Process "TESV" -ErrorAction SilentlyContinue
    $ProcessSkyrimSE = Get-Process "SkyrimSE" -ErrorAction SilentlyContinue
    $ProcessFallout4 = Get-Process "Fallout4" -ErrorAction SilentlyContinue
    $ProcessDishonored = Get-Process "Dishonored" -ErrorAction SilentlyContinue
    $ProcessDishonored2 = Get-Process "Dishonored2" -ErrorAction SilentlyContinue
    $ProcessRise_of_the_Tomb_Raider = Get-Process "ROTTR" -ErrorAction SilentlyContinue
    $ProcessShadow_of_the_Tomb_Raider = Get-Process "SOTTR" -ErrorAction SilentlyContinue
    $ProcessOxygenNotIncluded = Get-Process "OxygenNotIncluded" -ErrorAction SilentlyContinue
    $ProcessRimWorldWin64 = Get-Process "RimWorldWin64" -ErrorAction SilentlyContinue
    $ProcessSpaceEngineers = Get-Process "SpaceEngineers" -ErrorAction SilentlyContinue
    $ProcessACOdyssey = Get-Process "ACOdyssey" -ErrorAction SilentlyContinue
    $ProcessACOrigins = Get-Process "ACOrigins" -ErrorAction SilentlyContinue
    #Mining Process
    $ProcessXmrig = Get-Process "xmrig" -ErrorAction SilentlyContinue
    $ProcessExcavator = Get-Process "excavator" -ErrorAction SilentlyContinue
    $ProcessNicehashQuickMiner = Get-Process "NiceHashQuickMiner" -ErrorAction SilentlyContinue
    if ([console]::KeyAvailable) 
    {
        Write-Host "Checking key.."
        $key = [console]::ReadKey()
        write-host $key.key
        if ($key.Key -eq '27') #check if escape key is pressed
        {
            #Pressed Esc
            Write-Host "Exiting.."
            if ($null -eq $ProcessXmrig) #Close Mining
            {
            }
            else 
            {
                Get-Process xmrig* | ForEach-Object { $_.Kill() }
            }
            if ($null -eq $ProcessExcavator) #Close Mining
            {
            }
            else 
            {
                Get-Process excavator* | ForEach-Object { $_.Kill() }
            }
            if ($null -eq $ProcessNicehashQuickMiner) #Close Mining
            {
            }
            else 
            {
                Get-Process nicehash* | ForEach-Object { $_.Kill() }
            }
            exit 0
        }
    }
    Write-Host "Loading.."
    if(($null -eq $ProcessBorderlandsGOTY) -and ($null -eq $ProcessSoTGame) -and ($null -eq $ProcessFaceswap) -and ($null -eq $ProcessStarCitizen) -and ($null -eq $ProcessSatisfactory) -and ($null -eq $ProcessWoT) -and ($null -eq $ProcessOverwatch) -and ($null -eq $ProcessLol) -and ($null -eq $ProcessEliteDangerous) -and ($null -eq $ProcessBeamng) -and ($null -eq $ProcessNewWorld)) #Check if games is running 
    { # When process is not active
        Write-host "Process is not active"
        if ($null -eq $ProcessXmrig) #Check if xmrig is not running
        {
            #Write-host "xmrig is not active"
            #Start-Process "C:\Users\Aurora\Documents\Exclu\xmrig-v6.16.5-mo1-win64\xmrig.exe" -WindowStyle Minimized
        }
        if ($null -eq $ProcessExcavator) # Check if excavator is not running
        {
            Write-host "Excavator is not active"
            if ($null -eq $ProcessNicehashQuickMiner) #Check is Nicehash is not running
            {
                Start-Process -FilePath "NiceHashQuickMiner.exe"-WorkingDirectory "C:\Users\Aurora\Documents\Exclu\" -Args --count
            }
        }
    }
    else
    {
        Write-host "Is active"
        if ($null -eq $ProcessXmrig) #Check is Mining is already running 
        {
        }
        else #Close Mining
        {
            Get-Process xmrig* | ForEach-Object { $_.Kill() }
        }
        if ($null -eq $ProcessExcavator) #Check is Mining is already running
        {
        }
        else #Close Mining
        {
            Get-Process excavator* | ForEach-Object { $_.Kill() }
        }
        if ($null -eq $ProcessNicehashQuickMiner) #Check is Mining is already running
        {
        }
        else #Close Mining
        {
            Get-Process nicehash* | ForEach-Object { $_.Kill() }
        }
    }

    Start-Sleep -Seconds 2
} while ($continue)
Write-Host "Done.."
Start-Sleep -Seconds 2
