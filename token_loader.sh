#Change *your_user_path* with your path
APITOKEN=$(cat /Users/*your_user_path*/.42apitoken)

token_loader()
{
	APITOKEN=$(curl -X POST --data "grant_type=client_credentials&client_id=MY_AWESOME_UID&client_secret=MY_AWESOME_SECRET" https://api.intra.42.fr/oauth/token | awk '{split($0, data,"\""); print data[4]}')
	
	#Change *your_user_path* with your path
	echo $APITOKEN > /Users/*your_user_path*/.42apitoken
	
	echo "Token updated succesfully :))"
}
