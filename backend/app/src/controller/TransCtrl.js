const puppeteer = require('puppeteer');
const cheerio = require('cheerio');

class TransCtrl {
  static async TranslateMenu(req, res) {
    const keyword = '된장';

    async function crawler() {
      const browser = await puppeteer.launch({
        headless: false,
      });

      const page = await browser.newPage();
      await page.goto(
        'https://kto.visitkorea.or.kr/kor/ktom/menupan/menupan/menuName_search.kto',
      );
      await page.type('div.search_bar > form > input#sch_keyword', keyword);
      await page.click('div.search_bar > form > button');

      // Wait for the search results to load
      await page.waitForSelector('div.table_list > table > tbody > tr');

      const content = await page.content();
      const $ = cheerio.load(content);
      const result = [];

      $('div.table_list > table > tbody > tr').each(function (idx, element) {
        const $data = cheerio.load(element);
        const tdElements = $data('td'); // Select all td elements in the current row

        // Loop through and print the text content of each td element
        tdElements.each(function (index, item) {
          const tdText = $(item).text();
          result.push(`TD ${index}: ${tdText}`);
        });
      });

      await browser.close();
    }

    crawler();
    return res.send(result);
  }
}

module.exports = TransCtrl;
