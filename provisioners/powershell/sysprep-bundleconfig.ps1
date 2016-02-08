$EC2SettingsFile="C:\\Program Files\\Amazon\\Ec2ConfigService\\Settings\\BundleConfig.xml"
$xml = [xml](get-content $EC2SettingsFile)
$xmlElement = $xml.get_DocumentElement()

foreach ($element in $xmlElement.Property)
{
    if ($element.Name -eq "AutoSysprep")
    {
        $element.Value="Yes"
    }
}
$xml.Save($EC2SettingsFile)