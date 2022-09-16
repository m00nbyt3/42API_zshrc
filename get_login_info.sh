get_login_info()
{
	local login=$1

	if [ -z "$APITOKEN" ]
	then
		echo "Invalid 42 API Token :(("
	fi
	if [ -z "$1" ]
	then
		echo "Invalid login..."
	else
		curl -sS -H "Authorization: Bearer $APITOKEN"  "https://api.intra.42.fr/v2/users?filter[login]=${login}"
	fi
}
