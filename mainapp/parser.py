import xml.etree.ElementTree as ET


root_node = ET.parse('test_catalog.xml').getroot()

# Парсер для фида
def parser_fid(root_node):
    for tag in root_node.findall('shop/categories/category'):
        value = tag.attrib['id']
        print(f' id Категории: {value}')
        print(f'Название категории: {tag.text}')


# parser_fid(root_node)


# Парсер для offer
def parser_offer(root_node):
    data = []
    for offer in root_node.findall('.//offer'):
        params = []
        for param in offer.findall('param'):
            params.append((param.attrib['name'], param.text))
        data.append(params)
    print(data)
    for tag in root_node.findall('shop/offers/offer'):
        print(f'{tag.text}')


# parser_offer(root_node)







# #myjson ={"address_id":"132", "address":"Decebal", "address2":"Traian", "district":"1", "city_id":456, "postal_code":3443, "phone":446649, "location":"Moldova", "last_update":12.12}
# myjson = open('test_catalog.json')
#
#
# def add(offer_id, name, price):
#     connection = pymysql.connect(host='localhost',user='root', password='', db='base', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
#     try:
#         with connection.cursor() as cursor:
#             sql = "INSERT INTO offer (`offer_id`, `name`, `price`, `price_begin`, `percent`, `category_id`, `vat`," \
#                   " `model`, `vendorcode`, `description`, `barcode`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
#             cursor.execute(sql, (offer_id, name, price, price_begin, percent, category_id, vat, model, vendorcode, description, barcode))
#         connection.commit()
#     finally:
#         connection.close()
#
# #Запускаем функцию
# add(myjson['offer_id'] , myjson['name'] , myjson['price'])
