#!/usr/bin/env python3
import requests
from lxml import etree

def getLastRelease(url='https://forums.kleientertainment.com/game-updates/dst/'):
    content=etree.HTML(requests.get(url).text)
    updates=content.xpath('//h3[contains(@class,"ipsType_sectionHead")]')
    releases=[ r.xpath('text()')[0].strip() for r in updates if not r.xpath('span[contains(@class,"negative")]')]
    print(max(releases))
    return max(releases)

if __name__=='__main__':
    getLastRelease()