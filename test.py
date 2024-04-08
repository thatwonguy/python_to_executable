import webbrowser

def play_youtube_video(url):
    url = url
    webbrowser.open(url)

if __name__ == "__main__":
    url = 'https://www.youtube.com/watch?v=4c2KwsLeRkc'
    play_youtube_video(url)