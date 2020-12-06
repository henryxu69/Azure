$uri = "<FunctionAppURI>"

# Content Type must be correct, otherwise the function app will consider $body to a string.
$headers = @{
    "Content-Type"= "application/json"
}

$Body = @{
    "name"="Azure"
}
$BodyJson = $Body | ConvertTo-Json 

$output = Invoke-RestMethod -Uri $uri -Method 'POST' -Body $BodyJson -Headers $headers
$output
