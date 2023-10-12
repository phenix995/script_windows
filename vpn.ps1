# Define the server IP address and the VPN connection name
$ServerIP = "1.1.1.1"
$VPNConnectionName = "NordVPN IKEV2"

# Loop indefinitely
while ($true) {
    # Ping the server
    $pingResult = Test-Connection -ComputerName $ServerIP -Count 3 -Quiet
    
    if ($pingResult) {
        # Ping successful, wait for 5 seconds
        Write-Host "Ping OK"
        Start-Sleep -Seconds 5
    }
    else {
        # Ping failed, disconnect and reconnect the VPN
        Write-Host "Ping to $ServerIP failed. Disconnecting and reconnecting VPN..."
        
        # Disconnect VPN
        rasdial.exe $VPNConnectionName /disconnect
        
        # Wait for 2 seconds
        Start-Sleep -Seconds 2
        
        # Reconnect VPN
        rasdial.exe $VPNConnectionName
        
        Write-Host "VPN reconnected."
    }
}
