from scrapy import Spider
import json


class ImdbImageSpiderSpider(Spider):
    name = 'imdb_image_spider'
    print("##########" + name + "##########")
    allowed_domains = ['https://www.imdb.com/']
    file_handle = open("url_image.txt", "r")
    temp = file_handle.readline()
    file_handle.close()
    if not(temp is None) or temp != "None":
        temp = 'https://www.imdb.com' + temp
        tmp = list()
        tmp.append(temp)
        start_urls = tmp


    def parse(self, response):
        
        image_src = response.xpath("//*[@class='sc-7c0a9e7c-2 hXyMhR']/img/@src").extract_first()
        print("################## "+image_src)
        json_obj_file = open ('output.json', "r")
        data_temp = json_obj_file.readline()
        data = data_temp
        while data_temp:
            data_temp = json_obj_file.readline()
            data += data_temp
        
        data1 = data[1:-1]
        json_obj = json.loads(data1)
        #print(str(json_obj))
        json_obj_file.close()
        if image_src or image_src != "None":
            json_obj["image_src"] = image_src
        else:
            json_obj["image_src"] = ""
        json_obj_file = open ('output.json', "w+")
        json.dump(json_obj, json_obj_file)
        json_obj_file.close()
        print(str(json_obj))
        pass
