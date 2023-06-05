module ApplicationHelper
  
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
      icon: [
        { href: image_url('favicon.png') },
        { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
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
        card: 'summary_lerge_image',
        site: '@9110_yasu',
        image: image_url('ogp.jpg'),
      }
    }
  end
end
