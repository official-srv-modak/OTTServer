from scrapy import Spider
from scrapy.http import Request
import json


def handle_list(List):
    for val in List:
        if val.find("more credit") != -1 or val.find("See full cast & crew") != -1:
            List[List.index(val)] = "etc."
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
        crews = response.xpath("//*[@class='PrincipalCredits__PrincipalCreditsPanelWideScreen-hdn81t-0 iGxbgr']")
        
        url_image = response.xpath("//*[@class='Media__PosterContainer-sc-1x98dcb-1 dGdktI']")
        srv = url_image.xpath(".//*[@class='ipc-lockup-overlay ipc-focusable']/@href").extract_first()
        print("################## "+str(srv))

        if not srv:
            url_image = response.xpath("//*[@class='Media__MediaParentNoVideo-sc-1x98dcb-6 hANGUH']")
            srv = url_image.xpath(".//*[@class='ipc-lockup-overlay ipc-focusable']/@href").extract_first()
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
            "image_src" : response.xpath("//*[@class='poster']/a/img/@src").extract_first(),
            "description" : response.xpath("//*[@class='GenresAndPlot__TextContainerBreakpointXL-cum89p-2 gCtawA']/text()").extract(),
            "rating" : response.xpath("//*[@class='AggregateRatingButton__RatingScore-sc-1ll29m0-1 iTLWoV']/text()").extract_first(),
            "crews" : crew_data}
