from scrapy import Spider
from scrapy.http import Request
import json


def handle_list(List):
    """for val in List:
        if val.find("All cast & crew") != -1 or val.find("See more cast details at IMDbPro") != -1:
            List.remove("All cast & crew")
            if "etc." not in List:
                List[List.index(val)] = "etc."""
    try:
        List.remove("All cast & crew")
    except ValueError:
        print("Values not in list")
        pass

    try:
        List.remove("See more cast details at IMDbPro")
    except ValueError:
        print("Values not in list")
        pass

    try:
        List.append("etc.")
    except ValueError:
        print("Values not in list")
        pass
    return List

class SpiderImdbSpider(Spider):
    name = 'spider_imdb'
    allowed_domains = ['www.imdb.com']
    file_handle = open("url.txt", "r")
    temp = file_handle.readline()
    file_handle.close()
    tmp = list()
    tmp.append(temp)
    start_urls = tmp

    def parse(self, response):
        """json_data_collector = {}
        json_data_collector['image_src'] = response.xpath("//*[@class='poster']/a/img/@src").extract_first()
        json_data_collector['description'] = response.xpath("//*[@class='summary_text']/text()").extract_first().strip()
        json_data_collector['rating'] = response.xpath("//*[@itemprop='ratingValue']/text()").extract_first()"""
        crews = response.xpath("//*[@class='ipc-metadata-list ipc-metadata-list--dividers-all title-pc-list ipc-metadata-list--baseAlt']")
        
       # url_image = response.xpath("//*[@class='ipc-lockup-overlay ipc-focusable']")
        srv = response.xpath(".//*[@class='ipc-lockup-overlay ipc-focusable']/@href").extract_first()
        print("################## "+str(srv))

        if not srv:
           # url_image = response.xpath("//*[@class='Media__MediaParentNoVideo-sc-1x98dcb-6 hANGUH']")
            srv = response.xpath(".//*[@class='ipc-lockup-overlay ipc-focusable']/@href").extract_first()
            print("################## "+str(srv))
        
        url_image_file = open("url_image.txt", "w+")
        url_image_file.write(str(srv))

        url_image_file.close()

        crew_data = {}
        des = response.xpath("//*[@class='sc-2d37a7c7-0 ftDfUj']/text()").extract()
        certificate = response.xpath("//*[@class='ipc-link ipc-link--baseAlt ipc-link--inherit-color']/text()").extract()
        if len(des) > 0 and len(certificate) > 0:
            des[0] = des[0] + "\n\nRated : "+certificate[6]
        else:
            print("########## ERROR!!!!: des link changed")
        for crew in crews:
            """crew_type_list.append(crew.xpath(".//h4/text()").extract_first())
            crew_list.append(crew.xpath(".//a/text()").extract())"""
            value = crew.xpath(".//a/text()").extract()
            handle_list(value)
            crew_data["Crews of movies : "] = value
            """yield{crew.xpath(".//h4/text()").extract_first() : crew.xpath(".//a/text()").extract()}"""
        """json_data_collector['crew'] = crew_data"""

        yield {"title" : response.xpath("//title/text()").extract_first(),
            #"image_src" : response.xpath("//*[@class='ipc-lockup-overlay ipc-focusable']/a/img/@src").extract_first(),
            "image_src": response.xpath("//*[@class='ipc-lockup-overlay ipc-focusable']/text()").extract_first(),
            "description" : des,
            "rating" : response.xpath("//*[@class='sc-bde20123-1 iZlgcd']/text()").extract_first(),
            "crews" : crew_data}
