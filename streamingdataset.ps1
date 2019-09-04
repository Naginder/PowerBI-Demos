#myworkspace workspace in navirdi@microsoft.com subscription

while($true) {
    $time=(get-date -Format "s").tostring()
    Write-Host $time
    $endpoint = "https://api.powerbi.com/beta/72f988bf-86f1-41af-91ab-2d7cd011db47/datasets/4843bcc8-5866-42ce-af94-e7a34b2bdad5/rows?key=hqmyQ%2FlwsqXGkh%2FCATeNCIDrhSefABLQlWnXYxDG0lh%2Bo8wRM4xLkkXq%2BaG2lC%2FGaM5Q2u9mfQH2gPeGm9p78g%3D%3D"
    $payload = @{
        "datetime" =$time
        "deviceid" ="AAAAA555555"
        "humidity" =get-random -Minimum 50.00 -Maximum 80.00
        "temperature" =get-random -Minimum 25.00 -Maximum 35.00
        "moisture" =get-random -Minimum 100.00 -Maximum 200.00
        "brightness" =get-random -Minimum 50.0 -Maximum 80.00
        "motiondetected" =get-random -Minimum 0 -Maximum 1
    }
    Invoke-RestMethod -Method Post -Uri "$endpoint" -Body (ConvertTo-Json @($payload))
    start-sleep -Seconds 1

}