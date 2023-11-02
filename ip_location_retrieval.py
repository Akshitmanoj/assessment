import requests
import json

url = "https://ipapi.co/json/"

try:
    #Get request to api
    response = requests.get(url)

    #Request was successful or not(status code 200)
    if response.status_code == 200:
        #Parse the JSON response
        data = response.json()

        #Extract data as specified. i.e. IP Address and Location Information
        ip_address = data.get('ip', 'N/A')
        city = data.get('city', 'N/A')
        region = data.get('region', 'N/A')
        country = data.get('country', 'N/A')
        time_zone = data.get('timezone', 'N/A')

        #Display the information on the console
        print(f"IP Address: {ip_address}")
        print(f"City: {city}")
        print(f"Region: {region}")
        print(f"Country: {country}")
        print(f"Time Zone: {time_zone}")

    else:
        print(f"Error: Unable to retrieve data. Status code: {response.status_code}")

except requests.exceptions.RequestException as e:
    print(f"Error: {e}")

except json.JSONDecodeError as e:
    print(f"Error: Invalid JSON response. {e}")

except Exception as e:
    print(f"An unexpected error occurred: {e}")