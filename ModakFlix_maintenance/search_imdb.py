
from googlesearch import search
import requests  # to get image from the web
import shutil  # to save it locally
import time, os, json, sys, traceback

url_file_path = "url.txt"
json_output_file = "output.json"
"""This will take the query and return the first link from the imdb"""

def get_movies_path():
    file_handle = open("../path_movies.txt", "r")
    path = file_handle.readline().strip()
    file_handle.close()
    return get_server_path_root()+path

def download_image(image_url, filename):
    ## Set up the image URL and filename

    # Open the url image, set stream to True, this will return the stream content.
    if image_url:
        r = requests.get(image_url, stream=True)

    # Check if the image was retrieved successfully
        if r.status_code == 200:
        # Set decode_content value to True, otherwise the downloaded image file's size will be zero.
            r.raw.decode_content = True

        # Open a local file with wb ( write binary ) permission.
            with open(filename, 'wb') as f:
                shutil.copyfileobj(r.raw, f)

            print('Image sucessfully Downloaded: ', filename)
        else:
            print('Image Couldn\'t be retreived')


def get_server_path():
    file_handle = open("../path.php", "r")
    output = ""
    for file in file_handle:
        if file.find("$path_server")!=-1:
            output = file.split("=")[1]
            output = output.replace("\"", " ")
            output = output.replace(";", " ")
            output = output.strip()
    return output

def get_server_path_root():
    file_handle = open("../path.php", "r")
    output = ""
    for file in file_handle:
        if file.find("$path_server_root")!=-1:
            output = file.split("=")[1]
            output = output.replace("\"", " ")
            output = output.replace(";", " ")
            output = output.strip()
    return output

def get_imdb_link(movie_name):

    time.sleep(1)
    query = str(movie_name)+" "+" imdb"
    urlOut = ""
    output = search(query, lang='en', num=10, stop=10, pause=2)
    for url in output:
        if str(url).find("www.imdb.com") != -1:
            urlOut += str(url)
            break
    return str(urlOut)

def call_spider(movie_name):

    link = get_imdb_link(movie_name)
    #print(link)
    file_handle = open(url_file_path, "w")
    file_handle.write(link)
    file_handle.close()
    if(os.path.isfile(json_output_file)):
        os.remove(json_output_file)
    file_handle = open(json_output_file, "w+")
    file_handle.close()
    os.system("scrapy crawl spider_imdb -o "+json_output_file)
    os.system("scrapy crawl imdb_image_spider")
    time.sleep(1)
    file_handle = open(json_output_file, "r+")
    json_output = json.loads(file_handle.read())
    """count = 0
    for each in file_handle:
        if count == 1:
            json_output = each
        count += 1"""
    #print(json_output)
    file_handle.close()
    return json.dumps(json_output)

def construct_description_text(json_output, directory_path):

    file_handle = open(directory_path + os.sep + "description.txt", "w")
    movie_name = directory_path.split(os.sep)[-1]
    json_obj = json.loads(json_output)
    json_obj = json.loads(json_output)
    description_list = json_obj["description"]
    description = "Summary : "
    for des in description_list:
        description += des.strip()+" "
    description += "\n\nIMDB Rating : "+json_obj["rating"]+"/10"
    crews = json_obj["crews"]
    for crew in crews:
        description += "\n\n"+crew+" "
        count = 0
        while count < len(crews[crew]):
            if count != (len(crews[crew]) - 1):
                description += " "+crews[crew][count] + ","
            else:
                description += " "+crews[crew][count]
            count += 1
    file_handle.write(description)
    file_handle.close()

def construct_description_json(json_output, directory_path):

    file_handle = open(directory_path + os.sep + "description.txt", "w")
    movie_name = directory_path.split(os.sep)[-1]
    file_handle.write(json_output)
    file_handle.close()

def handle_name(name):
    """ To remove the list of characters invalid in name of file"""
    name = name.replace(":", "")
    name = name.replace("#", "")
    name = name.replace("<", "")
    name = name.replace(">", "")
    name = name.replace("$", "")
    name = name.replace("+", "")
    name = name.replace("!", "")
    name = name.replace(":", "")
    name = name.replace("`", "")
    name = name.replace("&", "")
    name = name.replace("'", "")
    name = name.replace("\"", "")
    name = name.replace("|", "")
    name = name.replace("*", "")
    name = name.replace(":", "")
    name = name.replace("/", "")
    name = name.replace("\\", "")
    name = name.replace("@", "")
    name = name.replace("=", "")
    name = name.replace("{", "")
    name = name.replace("}", "")
    name = name.replace("?", "")
    name = name.replace("%", "")

    return name

def rename_show_directory(title, directory_path):
    """ This is to rename the directory path which will essentially be something gibberish to a respectable name"""
    folder_name = directory_path.split(os.sep)[-1]
    title = title.split("- IMDb")[0].strip()
    title = handle_name(title)
    try:
        os.rename(get_movies_path()+folder_name, get_movies_path()+title)
        print("Successfully renamed - " + get_movies_path() + title)
    except Exception as e:
        print(traceback.format_exception(*sys.exc_info()))

def do_chores(json_output, directory_path):
    """Do the description and album art"""

    #json_output = json_output.replace("'", "\"")
    exceptionJson = False
    json_obj = {}
    if json_output[0] == '[':
        json_output = json_output[1:-1]
    json_obj = json.loads(json_output)
    

    construct_description_text(json_output, directory_path)
    download_image(json_obj["image_src"], directory_path+"/album_art.jpg")
    rename_show_directory(json_obj["title"], directory_path)

def analyse(directory_path):

    file_list = os.listdir(directory_path)
    movie_name = directory_path.split(os.sep)[-1]

    def search_for_description(file_list):
        for file in file_list:
            if file == "description.txt":
                return True
        return False

    def search_for_album_art(file_list):
        for file in file_list:
            if file == "album_art.jpg":
                return True
        return False

    json_output = {}
    if not search_for_description(file_list):
        """ call the spider"""
        json_output = call_spider(movie_name)
    elif not search_for_album_art(file_list):
        """ call the spider"""
        json_output = call_spider(movie_name)

    if json_output:
        do_chores(json_output, directory_path)

def analyse_explicit(directory_path):

    file_list = os.listdir(directory_path)
    movie_name = directory_path.split(os.sep)[-1]


    json_output = call_spider(movie_name)

    if json_output:
        do_chores(json_output, directory_path)
