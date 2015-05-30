HC2 = Net.FHttp("127.0.0.1",11111) 
HC2:setBasicAuthentication("admin", "password") 

response, status, errorCode = HC2:POST("/api/settings/reboot", "data=reset") 

if errorCode == 0 
then 
  fibaro:log(status) 
else 
  fibaro:log("error") 
end 
