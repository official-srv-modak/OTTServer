from scrapy import Spider
from scrapy.http import Request
import json


def handle_list(List):
    """for val in List:
        if val.find("All cast & crew") != -1 or val.find("See more cast details at IMDbPro") != -1:
            List.remove("All cast & crew")
            if "etc." not in List:
                List[List.index(val)] = "etc."""
    List.remove("All cast & crew")
    List.remove("See more cast details at IMDbPro")
    List.append("etc.")
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
        crews = response.xpath("//*[@class='ipc-metadata-list ipc-metadata-list--dividers-all sc-11eed019-10 fcovio ipc-metadata-list--base']")
        
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
            "description" : response.xpath("//*[@class='sc-14389611-1 hGKuud']/text()").extract(),
            "rating" : response.xpath("//*[@class='sc-7ab21ed2-1 jGRxWM']/text()").extract_first(),
            "crews" : crew_data}
