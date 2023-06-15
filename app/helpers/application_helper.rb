module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'ズボラーメン'

    page_title.empty? ? base_title : page_title + " | " + base_title
  end
  
  def default_meta_tags
    {
      site: 'ズボラーメン',
      title: 'ズボラなあなたへの超簡単カップラーメントッピング共有サービス',
      reverse: true,
      charset: 'utf-8',
      description: 'ズボラな人でも簡単に変化を楽しめるカップラーメンのトッピング共有サービスです。',
      keywords: 'カップラーメン,カップ麺,トッピング,ズボラ,超簡単,アレンジ',
      canonical: request.original_url,
      separator: '|',
      
      og: {
        site_name: 'ズボラーメン',
        title: 'ズボラなあなたへの超簡単カップラーメントッピング共有サービス',
        description: 'ズボラな人でも簡単に変化を楽しめるカップラーメンのトッピング共有サービスです。',
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.jpg'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@9110_yasu',
        image: image_url('ogp.jpg'),
      }
    }
  end
end
