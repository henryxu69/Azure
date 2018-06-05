configuration MonitoringWindowsServices
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Node localhost
    {
	$enabledServices = @("winrm","wuauserv")
	$disabledServices = @("bthserv")

        ForEach ($service in $enabledServices){
		Service $service{
            		Name  = $service
            		State = "running"
		}

        }
        ForEach ($service in $disabledServices){
		Service $service{
            		Name  = $service
            		State = "stopped"
		}

        }
    }
    
}