get_login_id()
{
	local login=$1
	if [ -z "$1" ]
	then
		echo "Invalid login..."
	else
		curl -sS -H "Authorization: Bearer $APITOKEN"  "https://api.intra.42.fr/v2/users?filter[login]=${login}" | awk '{split($0,data,","); print data[1]}' | awk -F':' '{print $2}'
	fi
}
