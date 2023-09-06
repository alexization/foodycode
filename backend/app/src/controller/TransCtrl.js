const puppeteer = require('puppeteer');
const cheerio = require('cheerio');

class TransCtrl {
  static async TranslateMenu(req, res) {
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
        const keys = ['Kor', 'Rom', 'Eng', 'Jap', 'Chn', 'Gan'];
        var obj = {};
        tdElements.each(function (index, item) {
          const tdText = $(item).text();
          const key = keys[index % 6]; // 순환하면서 키 선택

          obj[key] = tdText;

          // 한 항목이 모두 처리되면 오브젝트를 배열에 추가하고 다시 초기화
          if ((index + 1) % 6 === 0) {
            result.push(obj);
            obj = {}; // 오브젝트 초기화
          }
        });
      });

      await browser.close();
      return result;
    }

    const tran = await crawler();
    console.log(tran);
    return res.send(tran);
  }
}

module.exports = TransCtrl;
