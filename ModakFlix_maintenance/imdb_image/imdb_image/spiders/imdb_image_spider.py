import scrapy


class ImdbImageSpiderSpider(scrapy.Spider):
    name = 'imdb_image_spider'
    allowed_domains = ['https://www.imdb.com/']
    file_handle = open("url.txt", "r")
    temp = file_handle.readline()
    file_handle.close()
    temp += "/mediaindex?ref_=tt_ov_mi_sm"
    tmp = list()
    tmp.append(temp)
    start_urls = tmp

    def parse(self, response):
        
        image_src = response.xpath("//*[@class='MediaViewerImagestyles__PortraitContainer-sc-1qk433p-2 iUyzNI']").extract_first()
        yield {"image_src" : image_src
            }
