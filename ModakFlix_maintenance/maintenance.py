from search_imdb import *
import time, os

def run_maintenance_explicit():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    print(dir_path)
    movies_path = get_movies_path()
    movies_list = os.listdir(movies_path)

    total = len(movies_list)
    count = 1
    for folder in movies_list:
        if not folder.startswith("."):
            perc = (count / total) * 100
            perc = round(perc, 2)
            print("Loading... " + str(perc) + "%")
            print(str(folder))
            analyse_explicit(movies_path + os.sep + folder)
            time.sleep(1)
            count += 1

    print("Maintenance Done 100%")

def run_maintenance():

    movies_path = get_movies_path()
    movies_list = os.listdir(movies_path)

    total = len(movies_list)
    count = 1
    for folder in movies_list:
        if not folder.startswith("."):
            perc = (count / total) * 100
            perc = round(perc, 2)
            print("Loading... "+str(perc)+ "%")
            print(str(folder))
            analyse(movies_path+os.sep+folder)
            #time.sleep(1)
            count += 1

    print("Maintenance Done 100%")

if __name__ == '__main__':
    
    print("Choose your options\n1. For regular maintenance\n2. For explicit full maintenance (will take some time to finish)")
    while True:
        ch = input()
        if ch == "1":
            run_maintenance()
            break
        elif ch == "2":
            run_maintenance_explicit()
            break
        elif ch == "3":
            #name = input("Enter the movie name\n")
            call_spider("3 idiots")
            break
        else:
            print("incorrect option try again")
            break
    os.system("pause")
    #search_directory("/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/SILVER LININGS (2013)")