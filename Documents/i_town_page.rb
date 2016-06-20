# サイトにアクセスするためのライブラリ
require 'mechanize'

#CSVファイルの読み書き
require 'csv'

def convert_id_to_job(id)
  id_job = {
      '694' => 'day',
      '688' => 'zaitaku',
      '698' => 'homon',
      '691' => 'syogai',
      '761' => 'yobo'
  }
  id_job[id]
end

dir_name = "i_town_page_#{Time.now.strftime('%Y%m%d_%H-%M')}"
Dir::mkdir(dir_name)

list_urls = [
    'http://itp.ne.jp/tokyo/genre_dir/694/?ngr=1&sr=1&num=50',
    'http://itp.ne.jp/tokyo/genre_dir/688/?ngr=1&sr=1&num=50',
    'http://itp.ne.jp/tokyo/genre_dir/698/?ngr=1&sr=1&num=50',
    'http://itp.ne.jp/tokyo/genre_dir/691/?ngr=1&sr=1&num=50',
    'http://itp.ne.jp/tokyo/genre_dir/761/?ngr=1&nad=1&sr=1&num=50',
    'http://itp.ne.jp/saitama/genre_dir/694/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/saitama/genre_dir/688/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/saitama/genre_dir/698/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/saitama/genre_dir/691/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/saitama/genre_dir/761/?ngr=1&nad=1&sr=1&num=50',
    'http://itp.ne.jp/kanagawa/genre_dir/694/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/kanagawa/genre_dir/689/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/kanagawa/genre_dir/698/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/kanagawa/genre_dir/691/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/kanagawa/genre_dir/761/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/chiba/genre_dir/694/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/chiba/genre_dir/689/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/chiba/genre_dir/698/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/chiba/genre_dir/691/?nad=1&ngr=1&sr=1&num=50',
    'http://itp.ne.jp/chiba/genre_dir/761/?nad=1&ngr=1&sr=1&num=50'
]

agent = Mechanize.new

list_urls.each do |list_url|
  file_name_arr = URI.parse(list_url).path.split('/')
  file_name = dir_name + "/#{file_name_arr[1]}_#{convert_id_to_job(file_name_arr[3])}.csv"

  File.open(file_name, 'w:UTF-16LE') do |f|
    f.write "\uFEFF"
    f.write "事業署名\t住所\t電話番号\n"
  end

  count = 0
  loop do
    if count == 0
      url = list_url
    else
      uri = URI.parse(list_url)
      url = 'http://itp.ne.jp/' + uri.path + 'pg/' + count.to_s + '/?' + uri.query
    end

    p url

    page = agent.get(url)

    break if page.search('.bottomNav span').inner_text.split('/')[0] == '0-0件'

    page.search('.normalResultsBox').each do |box|
      contents = []
      contents.push(box.search('h4').inner_text.gsub(/(\r\n|\r|\n)/, '').gsub(/\t/,'').gsub(/\s+/, ''))
      contents.push(box.search('p').inner_text.split(' ').grep(/〒/)[0].split('　')[1])
      contents.push(box.search('b').inner_text.gsub(/(\r\n|\r|\n)/, '').gsub(/\t/,'').gsub(/\s+/, ''))

      open(file_name,'a:UTF-16LE') do |csv|
        csv << contents.join("\t") + "\n"
      end
    end

    count += 1
    sleep(5)
  end

end