Configuration WebAppConfig
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'

    Node "localhost"
    {
        # Voeg hier DSC-resources toe om de gewenste staat van je webapp te configureren
    }
}

WebAppConfig -OutputPath "C:\DSC\WebAppConfig"
Start-DscConfiguration -Path "C:\DSC\WebAppConfig" -Wait -Verbose -Force
