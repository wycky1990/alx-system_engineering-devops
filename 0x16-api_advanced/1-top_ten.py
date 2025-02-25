#!/usr/bin/python3
"""
Queries the Reddit API and prints the titles of the first 10 hot posts for a given subreddit.
If the subreddit is invalid, it prints None.
"""

import requests

def top_ten(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {'User-Agent': 'Custom User Agent'}

    try:
        response = requests.get(url, headers=headers)
        if response.status_code == 200:
            data = response.json()
            posts = data['data']['children']
            if posts:
                for post in posts:
                    print(post['data']['title'])
            else:
                print("No posts found for this subreddit.")
        else:
            print("Error:", response.status_code)
    except requests.exceptions.RequestException as e:
        print("An error occurred:", e)
