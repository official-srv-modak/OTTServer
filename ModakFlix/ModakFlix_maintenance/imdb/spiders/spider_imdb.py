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
        crews = response.xpath("//*[@class='credit_summary_item']")
        crew_data = {}
        for crew in crews:
            """crew_type_list.append(crew.xpath(".//h4/text()").extract_first())
            crew_list.append(crew.xpath(".//a/text()").extract())"""
            value = crew.xpath(".//a/text()").extract()
            handle_list(value)
            crew_data[crew.xpath(".//h4/text()").extract_first()] = value
            """yield{crew.xpath(".//h4/text()").extract_first() : crew.xpath(".//a/text()").extract()}"""
        """json_data_collector['crew'] = crew_data"""

        yield {"title" : response.xpath("//title/text()").extract_first(),
            "image_src" : response.xpath("//*[@class='poster']/a/img/@src").extract_first(),
            "description" : response.xpath("//*[@class='summary_text']/text()").extract(),
            "rating" : response.xpath("//*[@itemprop='ratingValue']/text()").extract_first(),
            "crews" : crew_data}
